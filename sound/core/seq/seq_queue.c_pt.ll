; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_queue.c_pt.bc'
source_filename = "../sound/core/seq/seq_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_queue = type { i32, [64 x i8], ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, %struct.spinlock, %struct.spinlock, [6 x i32], i32, %struct.mutex, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_timer = type { i8, i32, i32, %struct.snd_seq_real_time, %struct.snd_seq_timer_tick, i32, i32, %struct.snd_timer_id, ptr, i32, i32, i32, i32, %struct.timespec64, %struct.spinlock }
%struct.snd_seq_timer_tick = type { i32, i32, i32 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_seq_queue_tempo = type { i32, i32, i32, i32, i32, [24 x i8] }
%struct.snd_seq_remove_events = type { i32, %union.snd_seq_timestamp, i8, %struct.snd_seq_addr, i8, i32, i8, [10 x i32] }

@num_queues = internal global { i32, [28 x i8] } zeroinitializer, align 32
@queue_list = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@queue_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/seq/seq_queue.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"queue %d: [%s]\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"owned by client    : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lock status        : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Locked\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Free\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"queued time events : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"queued tick events : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timer state        : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Running\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timer PPQ          : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"current tempo      : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"current BPM        : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"current time       : %d.%09d s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"current tick       : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@queue_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&q->owner_lock\00", [17 x i8] zeroinitializer }, align 32
@queue_new.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&q->check_lock\00", [17 x i8] zeroinitializer }, align 32
@queue_new.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&q->timer_mutex\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"queue_list_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 8, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 38]
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"num_queues\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 40, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 37, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"queue_list_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 305, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 758, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 759, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 760, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 761, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 762, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 763, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 764, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 765, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 766, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 767, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 768, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 769, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 104, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 105, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 106, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [30 x i8] c"../sound/core/seq/seq_queue.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 38, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @num_queues, ptr @queue_list, ptr @queue_list_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @queue_new.__key, ptr @.str.17, ptr @queue_new.__key.18, ptr @.str.19, ptr @queue_new.__key.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_new.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_new.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_seq_queue_get_cur_queues() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_queues, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_queues_delete() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %timer_mutex.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex.i, i32 noundef 0) #8
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer.i, align 4
  %call.i = tail call i32 @snd_seq_timer_stop(ptr noundef %3) #8
  %call1.i = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %1) #8
  tail call void @mutex_unlock(ptr noundef %timer_mutex.i) #8
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 17
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock.i, ptr noundef nonnull @.str, i32 noundef 137) #8
  %tickq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 2
  tail call void @snd_seq_prioq_delete(ptr noundef %tickq.i) #8
  %timeq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 3
  tail call void @snd_seq_prioq_delete(ptr noundef %timeq.i) #8
  tail call void @snd_seq_timer_delete(ptr noundef %timer.i) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_queue_alloc(i32 noundef %client, i32 noundef %locked, i32 noundef %info_flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 308) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %owner_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @queue_new.__key, i16 noundef signext 3) #8
  %check_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %check_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @queue_new.__key.18, i16 noundef signext 3) #8
  %timer_mutex.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %timer_mutex.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @queue_new.__key.20) #8
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %use_lock.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %use_lock.i, align 8
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %call7.i.i.i, align 8
  %call9.i = tail call ptr @snd_seq_prioq_new() #8
  %tickq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %tickq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i, ptr %tickq.i, align 4
  %call10.i = tail call ptr @snd_seq_prioq_new() #8
  %timeq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %timeq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10.i, ptr %timeq.i, align 8
  %call11.i = tail call ptr @snd_seq_timer_new() #8
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %timer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11.i, ptr %timer.i, align 4
  %6 = ptrtoint ptr %tickq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tickq.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %do.body.i.if.then18.i_crit_edge, label %lor.lhs.false.i

do.body.i.if.then18.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %8 = ptrtoint ptr %timeq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timeq.i, align 8
  %cmp14.i = icmp eq ptr %9, null
  %cmp17.i = icmp eq ptr %call11.i, null
  %or.cond.i = select i1 %cmp14.i, i1 true, i1 %cmp17.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %if.end

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %do.body.i.if.then18.i_crit_edge
  tail call void @snd_seq_prioq_delete(ptr noundef %tickq.i) #8
  tail call void @snd_seq_prioq_delete(ptr noundef %timeq.i) #8
  tail call void @snd_seq_timer_delete(ptr noundef %timer.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %owner23.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %owner23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %client, ptr %owner23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked)
  %tobool24.i = icmp ne i32 %locked, 0
  %locked25.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool24.i to i8
  %11 = ptrtoint ptr %locked25.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %locked25.i, align 4
  %klocked.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %klocked.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %klocked.i, align 1
  %info_flags2 = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %info_flags2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %info_flags, ptr %info_flags2, align 4
  %clients_bitmap3.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %client, ptr noundef %clients_bitmap3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end10.sink.split.i, label %if.end.if.end10.i_crit_edge

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.sink.split.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clients.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %clients.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clients.i, align 8
  %dec.i = add i32 %15, 1
  store i32 %dec.i, ptr %clients.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.end.if.end10.i_crit_edge
  %clients11.i = getelementptr inbounds %struct.snd_seq_queue, ptr %call7.i.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %clients11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clients11.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end10.i.if.end17.i_crit_edge [
    i32 0, label %if.else19.i
    i32 1, label %if.then16.i
  ]

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timer.i, align 4
  tail call void @snd_seq_timer_defaults(ptr noundef %20) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end10.i.if.end17.i_crit_edge
  %call18.i = tail call i32 @snd_seq_timer_open(ptr noundef nonnull %call7.i.i.i) #8
  br label %queue_use.exit

if.else19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %call7.i.i.i) #8
  br label %queue_use.exit

queue_use.exit:                                   ; preds = %if.else19.i, %if.end17.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %queue_use.exit
  %i.018.i = phi i32 [ 0, %queue_use.exit ], [ %inc8.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.018.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i20 = icmp eq ptr %23, null
  br i1 %tobool.not.i20, label %queue_list_add.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 32
  br i1 %exitcond.not.i, label %queue_list_add.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

queue_list_add.exit.thread:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex.i, i32 noundef 0) #8
  %25 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timer.i, align 4
  %call.i24 = tail call i32 @snd_seq_timer_stop(ptr noundef %26) #8
  %call1.i = tail call i32 @snd_seq_timer_close(ptr noundef %call7.i.i.i) #8
  tail call void @mutex_unlock(ptr noundef %timer_mutex.i) #8
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock.i, ptr noundef nonnull @.str, i32 noundef 137) #8
  tail call void @snd_seq_prioq_delete(ptr noundef %tickq.i) #8
  tail call void @snd_seq_prioq_delete(ptr noundef %timeq.i) #8
  tail call void @snd_seq_timer_delete(ptr noundef %timer.i) #8
  tail call void @kfree(ptr noundef %call7.i.i.i) #8
  br label %cleanup

queue_list_add.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.018.i, ptr %call7.i.i.i, align 8
  %29 = load i32, ptr @num_queues, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr @num_queues, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %queue_list_add.exit, %queue_list_add.exit.thread, %if.then18.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %queue_list_add.exit.thread ], [ %call7.i.i.i, %queue_list_add.exit ], [ inttoptr (i32 -12 to ptr), %if.then18.i ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_delete(i32 noundef %client, i32 noundef %queueid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.queue_list_remove.exit.thread_crit_edge, label %if.then.i

if.end.queue_list_remove.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_list_remove.exit.thread

if.then.i:                                        ; preds = %if.end
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %owner_lock.i) #8
  %owner.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %client)
  %cmp5.i = icmp eq i32 %4, %client
  br i1 %cmp5.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %owner_lock.i) #8
  br label %queue_list_remove.exit.thread

queue_list_remove.exit.thread:                    ; preds = %if.end.i, %if.end.queue_list_remove.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %klocked.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %klocked.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %owner_lock.i) #8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  %7 = load i32, ptr @num_queues, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr @num_queues, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  %timer_mutex.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex.i, i32 noundef 0) #8
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer.i, align 4
  %call.i = tail call i32 @snd_seq_timer_stop(ptr noundef %9) #8
  %call1.i = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %2) #8
  tail call void @mutex_unlock(ptr noundef %timer_mutex.i) #8
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock.i, ptr noundef nonnull @.str, i32 noundef 137) #8
  %tickq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 2
  tail call void @snd_seq_prioq_delete(ptr noundef %tickq.i) #8
  %timeq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 3
  tail call void @snd_seq_prioq_delete(ptr noundef %timeq.i) #8
  tail call void @snd_seq_timer_delete(ptr noundef %timer.i) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %queue_list_remove.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %queue_list_remove.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @queueptr(i32 noundef %queueid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body2.if.end8_crit_edge, label %if.then7

do.body2.if.end8_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !55
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body2.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_queue_find_name(ptr nocapture noundef readonly %name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body2.i

do.body2.i:                                       ; preds = %for.inc.do.body2.i_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body2.i_crit_edge ]
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.016
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %queueptr.exit.thread14, label %if.then

queueptr.exit.thread14:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %for.inc

if.then:                                          ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %name1 = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @strncmp(ptr noundef %name1, ptr noundef %name, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %for.inc

for.inc:                                          ; preds = %if.end, %queueptr.exit.thread14
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body2.i_crit_edge

for.inc.do.body2.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_check_queue(ptr noundef %q, i32 noundef %atomic, i32 noundef %hop) local_unnamed_addr #1 align 64 {
entry:
  %cur_tick = alloca i32, align 4
  %cur_time = alloca %struct.snd_seq_real_time, align 8
  %tmp21 = alloca %struct.snd_seq_real_time, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_tick) #8
  %0 = ptrtoint ptr %cur_tick to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_tick, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_time) #8
  %1 = ptrtoint ptr %cur_time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cur_time, align 8, !annotation !57
  %2 = getelementptr inbounds %struct.snd_seq_real_time, ptr %cur_time, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !57
  %cmp = icmp eq ptr %q, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %check_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %check_lock) #8
  %check_blocked = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 9
  %4 = ptrtoint ptr %check_blocked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %check_blocked, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %check_again = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 8
  %6 = ptrtoint ptr %check_again to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %check_again, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %check_lock, i32 noundef %call3) #8
  br label %cleanup

if.end8:                                          ; preds = %do.body1
  %7 = ptrtoint ptr %check_blocked to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %check_blocked, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %check_lock, i32 noundef %call3) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 4
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 2
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 3
  %check_again49 = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 8
  br label %__again

__again:                                          ; preds = %if.then55, %if.end8
  %processed.0 = phi i32 [ 0, %if.end8 ], [ %processed.3, %if.then55 ]
  %8 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer, align 4
  %call11 = call i32 @snd_seq_timer_get_cur_tick(ptr noundef %9) #8
  %10 = ptrtoint ptr %cur_tick to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %cur_tick, align 4
  %11 = call i32 @llvm.smax.i32(i32 %processed.0, i32 999)
  %smax = add nuw nsw i32 %11, 1
  br label %for.cond

for.cond:                                         ; preds = %if.end15.for.cond_crit_edge, %__again
  %processed.1 = phi i32 [ %processed.0, %__again ], [ %inc, %if.end15.for.cond_crit_edge ]
  %12 = ptrtoint ptr %tickq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tickq, align 4
  %call12 = call ptr @snd_seq_prioq_cell_out(ptr noundef %13, ptr noundef nonnull %cur_tick) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.end, label %if.end15

if.end15:                                         ; preds = %for.cond
  %call16 = call i32 @snd_seq_dispatch_event(ptr noundef nonnull %call12, i32 noundef %atomic, i32 noundef %hop) #8
  %inc = add i32 %processed.1, 1
  %cmp17 = icmp sgt i32 %inc, 999
  br i1 %cmp17, label %if.end15.do.body36_crit_edge, label %if.end15.for.cond_crit_edge

if.end15.for.cond_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end15.do.body36_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp21) #8
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  call void @snd_seq_timer_get_cur_time(ptr nonnull sret(%struct.snd_seq_real_time) align 4 %tmp21, ptr noundef %15, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %tmp21 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tmp21, align 8
  %18 = ptrtoint ptr %cur_time to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cur_time, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp21) #8
  %19 = call i32 @llvm.smax.i32(i32 %processed.1, i32 999)
  %smax95 = add nuw nsw i32 %19, 1
  br label %for.cond23

for.cond23:                                       ; preds = %if.end27.for.cond23_crit_edge, %for.end
  %processed.2 = phi i32 [ %processed.1, %for.end ], [ %inc29, %if.end27.for.cond23_crit_edge ]
  %20 = ptrtoint ptr %timeq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %timeq, align 4
  %call24 = call ptr @snd_seq_prioq_cell_out(ptr noundef %21, ptr noundef nonnull %cur_time) #8
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.cond23.do.body36_crit_edge, label %if.end27

for.cond23.do.body36_crit_edge:                   ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.end27:                                         ; preds = %for.cond23
  %call28 = call i32 @snd_seq_dispatch_event(ptr noundef nonnull %call24, i32 noundef %atomic, i32 noundef %hop) #8
  %inc29 = add i32 %processed.2, 1
  %exitcond = icmp eq i32 %processed.2, %19
  br i1 %exitcond, label %if.end27.do.body36_crit_edge, label %if.end27.for.cond23_crit_edge

if.end27.for.cond23_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23

if.end27.do.body36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body36:                                        ; preds = %if.end27.do.body36_crit_edge, %for.cond23.do.body36_crit_edge, %if.end15.do.body36_crit_edge
  %processed.3 = phi i32 [ %processed.2, %for.cond23.do.body36_crit_edge ], [ %smax95, %if.end27.do.body36_crit_edge ], [ %smax, %if.end15.do.body36_crit_edge ]
  %call44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %check_lock) #8
  %22 = ptrtoint ptr %check_again49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %check_again49, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool50.not = icmp eq i8 %23, 0
  br i1 %tobool50.not, label %do.body36.if.end58_crit_edge, label %if.then51

do.body36.if.end58_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then51:                                        ; preds = %do.body36
  %24 = ptrtoint ptr %check_again49 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %check_again49, align 2
  %cmp53 = icmp slt i32 %processed.3, 1000
  br i1 %cmp53, label %if.then55, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %check_lock, i32 noundef %call44) #8
  br label %__again

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %do.body36.if.end58_crit_edge
  %25 = ptrtoint ptr %check_blocked to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %check_blocked, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %check_lock, i32 noundef %call44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_time) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_tick) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_get_cur_tick(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_prioq_cell_out(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_dispatch_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_timer_get_cur_time(ptr sret(%struct.snd_seq_real_time) align 4, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_enqueue_event(ptr noundef %cell, i32 noundef %atomic, i32 noundef %hop) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cell, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %queue = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %2 = icmp ugt i8 %1, 31
  br i1 %2, label %if.end23.cleanup_crit_edge, label %do.body2.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %if.end23
  %conv = zext i8 %1 to i32
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %queueptr.exit.thread96, label %if.end26

queueptr.exit.thread96:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end26:                                         ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29.not = icmp eq i8 %8, 0
  br i1 %cmp29.not, label %if.end26.if.end50_crit_edge, label %if.then31

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then31:                                        ; preds = %if.end26
  %9 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %trunc86.not = icmp eq i8 %9, 0
  br i1 %trunc86.not, label %sw.bb, label %sw.bb37

sw.bb:                                            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tick, align 4
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4
  %14 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %time, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then31
  %time39 = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4
  %timer40 = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %16 = ptrtoint ptr %timer40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timer40, align 4
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cur_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_time, align 4
  %20 = ptrtoint ptr %time39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time39, align 4
  %add.i = add i32 %21, %19
  store i32 %add.i, ptr %time39, align 4
  %tv_nsec.i = getelementptr inbounds %struct.snd_seq_timer, ptr %17, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec.i, align 4
  %tv_nsec2.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec2.i, align 4
  %add3.i = add i32 %25, %23
  store i32 %add3.i, ptr %tv_nsec2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add3.i)
  %cmp5.i.i = icmp ugt i32 %add3.i, 999999999
  br i1 %cmp5.i.i, label %while.body.lr.ph.i.i, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.body.lr.ph.i.i:                             ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  %26 = add i32 %add3.i, -1000000000
  %27 = udiv i32 %26, 1000000000
  %.neg.i.i = mul i32 %27, -1000000000
  %28 = add i32 %.neg.i.i, %26
  %29 = add i32 %add.i, 1
  %30 = add i32 %29, %27
  %31 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %tv_nsec2.i, align 4
  %32 = ptrtoint ptr %time39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %time39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.lr.ph.i.i, %sw.bb37.sw.epilog_crit_edge, %sw.bb
  %33 = and i8 %7, -3
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %flags, align 1
  br label %if.end50

if.end50:                                         ; preds = %sw.epilog, %if.end26.if.end50_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %trunc.not = icmp eq i8 %37, 0
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 3
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 2
  %timeq.sink = select i1 %trunc.not, ptr %tickq, ptr %timeq
  %38 = ptrtoint ptr %timeq.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %timeq.sink, align 4
  %call58 = tail call i32 @snd_seq_prioq_cell_in(ptr noundef %39, ptr noundef nonnull %cell) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp60 = icmp slt i32 %call58, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_seq_check_queue(ptr noundef nonnull %4, i32 noundef %atomic, i32 noundef %hop)
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then62, %queueptr.exit.thread96, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call58, %if.then62 ], [ 0, %if.end63 ], [ -22, %queueptr.exit.thread96 ], [ -22, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_prioq_cell_in(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_check_access(i32 noundef %queueid, i32 noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread17, label %do.body1

queueptr.exit.thread17:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

do.body1:                                         ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock) #8
  %owner.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %client)
  %cmp.i = icmp eq i32 %5, %client
  br i1 %cmp.i, label %do.body1.check_access.exit_crit_edge, label %lor.rhs.i

do.body1.check_access.exit_crit_edge:             ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_access.exit

lor.rhs.i:                                        ; preds = %do.body1
  %locked.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %locked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %locked.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i14 = icmp eq i8 %7, 0
  br i1 %tobool.not.i14, label %land.rhs.i, label %lor.rhs.i.check_access.exit_crit_edge

lor.rhs.i.check_access.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_access.exit

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %klocked.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %klocked.i, align 1, !range !58
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  br label %check_access.exit

check_access.exit:                                ; preds = %land.rhs.i, %lor.rhs.i.check_access.exit_crit_edge, %do.body1.check_access.exit_crit_edge
  %12 = phi i32 [ 1, %do.body1.check_access.exit_crit_edge ], [ 0, %lor.rhs.i.check_access.exit_crit_edge ], [ %11, %land.rhs.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock, i32 noundef %call3) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %check_access.exit, %queueptr.exit.thread17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %check_access.exit ], [ 0, %queueptr.exit.thread17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_set_owner(i32 noundef %queueid, i32 noundef %client, i32 noundef %locked) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread32, label %if.end

queueptr.exit.thread32:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %owner.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %owner.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %client)
  %cmp.i.i = icmp eq i32 %5, %client
  br i1 %cmp.i.i, label %queue_access_lock.exit.thread35, label %lor.rhs.i.i

queue_access_lock.exit.thread35:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i36 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  br label %do.body4

lor.rhs.i.i:                                      ; preds = %if.end
  %locked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %locked.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %check_access.exit.i, label %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge

lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

check_access.exit.i:                              ; preds = %lor.rhs.i.i
  %klocked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %klocked.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %klocked.i.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %tobool.not.i26 = icmp eq i8 %9, 1
  br i1 %tobool.not.i26, label %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, label %check_access.exit.i.do.body4_crit_edge

check_access.exit.i.do.body4_crit_edge:           ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

check_access.exit.i.queue_access_lock.exit.thread_crit_edge: ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

queue_access_lock.exit.thread:                    ; preds = %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

do.body4:                                         ; preds = %check_access.exit.i.do.body4_crit_edge, %queue_access_lock.exit.thread35
  %klocked.i.i.sink = phi ptr [ %klocked.i36, %queue_access_lock.exit.thread35 ], [ %klocked.i.i, %check_access.exit.i.do.body4_crit_edge ]
  %11 = ptrtoint ptr %klocked.i.i.sink to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %klocked.i.i.sink, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked)
  %tobool10 = icmp ne i32 %locked, 0
  %locked12 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 6
  %frombool = zext i1 %tobool10 to i8
  %12 = ptrtoint ptr %locked12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %locked12, align 4
  %13 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %client, ptr %owner.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call7) #8
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %klocked.i29 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %14 = ptrtoint ptr %klocked.i29 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %klocked.i29, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i28) #8
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %queue_access_lock.exit.thread, %queueptr.exit.thread32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ -1, %queue_access_lock.exit.thread ], [ -22, %queueptr.exit.thread32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_timer_open(i32 noundef %queueid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread16, label %if.end

queueptr.exit.thread16:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer, align 4
  %call1 = tail call i32 @snd_seq_timer_open(ptr noundef nonnull %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_seq_timer_defaults(ptr noundef %5) #8
  %call4 = tail call i32 @snd_seq_timer_open(ptr noundef nonnull %2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %result.0 = phi i32 [ %call4, %if.then3 ], [ %call1, %if.end.if.end5_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %queueptr.exit.thread16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end5 ], [ -22, %queueptr.exit.thread16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_timer_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_timer_close(i32 noundef %queueid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread7, label %if.end

queueptr.exit.thread7:                            ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %call1 = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %2) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end, %queueptr.exit.thread7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %queueptr.exit.thread7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_timer_set_tempo(i32 noundef %queueid, i32 noundef %client, ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread32, label %if.end

queueptr.exit.thread32:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %owner.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %owner.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %client)
  %cmp.i.i = icmp eq i32 %5, %client
  br i1 %cmp.i.i, label %queue_access_lock.exit.thread35, label %lor.rhs.i.i

queue_access_lock.exit.thread35:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i36 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  br label %if.end3

lor.rhs.i.i:                                      ; preds = %if.end
  %locked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %locked.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %check_access.exit.i, label %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge

lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

check_access.exit.i:                              ; preds = %lor.rhs.i.i
  %klocked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %klocked.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %klocked.i.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %tobool.not.i26 = icmp eq i8 %9, 1
  br i1 %tobool.not.i26, label %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, label %check_access.exit.i.if.end3_crit_edge

check_access.exit.i.if.end3_crit_edge:            ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

check_access.exit.i.queue_access_lock.exit.thread_crit_edge: ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

queue_access_lock.exit.thread:                    ; preds = %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

if.end3:                                          ; preds = %check_access.exit.i.if.end3_crit_edge, %queue_access_lock.exit.thread35
  %klocked.i.i.sink = phi ptr [ %klocked.i36, %queue_access_lock.exit.thread35 ], [ %klocked.i.i, %check_access.exit.i.if.end3_crit_edge ]
  %11 = ptrtoint ptr %klocked.i.i.sink to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %klocked.i.i.sink, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 4
  %tempo = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %tempo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tempo, align 4
  %ppq = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %ppq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ppq, align 4
  %call4 = tail call i32 @snd_seq_timer_set_tempo_ppq(ptr noundef %13, i32 noundef %15, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end3
  %skew_base = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %skew_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %skew_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.not = icmp eq i32 %19, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %timer, align 4
  %skew_value = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %skew_value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skew_value, align 4
  %call10 = tail call i32 @snd_seq_timer_set_skew(ptr noundef %21, i32 noundef %23, i32 noundef %19) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %result.0 = phi i32 [ %call10, %if.then7 ], [ %call4, %land.lhs.true.if.end11_crit_edge ], [ %call4, %if.end3.if.end11_crit_edge ]
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %klocked.i29 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %24 = ptrtoint ptr %klocked.i29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %klocked.i29, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i28) #8
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %queue_access_lock.exit.thread, %queueptr.exit.thread32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end11 ], [ -1, %queue_access_lock.exit.thread ], [ -22, %queueptr.exit.thread32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_set_tempo_ppq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_set_skew(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_use(i32 noundef %queueid, i32 noundef %client, i32 noundef %use) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread9, label %if.end

queueptr.exit.thread9:                            ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use)
  %tobool.not.i6 = icmp eq i32 %use, 0
  %clients_bitmap3.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 14
  br i1 %tobool.not.i6, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %client, ptr noundef %clients_bitmap3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end10.sink.split.i_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef %client, ptr noundef %clients_bitmap3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end10.i_crit_edge, label %if.else.i.if.end10.sink.split.i_crit_edge

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split.i

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.then.i.if.end10.sink.split.i_crit_edge
  %.sink32.i = phi i32 [ 1, %if.then.i.if.end10.sink.split.i_crit_edge ], [ -1, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %clients.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 15
  %4 = ptrtoint ptr %clients.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clients.i, align 4
  %dec.i = add i32 %5, %.sink32.i
  store i32 %dec.i, ptr %clients.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.else.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge
  %clients11.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 15
  %6 = ptrtoint ptr %clients11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clients11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not.i = icmp eq i32 %7, 0
  br i1 %tobool12.not.i, label %if.else19.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  %tobool.not.not.i = xor i1 %tobool.not.i6, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %if.then13.i.if.end17.i_crit_edge

if.then13.i.if.end17.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer.i, align 4
  tail call void @snd_seq_timer_defaults(ptr noundef %9) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.then13.i.if.end17.i_crit_edge
  %call18.i = tail call i32 @snd_seq_timer_open(ptr noundef nonnull %2) #8
  br label %queue_use.exit

if.else19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %2) #8
  br label %queue_use.exit

queue_use.exit:                                   ; preds = %if.else19.i, %if.end17.i
  tail call void @mutex_unlock(ptr noundef %timer_mutex) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %queue_use.exit, %queueptr.exit.thread9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %queue_use.exit ], [ -22, %queueptr.exit.thread9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_queue_is_used(i32 noundef %queueid, i32 noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %queueid)
  %0 = icmp ugt i32 %queueid, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %do.body2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %entry
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i5 = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %queueid
  %1 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i5, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread8, label %if.end

queueptr.exit.thread8:                            ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 14
  %div3.i = lshr i32 %client, 5
  %arrayidx.i = getelementptr i32, ptr %clients_bitmap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %client, 31
  %6 = lshr i32 %5, %and.i
  %7 = and i32 %6, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end, %queueptr.exit.thread8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ -22, %queueptr.exit.thread8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_queue_client_leave(i32 noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond1.preheader:                              ; preds = %for.inc
  %div3.i = lshr i32 %client, 5
  %and.i = and i32 %client, 31
  %0 = shl nuw i32 1, %and.i
  br label %do.body2.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i32 = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.045
  %1 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i32, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.queue_list_remove.exit.thread_crit_edge, label %if.then.i

for.body.queue_list_remove.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_list_remove.exit.thread

if.then.i:                                        ; preds = %for.body
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %owner_lock.i) #8
  %owner.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %client)
  %cmp5.i = icmp eq i32 %4, %client
  br i1 %cmp5.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %owner_lock.i) #8
  br label %queue_list_remove.exit.thread

queue_list_remove.exit.thread:                    ; preds = %if.end.i, %for.body.queue_list_remove.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  br label %for.inc

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %klocked.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %klocked.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %owner_lock.i) #8
  %6 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i32, align 4
  %7 = load i32, ptr @num_queues, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr @num_queues, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call2.i) #8
  %timer_mutex.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex.i, i32 noundef 0) #8
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer.i, align 4
  %call.i = tail call i32 @snd_seq_timer_stop(ptr noundef %9) #8
  %call1.i = tail call i32 @snd_seq_timer_close(ptr noundef nonnull %2) #8
  tail call void @mutex_unlock(ptr noundef %timer_mutex.i) #8
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock.i, ptr noundef nonnull @.str, i32 noundef 137) #8
  %tickq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 2
  tail call void @snd_seq_prioq_delete(ptr noundef %tickq.i) #8
  %timeq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 3
  tail call void @snd_seq_prioq_delete(ptr noundef %timeq.i) #8
  tail call void @snd_seq_timer_delete(ptr noundef %timer.i) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %queue_list_remove.exit.thread
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body2.i:                                       ; preds = %for.inc13.do.body2.i_crit_edge, %for.cond1.preheader
  %i.146 = phi i32 [ 0, %for.cond1.preheader ], [ %inc14, %for.inc13.do.body2.i_crit_edge ]
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i33 = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.146
  %10 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i33, align 4
  %tobool.not.i34 = icmp eq ptr %11, null
  br i1 %tobool.not.i34, label %queueptr.exit.thread43, label %if.end7

queueptr.exit.thread43:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %for.inc13

if.end7:                                          ; preds = %do.body2.i
  %use_lock.i35 = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i35, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i35, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i35, ptr %use_lock.i35, i32 1, ptr elementtype(i32) %use_lock.i35) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 14
  %arrayidx.i = getelementptr i32, ptr %clients_bitmap, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %15 = and i32 %14, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %tickq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tickq, align 4
  tail call void @snd_seq_prioq_leave(ptr noundef %17, i32 noundef %client, i32 noundef 0) #8
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %timeq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timeq, align 4
  tail call void @snd_seq_prioq_leave(ptr noundef %19, i32 noundef %client, i32 noundef 0) #8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  %call11 = tail call i32 @snd_seq_queue_use(i32 noundef %21, i32 noundef %client, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i35, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i35, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i35, ptr %use_lock.i35, i32 1, ptr elementtype(i32) %use_lock.i35) #8, !srcloc !56
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12, %queueptr.exit.thread43
  %inc14 = add nuw nsw i32 %i.146, 1
  %exitcond47.not = icmp eq i32 %inc14, 32
  br i1 %exitcond47.not, label %for.end15, label %for.inc13.do.body2.i_crit_edge

for.inc13.do.body2.i_crit_edge:                   ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

for.end15:                                        ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_prioq_leave(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_queue_client_leave_cells(i32 noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body2.i

do.body2.i:                                       ; preds = %for.inc.do.body2.i_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body2.i_crit_edge ]
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.011
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %queueptr.exit.thread9, label %if.end

queueptr.exit.thread9:                            ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %for.inc

if.end:                                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tickq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tickq, align 4
  tail call void @snd_seq_prioq_leave(ptr noundef %4, i32 noundef %client, i32 noundef 0) #8
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %timeq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timeq, align 4
  tail call void @snd_seq_prioq_leave(ptr noundef %6, i32 noundef %client, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %for.inc

for.inc:                                          ; preds = %if.end, %queueptr.exit.thread9
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body2.i_crit_edge

for.inc.do.body2.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_queue_remove_cells(i32 noundef %client, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %client, 5
  %and.i = and i32 %client, 31
  %0 = shl nuw i32 1, %and.i
  %queue4 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 2
  br label %do.body2.i

do.body2.i:                                       ; preds = %for.inc.do.body2.i_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body2.i_crit_edge ]
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i21 = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.028
  %1 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i21, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %queueptr.exit.thread26, label %if.end

queueptr.exit.thread26:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %for.inc

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 14
  %arrayidx.i = getelementptr i32, ptr %clients_bitmap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.then7_crit_edge, label %lor.lhs.false

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %11 = ptrtoint ptr %queue4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %queue4, align 4
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp5 = icmp eq i32 %10, %conv
  br i1 %cmp5, label %lor.lhs.false.if.then7_crit_edge, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %tickq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tickq, align 4
  tail call void @snd_seq_prioq_remove_events(ptr noundef %14, i32 noundef %client, ptr noundef %info) #8
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %timeq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timeq, align 4
  tail call void @snd_seq_prioq_remove_events(ptr noundef %16, i32 noundef %client, ptr noundef %info) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %queueptr.exit.thread26
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body2.i_crit_edge

for.inc.do.body2.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_prioq_remove_events(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_control_queue(ptr noundef readonly %ev, i32 noundef %atomic, i32 noundef %hop) local_unnamed_addr #1 align 64 {
entry:
  %sev.i113.i = alloca %struct.snd_seq_event, align 4
  %sev.i108.i = alloca %struct.snd_seq_event, align 4
  %sev.i103.i = alloca %struct.snd_seq_event, align 4
  %sev.i98.i = alloca %struct.snd_seq_event, align 4
  %sev.i93.i = alloca %struct.snd_seq_event, align 4
  %sev.i88.i = alloca %struct.snd_seq_event, align 4
  %sev.i.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ev, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %2 = icmp ugt i8 %1, 31
  br i1 %2, label %if.end23.cleanup_crit_edge, label %do.body2.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %if.end23
  %conv = zext i8 %1 to i32
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %queueptr.exit.thread52, label %if.end26

queueptr.exit.thread52:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %cleanup

if.end26:                                         ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %source, align 4
  %conv27 = zext i8 %7 to i32
  %owner_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %owner.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %owner.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv27)
  %cmp.i.i = icmp eq i32 %9, %conv27
  br i1 %cmp.i.i, label %queue_access_lock.exit.thread55, label %lor.rhs.i.i

queue_access_lock.exit.thread55:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %klocked.i56 = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 7
  br label %if.end31

lor.rhs.i.i:                                      ; preds = %if.end26
  %locked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 6
  %10 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %locked.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %check_access.exit.i, label %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge

lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

check_access.exit.i:                              ; preds = %lor.rhs.i.i
  %klocked.i.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 7
  %12 = ptrtoint ptr %klocked.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %klocked.i.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %tobool.not.i43 = icmp eq i8 %13, 1
  br i1 %tobool.not.i43, label %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, label %check_access.exit.i.if.end31_crit_edge

check_access.exit.i.if.end31_crit_edge:           ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

check_access.exit.i.queue_access_lock.exit.thread_crit_edge: ; preds = %check_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_access_lock.exit.thread

queue_access_lock.exit.thread:                    ; preds = %check_access.exit.i.queue_access_lock.exit.thread_crit_edge, %lor.rhs.i.i.queue_access_lock.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

if.end31:                                         ; preds = %check_access.exit.i.if.end31_crit_edge, %queue_access_lock.exit.thread55
  %klocked.i.i.sink = phi ptr [ %klocked.i56, %queue_access_lock.exit.thread55 ], [ %klocked.i.i, %check_access.exit.i.if.end31_crit_edge ]
  %15 = ptrtoint ptr %klocked.i.i.sink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %klocked.i.i.sink, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i) #8
  %16 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ev, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %17, label %if.end31.snd_seq_queue_process_event.exit_crit_edge [
    i8 30, label %sw.bb.i
    i8 31, label %sw.bb5.i
    i8 32, label %sw.bb11.i
    i8 35, label %sw.bb14.i
    i8 33, label %sw.bb17.i
    i8 34, label %sw.bb25.i
    i8 38, label %sw.bb34.i
  ]

if.end31.snd_seq_queue_process_event.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

sw.bb.i:                                          ; preds = %if.end31
  %tickq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %tickq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tickq.i, align 4
  %21 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %source, align 4
  %conv1.i = zext i8 %22 to i32
  tail call void @snd_seq_prioq_leave(ptr noundef %20, i32 noundef %conv1.i, i32 noundef 1) #8
  %timeq.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 3
  %23 = ptrtoint ptr %timeq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timeq.i, align 4
  %25 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %source, align 4
  %conv4.i = zext i8 %26 to i32
  tail call void @snd_seq_prioq_leave(ptr noundef %24, i32 noundef %conv4.i, i32 noundef 1) #8
  %timer.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %27 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timer.i, align 4
  %call.i = tail call i32 @snd_seq_timer_start(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i44 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i44, label %if.then.i46, label %sw.bb.i.snd_seq_queue_process_event.exit_crit_edge

sw.bb.i.snd_seq_queue_process_event.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

if.then.i46:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i.i) #8
  %29 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 4
  %32 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 5
  %33 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 5, i32 1
  %34 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 6
  %35 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i.i, i32 0, i32 7
  %36 = call ptr @memcpy(ptr %sev.i.i, ptr %ev, i32 28)
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %29, align 1
  %38 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %timer.i, align 4
  %tick.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %tick.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tick.i.i, align 4
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %31, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %4, align 4
  %conv.i.i = trunc i32 %44 to i8
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i, ptr %30, align 1
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i, ptr %35, align 4
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %32, align 4
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %33, align 1
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -2, ptr %34, align 2
  %call.i.i45 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb5.i:                                         ; preds = %if.end31
  %timer6.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %50 = ptrtoint ptr %timer6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %timer6.i, align 4
  %call7.i = tail call i32 @snd_seq_timer_continue(ptr noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %sw.bb5.i.snd_seq_queue_process_event.exit_crit_edge

sw.bb5.i.snd_seq_queue_process_event.exit_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

if.then9.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i88.i) #8
  %52 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 1
  %53 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 3
  %54 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 4
  %55 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 5
  %56 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 5, i32 1
  %57 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 6
  %58 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i88.i, i32 0, i32 7
  %59 = call ptr @memcpy(ptr %sev.i88.i, ptr %ev, i32 28)
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %52, align 1
  %61 = ptrtoint ptr %timer6.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %timer6.i, align 4
  %tick.i90.i = getelementptr inbounds %struct.snd_seq_timer, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %tick.i90.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tick.i90.i, align 4
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %54, align 4
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %4, align 4
  %conv.i91.i = trunc i32 %67 to i8
  %68 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i91.i, ptr %53, align 1
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i91.i, ptr %58, align 4
  %70 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %55, align 4
  %71 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %56, align 1
  %72 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -2, ptr %57, align 2
  %call.i92.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i88.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i88.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb11.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %timer12.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %73 = ptrtoint ptr %timer12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %timer12.i, align 4
  %call13.i = tail call i32 @snd_seq_timer_stop(ptr noundef %74) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i93.i) #8
  %75 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 1
  %76 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 3
  %77 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 4
  %78 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 5
  %79 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 5, i32 1
  %80 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 6
  %81 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i93.i, i32 0, i32 7
  %82 = call ptr @memcpy(ptr %sev.i93.i, ptr %ev, i32 28)
  %83 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %75, align 1
  %84 = ptrtoint ptr %timer12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %timer12.i, align 4
  %tick.i95.i = getelementptr inbounds %struct.snd_seq_timer, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %tick.i95.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tick.i95.i, align 4
  %88 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %77, align 4
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %4, align 4
  %conv.i96.i = trunc i32 %90 to i8
  %91 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.i96.i, ptr %76, align 1
  %92 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv.i96.i, ptr %81, align 4
  %93 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %78, align 4
  %94 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %79, align 1
  %95 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -2, ptr %80, align 2
  %call.i97.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i93.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i93.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb14.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %timer15.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %96 = ptrtoint ptr %timer15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %timer15.i, align 4
  %param.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %98 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %param.i, align 4
  %call16.i = tail call i32 @snd_seq_timer_set_tempo(ptr noundef %97, i32 noundef %99) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i98.i) #8
  %100 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 1
  %101 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 3
  %102 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 4
  %103 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 5
  %104 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 5, i32 1
  %105 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 6
  %106 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i98.i, i32 0, i32 7
  %107 = call ptr @memcpy(ptr %sev.i98.i, ptr %ev, i32 28)
  %108 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %100, align 1
  %109 = ptrtoint ptr %timer15.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %timer15.i, align 4
  %tick.i100.i = getelementptr inbounds %struct.snd_seq_timer, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %tick.i100.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tick.i100.i, align 4
  %113 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %102, align 4
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %4, align 4
  %conv.i101.i = trunc i32 %115 to i8
  %116 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i101.i, ptr %101, align 1
  %117 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.i101.i, ptr %106, align 4
  %118 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %103, align 4
  %119 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %104, align 1
  %120 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -2, ptr %105, align 2
  %call.i102.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i98.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i98.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb17.i:                                        ; preds = %if.end31
  %timer18.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %121 = ptrtoint ptr %timer18.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %timer18.i, align 4
  %param20.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %123 = ptrtoint ptr %param20.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %param20.i, align 4
  %call21.i = tail call i32 @snd_seq_timer_set_position_tick(ptr noundef %122, i32 noundef %124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i = icmp eq i32 %call21.i, 0
  br i1 %cmp.i, label %if.then23.i, label %sw.bb17.i.snd_seq_queue_process_event.exit_crit_edge

sw.bb17.i.snd_seq_queue_process_event.exit_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

if.then23.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i103.i) #8
  %125 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 1
  %126 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 3
  %127 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 4
  %128 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 5
  %129 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 5, i32 1
  %130 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 6
  %131 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i103.i, i32 0, i32 7
  %132 = call ptr @memcpy(ptr %sev.i103.i, ptr %ev, i32 28)
  %133 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %125, align 1
  %134 = ptrtoint ptr %timer18.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %timer18.i, align 4
  %tick.i105.i = getelementptr inbounds %struct.snd_seq_timer, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %tick.i105.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tick.i105.i, align 4
  %138 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %127, align 4
  %139 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %4, align 4
  %conv.i106.i = trunc i32 %140 to i8
  %141 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i106.i, ptr %126, align 1
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv.i106.i, ptr %131, align 4
  %143 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %128, align 4
  %144 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %129, align 1
  %145 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -2, ptr %130, align 2
  %call.i107.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i103.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i103.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb25.i:                                        ; preds = %if.end31
  %timer26.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %146 = ptrtoint ptr %timer26.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %timer26.i, align 4
  %param28.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %148 = ptrtoint ptr %param28.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.unpack.i = load i32, ptr %param28.i, align 4
  %149 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt86.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %150 = ptrtoint ptr %.elt86.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.unpack87.i = load i32, ptr %.elt86.i, align 4
  %151 = insertvalue [2 x i32] %149, i32 %.unpack87.i, 1
  %call29.i = tail call i32 @snd_seq_timer_set_position_time(ptr noundef %147, [2 x i32] %151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.i, label %if.then32.i, label %sw.bb25.i.snd_seq_queue_process_event.exit_crit_edge

sw.bb25.i.snd_seq_queue_process_event.exit_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

if.then32.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i108.i) #8
  %152 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 1
  %153 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 3
  %154 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 4
  %155 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 5
  %156 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 5, i32 1
  %157 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 6
  %158 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i108.i, i32 0, i32 7
  %159 = call ptr @memcpy(ptr %sev.i108.i, ptr %ev, i32 28)
  %160 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %152, align 1
  %161 = ptrtoint ptr %timer26.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %timer26.i, align 4
  %tick.i110.i = getelementptr inbounds %struct.snd_seq_timer, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %tick.i110.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tick.i110.i, align 4
  %165 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %154, align 4
  %166 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %4, align 4
  %conv.i111.i = trunc i32 %167 to i8
  %168 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv.i111.i, ptr %153, align 1
  %169 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv.i111.i, ptr %158, align 4
  %170 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %155, align 4
  %171 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %156, align 1
  %172 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -2, ptr %157, align 2
  %call.i112.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i108.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i108.i) #8
  br label %snd_seq_queue_process_event.exit

sw.bb34.i:                                        ; preds = %if.end31
  %timer35.i = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4
  %173 = ptrtoint ptr %timer35.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %timer35.i, align 4
  %param37.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %175 = ptrtoint ptr %param37.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %param37.i, align 4
  %base.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %177 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %base.i, align 4
  %call40.i = tail call i32 @snd_seq_timer_set_skew(ptr noundef %174, i32 noundef %176, i32 noundef %178) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp eq i32 %call40.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %sw.bb34.i.snd_seq_queue_process_event.exit_crit_edge

sw.bb34.i.snd_seq_queue_process_event.exit_crit_edge: ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_queue_process_event.exit

if.then43.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sev.i113.i) #8
  %179 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 1
  %180 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 3
  %181 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 4
  %182 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 5
  %183 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 5, i32 1
  %184 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 6
  %185 = getelementptr inbounds %struct.snd_seq_event, ptr %sev.i113.i, i32 0, i32 7
  %186 = call ptr @memcpy(ptr %sev.i113.i, ptr %ev, i32 28)
  %187 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %179, align 1
  %188 = ptrtoint ptr %timer35.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %timer35.i, align 4
  %tick.i115.i = getelementptr inbounds %struct.snd_seq_timer, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %tick.i115.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tick.i115.i, align 4
  %192 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %181, align 4
  %193 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %4, align 4
  %conv.i116.i = trunc i32 %194 to i8
  %195 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv.i116.i, ptr %180, align 1
  %196 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv.i116.i, ptr %185, align 4
  %197 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %182, align 4
  %198 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %183, align 1
  %199 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -2, ptr %184, align 2
  %call.i117.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef nonnull %sev.i113.i, i32 noundef %atomic, i32 noundef %hop) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sev.i113.i) #8
  br label %snd_seq_queue_process_event.exit

snd_seq_queue_process_event.exit:                 ; preds = %if.then43.i, %sw.bb34.i.snd_seq_queue_process_event.exit_crit_edge, %if.then32.i, %sw.bb25.i.snd_seq_queue_process_event.exit_crit_edge, %if.then23.i, %sw.bb17.i.snd_seq_queue_process_event.exit_crit_edge, %sw.bb14.i, %sw.bb11.i, %if.then9.i, %sw.bb5.i.snd_seq_queue_process_event.exit_crit_edge, %if.then.i46, %sw.bb.i.snd_seq_queue_process_event.exit_crit_edge, %if.end31.snd_seq_queue_process_event.exit_crit_edge
  %call2.i48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %owner_lock.i) #8
  %klocked.i49 = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 7
  %200 = ptrtoint ptr %klocked.i49 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %klocked.i49, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %owner_lock.i, i32 noundef %call2.i48) #8
  %call.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %201 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_queue_process_event.exit, %queue_access_lock.exit.thread, %queueptr.exit.thread52, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %snd_seq_queue_process_event.exit ], [ -1, %queue_access_lock.exit.thread ], [ -22, %queueptr.exit.thread52 ], [ -22, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_info_queues_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body2.i

do.body2.i:                                       ; preds = %for.inc.do.body2.i_crit_edge, %entry
  %i.063 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body2.i_crit_edge ]
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @queue_list_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @queue_list, i32 0, i32 %i.063
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %queueptr.exit.thread61, label %if.end

queueptr.exit.thread61:                           ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  br label %for.inc

if.end:                                           ; preds = %do.body2.i
  %use_lock.i = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @queue_list_lock, i32 noundef %call4.i) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %tempo = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %tempo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tempo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 60000000, %6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %bpm.0 = phi i32 [ %div, %if.then3 ], [ 0, %if.end.if.end5_crit_edge ]
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %owner_lock) #8
  %locked6 = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %locked6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %locked6, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %owner8 = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %owner8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %owner8, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %owner_lock) #8
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %name = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %14, ptr noundef %name) #8
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %10) #8
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  %cond = select i1 %tobool7.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #8
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %timeq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timeq, align 4
  %call15 = tail call i32 @snd_seq_prioq_avail(ptr noundef %22) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %call15) #8
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %tickq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tickq, align 4
  %call17 = tail call i32 @snd_seq_prioq_avail(ptr noundef %26) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef %call17) #8
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  %cond20 = select i1 %tobool19.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond20) #8
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %ppq = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 2
  %32 = ptrtoint ptr %ppq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ppq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.11, i32 noundef %33) #8
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  %36 = ptrtoint ptr %tempo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tempo, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef %37) #8
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.13, i32 noundef %bpm.0) #8
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 3
  %42 = ptrtoint ptr %cur_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_time, align 4
  %tv_nsec = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tv_nsec, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.14, i32 noundef %43, i32 noundef %45) #8
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 4
  %48 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tick, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef %49) #8
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.16) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !56
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %queueptr.exit.thread61
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body2.i_crit_edge

for.inc.do.body2.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_prioq_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_prioq_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_timer_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_prioq_new() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_timer_new() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_continue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_set_tempo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_set_position_tick(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_timer_set_position_time(ptr noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_queue.c", i32 305, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_queue.c", i32 758, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_queue.c", i32 759, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/seq_queue.c", i32 760, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/core/seq/seq_queue.c", i32 761, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq_queue.c", i32 762, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/seq/seq_queue.c", i32 763, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq_queue.c", i32 764, i32 3}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/core/seq/seq_queue.c", i32 765, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/core/seq/seq_queue.c", i32 766, i32 3}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/core/seq/seq_queue.c", i32 767, i32 3}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq_queue.c", i32 768, i32 3}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/core/seq/seq_queue.c", i32 769, i32 3}
!30 = !{ptr @queue_list, !31, !"queue_list", i1 false, i1 false}
!31 = !{!"../sound/core/seq/seq_queue.c", i32 37, i32 30}
!32 = !{ptr @num_queues, !33, !"num_queues", i1 false, i1 false}
!33 = !{!"../sound/core/seq/seq_queue.c", i32 40, i32 12}
!34 = !{ptr @queue_new.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../sound/core/seq/seq_queue.c", i32 104, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @queue_new.__key.18, !38, !"__key", i1 false, i1 false}
!38 = !{!"../sound/core/seq/seq_queue.c", i32 105, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @queue_new.__key.20, !41, !"__key", i1 false, i1 false}
!41 = !{!"../sound/core/seq/seq_queue.c", i32 106, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/core/seq/seq_queue.c", i32 38, i32 8}
!45 = !{ptr @queue_list_lock, !44, !"queue_list_lock", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148597664, i64 2148597690, i64 2148597719, i64 2148597753, i64 2148597784, i64 2148597807}
!56 = !{i64 2148600129, i64 2148600155, i64 2148600184, i64 2148600218, i64 2148600249, i64 2148600272}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 1, i32 2000}
