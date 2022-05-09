; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctamixer.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctamixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsc_ops = type { ptr, ptr, ptr, ptr }
%struct.amixer_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amixer_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.amixer = type { %struct.rsc, [8 x i8], ptr, ptr, ptr }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sum_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr }
%struct.sum = type { %struct.rsc, [8 x i8] }

@amixer_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&amixer_mgr->mgr_lock\00", [42 x i8] zeroinitializer }, align 32
@sum_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sum_mgr->mgr_lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_amixer_rsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't meet AMIXER resource request!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_amixer_rsc\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ctxfi/ctamixer.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@get_amixer_rsc._entry_ptr = internal global ptr @get_amixer_rsc._entry, section ".printk_index", align 4
@amixer_basic_rsc_ops = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @amixer_master, ptr @amixer_next_conj, ptr @amixer_index, ptr @amixer_output_slot }, [16 x i8] zeroinitializer }, align 32
@amixer_ops = internal constant { %struct.amixer_rsc_ops, [32 x i8] } { %struct.amixer_rsc_ops { ptr @amixer_set_input, ptr @amixer_set_y, ptr @amixer_set_invalid_squash, ptr @amixer_set_sum, ptr @amixer_commit_write, ptr @amixer_commit_raw_write, ptr @amixer_setup, ptr @amixer_get_y }, [32 x i8] zeroinitializer }, align 32
@get_sum_rsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't meet SUM resource request!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_sum_rsc\00", [20 x i8] zeroinitializer }, align 32
@get_sum_rsc._entry_ptr = internal global ptr @get_sum_rsc._entry, section ".printk_index", align 4
@sum_basic_rsc_ops = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @sum_master, ptr @sum_next_conj, ptr @sum_index, ptr @sum_output_slot }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 309, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 463, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 256, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"amixer_basic_rsc_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 47, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"amixer_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 184, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 410, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"sum_basic_rsc_ops\00", align 1
@___asan_gen_.55 = private constant [30 x i8] c"../sound/pci/ctxfi/ctamixer.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 354, i32 29 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @get_amixer_rsc._entry, ptr @get_amixer_rsc._entry_ptr, ptr @get_sum_rsc._entry, ptr @get_sum_rsc._entry_ptr, ptr @amixer_mgr_create.__key, ptr @.str, ptr @sum_mgr_create.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @amixer_basic_rsc_ops, ptr @amixer_ops, ptr @.str.7, ptr @.str.8, ptr @sum_basic_rsc_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amixer_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sum_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_amixer_rsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amixer_basic_rsc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amixer_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sum_rsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sum_basic_rsc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amixer_mgr_create(ptr noundef %hw, ptr nocapture noundef writeonly %ramixer_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ramixer_mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ramixer_mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rsc_mgr_init(ptr noundef nonnull %call7.i.i, i32 noundef 2, i32 noundef 256, ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %error

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mgr_lock = getelementptr inbounds %struct.amixer_mgr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %mgr_lock, ptr noundef nonnull @.str, ptr noundef nonnull @amixer_mgr_create.__key, i16 noundef signext 3) #7
  %get_amixer = getelementptr inbounds %struct.amixer_mgr, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %get_amixer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @get_amixer_rsc, ptr %get_amixer, align 8
  %put_amixer = getelementptr inbounds %struct.amixer_mgr, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %put_amixer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @put_amixer_rsc, ptr %put_amixer, align 4
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %card6 = getelementptr inbounds %struct.amixer_mgr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %card6, align 8
  %7 = ptrtoint ptr %ramixer_mgr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %ramixer_mgr, align 4
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_amixer_rsc(ptr noundef %mgr, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %ramixer) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !34
  %1 = ptrtoint ptr %ramixer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ramixer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr_lock = getelementptr inbounds %struct.amixer_mgr, ptr %mgr, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp685.not = icmp eq i32 %4, 0
  br i1 %cmp685.not, label %if.end.if.end21_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call9 = call i32 @mgr_get_resource(ptr noundef %mgr, i32 noundef 1, ptr noundef nonnull %idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end20

if.end12:                                         ; preds = %for.body
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %conv13 = trunc i32 %6 to i8
  %arrayidx = getelementptr %struct.amixer, ptr %call7.i.i, i32 0, i32 1, i32 %i.086
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.086, 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  %cmp6 = icmp ult i32 %inc, %9
  br i1 %cmp6, label %if.end12.for.body_crit_edge, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #7
  %card = getelementptr inbounds %struct.amixer_mgr, ptr %mgr, i32 0, i32 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #11
  br label %do.body27

if.end21:                                         ; preds = %if.end12.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.if.end21_crit_edge ], [ %inc, %if.end12.if.end21_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #7
  %idx.i = getelementptr inbounds %struct.amixer, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %idx.i, align 8
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc, align 4
  %hw.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %call.i = call i32 @rsc_init(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i, i32 noundef 2, i32 noundef %17, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %if.end21.do.body27_crit_edge

if.end21.do.body27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.rsc, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @amixer_basic_rsc_ops, ptr %ops.i, align 4
  %ops3.i = getelementptr inbounds %struct.amixer, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @amixer_ops, ptr %ops3.i, align 8
  %input.i = getelementptr inbounds %struct.amixer, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %input.i, align 8
  %sum.i = getelementptr inbounds %struct.amixer, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sum.i, align 4
  %hw2.i.i.i = getelementptr inbounds %struct.rsc, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw2.i.i.i, align 8
  %amixer_set_mode.i.i.i = getelementptr inbounds %struct.hw, ptr %25, i32 0, i32 55
  %26 = ptrtoint ptr %amixer_set_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %amixer_set_mode.i.i.i, align 4
  %ctrl_blk.i.i.i = getelementptr inbounds %struct.rsc, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i.i.i = call i32 %27(ptr noundef %29, i32 noundef 1) #7
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %input.i, align 8
  %amixer_set_x.i.i.i = getelementptr inbounds %struct.hw, ptr %25, i32 0, i32 57
  %31 = ptrtoint ptr %amixer_set_x.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %amixer_set_x.i.i.i, align 4
  %33 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call11.i.i.i = call i32 %32(ptr noundef %34, i32 noundef 4094) #7
  %35 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw2.i.i.i, align 8
  %amixer_set_y.i.i.i = getelementptr inbounds %struct.hw, ptr %36, i32 0, i32 58
  %37 = ptrtoint ptr %amixer_set_y.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %amixer_set_y.i.i.i, align 4
  %39 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i8.i.i = call i32 %38(ptr noundef %40, i32 noundef 0) #7
  %41 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw2.i.i.i, align 8
  %43 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sum.i, align 4
  %amixer_set_se.i.i.i = getelementptr inbounds %struct.hw, ptr %42, i32 0, i32 60
  %44 = ptrtoint ptr %amixer_set_se.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %amixer_set_se.i.i.i, align 4
  %46 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i12.i.i = call i32 %45(ptr noundef %47, i32 noundef 0) #7
  %call3.i.i = call i32 @amixer_commit_write(ptr noundef nonnull %call7.i.i) #7
  %48 = ptrtoint ptr %ramixer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %ramixer, align 4
  br label %cleanup

do.body27:                                        ; preds = %if.end21.do.body27_crit_edge, %do.end20
  %i.084 = phi i32 [ %i.086, %do.end20 ], [ %i.0.lcssa, %if.end21.do.body27_crit_edge ]
  %err.2 = phi i32 [ %call9, %do.end20 ], [ %call.i, %if.end21.do.body27_crit_edge ]
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %i.187 = add i32 %i.084, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.187)
  %cmp4188 = icmp sgt i32 %i.187, -1
  br i1 %cmp4188, label %do.body27.for.body43_crit_edge, label %do.body27.for.end51_crit_edge

do.body27.for.end51_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

do.body27.for.body43_crit_edge:                   ; preds = %do.body27
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %do.body27.for.body43_crit_edge
  %i.189 = phi i32 [ %i.1, %for.body43.for.body43_crit_edge ], [ %i.187, %do.body27.for.body43_crit_edge ]
  %arrayidx46 = getelementptr %struct.amixer, ptr %call7.i.i, i32 0, i32 1, i32 %i.189
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %50 to i32
  %call48 = call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv47) #7
  %i.1 = add nsw i32 %i.189, -1
  %cmp41 = icmp sgt i32 %i.189, 0
  br i1 %cmp41, label %for.body43.for.body43_crit_edge, label %for.body43.for.end51_crit_edge

for.body43.for.end51_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.end51:                                        ; preds = %for.body43.for.end51_crit_edge, %do.body27.for.end51_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call35) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %for.end51 ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_amixer_rsc(ptr noundef %mgr, ptr noundef %amixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr_lock = getelementptr inbounds %struct.amixer_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %0 = ptrtoint ptr %amixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load19 = load i32, ptr %amixer, align 4
  %bf.clear20 = and i32 %bf.load19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear20)
  %cmp521.not = icmp eq i32 %bf.clear20, 0
  br i1 %cmp521.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amixer, ptr %amixer, i32 0, i32 1, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %2 to i32
  %call9 = tail call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv8) #7
  %inc = add nuw nsw i32 %i.022, 1
  %3 = ptrtoint ptr %amixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %amixer, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp5 = icmp ult i32 %inc, %bf.clear
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #7
  %hw2.i.i.i = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %4 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2.i.i.i, align 4
  %amixer_set_mode.i.i.i = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 55
  %6 = ptrtoint ptr %amixer_set_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amixer_set_mode.i.i.i, align 4
  %ctrl_blk.i.i.i = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %8 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i.i.i = tail call i32 %7(ptr noundef %9, i32 noundef 1) #7
  %input.i.i.i = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 2
  %10 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %input.i.i.i, align 4
  %amixer_set_x.i.i.i = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 57
  %11 = ptrtoint ptr %amixer_set_x.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %amixer_set_x.i.i.i, align 4
  %13 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call11.i.i.i = tail call i32 %12(ptr noundef %14, i32 noundef 4094) #7
  %15 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw2.i.i.i, align 4
  %amixer_set_y.i.i.i = getelementptr inbounds %struct.hw, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %amixer_set_y.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amixer_set_y.i.i.i, align 4
  %19 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i8.i.i = tail call i32 %18(ptr noundef %20, i32 noundef 0) #7
  %21 = ptrtoint ptr %hw2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw2.i.i.i, align 4
  %sum2.i.i.i = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 3
  %23 = ptrtoint ptr %sum2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sum2.i.i.i, align 4
  %amixer_set_se.i.i.i = getelementptr inbounds %struct.hw, ptr %22, i32 0, i32 60
  %24 = ptrtoint ptr %amixer_set_se.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %amixer_set_se.i.i.i, align 4
  %26 = ptrtoint ptr %ctrl_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_blk.i.i.i, align 4
  %call.i12.i.i = tail call i32 %25(ptr noundef %27, i32 noundef 0) #7
  %call3.i.i = tail call i32 @amixer_commit_write(ptr noundef %amixer) #7
  %call1.i = tail call i32 @rsc_uninit(ptr noundef %amixer) #7
  %ops.i = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ops.i, align 4
  %29 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %input.i.i.i, align 4
  %30 = ptrtoint ptr %sum2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sum2.i.i.i, align 4
  tail call void @kfree(ptr noundef %amixer) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amixer_mgr_destroy(ptr noundef %amixer_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsc_mgr_uninit(ptr noundef %amixer_mgr) #7
  tail call void @kfree(ptr noundef %amixer_mgr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sum_mgr_create(ptr noundef %hw, ptr nocapture noundef writeonly %rsum_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsum_mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rsum_mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rsc_mgr_init(ptr noundef nonnull %call7.i.i, i32 noundef 3, i32 noundef 256, ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %error

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mgr_lock = getelementptr inbounds %struct.sum_mgr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %mgr_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sum_mgr_create.__key, i16 noundef signext 3) #7
  %get_sum = getelementptr inbounds %struct.sum_mgr, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %get_sum to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @get_sum_rsc, ptr %get_sum, align 8
  %put_sum = getelementptr inbounds %struct.sum_mgr, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %put_sum to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @put_sum_rsc, ptr %put_sum, align 4
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %card6 = getelementptr inbounds %struct.sum_mgr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %card6, align 8
  %7 = ptrtoint ptr %rsum_mgr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %rsum_mgr, align 4
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_sum_rsc(ptr noundef %mgr, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %rsum) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !34
  %1 = ptrtoint ptr %rsum to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rsum, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr_lock = getelementptr inbounds %struct.sum_mgr, ptr %mgr, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp685.not = icmp eq i32 %4, 0
  br i1 %cmp685.not, label %if.end.if.end21_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call9 = call i32 @mgr_get_resource(ptr noundef %mgr, i32 noundef 1, ptr noundef nonnull %idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end20

if.end12:                                         ; preds = %for.body
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %conv13 = trunc i32 %6 to i8
  %arrayidx = getelementptr %struct.sum, ptr %call7.i.i, i32 0, i32 1, i32 %i.086
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.086, 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  %cmp6 = icmp ult i32 %inc, %9
  br i1 %cmp6, label %if.end12.for.body_crit_edge, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #7
  %card = getelementptr inbounds %struct.sum_mgr, ptr %mgr, i32 0, i32 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #11
  br label %do.body27

if.end21:                                         ; preds = %if.end12.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.if.end21_crit_edge ], [ %inc, %if.end12.if.end21_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #7
  %idx.i = getelementptr inbounds %struct.sum, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %idx.i, align 8
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc, align 4
  %hw.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %call.i = call i32 @rsc_init(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i, i32 noundef 3, i32 noundef %17, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %if.end21.do.body27_crit_edge

if.end21.do.body27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.rsc, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sum_basic_rsc_ops, ptr %ops.i, align 4
  %21 = ptrtoint ptr %rsum to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %rsum, align 4
  br label %cleanup

do.body27:                                        ; preds = %if.end21.do.body27_crit_edge, %do.end20
  %i.084 = phi i32 [ %i.086, %do.end20 ], [ %i.0.lcssa, %if.end21.do.body27_crit_edge ]
  %err.2 = phi i32 [ %call9, %do.end20 ], [ %call.i, %if.end21.do.body27_crit_edge ]
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %i.187 = add i32 %i.084, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.187)
  %cmp4188 = icmp sgt i32 %i.187, -1
  br i1 %cmp4188, label %do.body27.for.body43_crit_edge, label %do.body27.for.end51_crit_edge

do.body27.for.end51_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

do.body27.for.body43_crit_edge:                   ; preds = %do.body27
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %do.body27.for.body43_crit_edge
  %i.189 = phi i32 [ %i.1, %for.body43.for.body43_crit_edge ], [ %i.187, %do.body27.for.body43_crit_edge ]
  %arrayidx46 = getelementptr %struct.sum, ptr %call7.i.i, i32 0, i32 1, i32 %i.189
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %23 to i32
  %call48 = call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv47) #7
  %i.1 = add nsw i32 %i.189, -1
  %cmp41 = icmp sgt i32 %i.189, 0
  br i1 %cmp41, label %for.body43.for.body43_crit_edge, label %for.body43.for.end51_crit_edge

for.body43.for.end51_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.end51:                                        ; preds = %for.body43.for.end51_crit_edge, %do.body27.for.end51_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call35) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %for.end51 ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_sum_rsc(ptr noundef %mgr, ptr noundef %sum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr_lock = getelementptr inbounds %struct.sum_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #7
  %0 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load19 = load i32, ptr %sum, align 4
  %bf.clear20 = and i32 %bf.load19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear20)
  %cmp521.not = icmp eq i32 %bf.clear20, 0
  br i1 %cmp521.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sum, ptr %sum, i32 0, i32 1, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %2 to i32
  %call9 = tail call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv8) #7
  %inc = add nuw nsw i32 %i.022, 1
  %3 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %sum, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp5 = icmp ult i32 %inc, %bf.clear
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #7
  %call.i = tail call i32 @rsc_uninit(ptr noundef %sum) #7
  tail call void @kfree(ptr noundef %sum) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sum_mgr_destroy(ptr noundef %sum_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsc_mgr_uninit(ptr noundef %sum_mgr) #7
  tail call void @kfree(ptr noundef %sum_mgr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgr_get_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgr_put_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_setup(ptr noundef %amixer, ptr noundef %input, i32 noundef %scale, ptr noundef %sum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2.i = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2.i, align 4
  %amixer_set_mode.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %amixer_set_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixer_set_mode.i, align 4
  %ctrl_blk.i = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef 1) #7
  %input.i = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 2
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %input, ptr %input.i, align 4
  %tobool.not.i = icmp eq ptr %input, null
  %amixer_set_x.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 57
  %7 = ptrtoint ptr %amixer_set_x.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amixer_set_x.i, align 4
  %9 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk.i, align 4
  br i1 %tobool.not.i, label %entry.amixer_set_input.exit_crit_edge, label %if.else.i

entry.amixer_set_input.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %amixer_set_input.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.rsc, ptr %input, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %output_slot.i = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %output_slot.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %output_slot.i, align 4
  %call10.i = tail call i32 %14(ptr noundef nonnull %input) #7
  br label %amixer_set_input.exit

amixer_set_input.exit:                            ; preds = %if.else.i, %entry.amixer_set_input.exit_crit_edge
  %call10.sink.i = phi i32 [ %call10.i, %if.else.i ], [ 4094, %entry.amixer_set_input.exit_crit_edge ]
  %call11.i = tail call i32 %8(ptr noundef %10, i32 noundef %call10.sink.i) #7
  %15 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw2.i, align 4
  %amixer_set_y.i = getelementptr inbounds %struct.hw, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %amixer_set_y.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amixer_set_y.i, align 4
  %19 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_blk.i, align 4
  %call.i8 = tail call i32 %18(ptr noundef %20, i32 noundef %scale) #7
  %21 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw2.i, align 4
  %sum2.i = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 3
  %23 = ptrtoint ptr %sum2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sum, ptr %sum2.i, align 4
  %tobool.not.i10 = icmp eq ptr %sum, null
  %amixer_set_se.i = getelementptr inbounds %struct.hw, ptr %22, i32 0, i32 60
  %24 = ptrtoint ptr %amixer_set_se.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %amixer_set_se.i, align 4
  %26 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_blk.i, align 4
  br i1 %tobool.not.i10, label %if.then.i, label %if.else.i14

if.then.i:                                        ; preds = %amixer_set_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i12 = tail call i32 %25(ptr noundef %27, i32 noundef 0) #7
  br label %amixer_set_sum.exit

if.else.i14:                                      ; preds = %amixer_set_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 %25(ptr noundef %27, i32 noundef 1) #7
  %amixer_set_sadr.i = getelementptr inbounds %struct.hw, ptr %22, i32 0, i32 59
  %28 = ptrtoint ptr %amixer_set_sadr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %amixer_set_sadr.i, align 4
  %30 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_blk.i, align 4
  %ops.i13 = getelementptr inbounds %struct.rsc, ptr %sum, i32 0, i32 3
  %32 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i13, align 4
  %index.i = getelementptr inbounds %struct.rsc_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %index.i, align 4
  %call12.i = tail call i32 %35(ptr noundef nonnull %sum) #7
  %call13.i = tail call i32 %29(ptr noundef %31, i32 noundef %call12.i) #7
  br label %amixer_set_sum.exit

amixer_set_sum.exit:                              ; preds = %if.else.i14, %if.then.i
  %call3 = tail call i32 @amixer_commit_write(ptr noundef %amixer)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amixer_master(ptr nocapture noundef %rsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %idx = getelementptr inbounds %struct.amixer, ptr %rsc, i32 0, i32 1
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %idx, align 4
  %conv = zext i8 %2 to i32
  %bf.shl = shl nuw nsw i32 %conv, 20
  %bf.clear2 = and i32 %bf.load, 983055
  %bf.set3 = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set3, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amixer_next_conj(ptr nocapture noundef %rsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = add i32 %bf.load, 16
  %bf.shl = and i32 %1, 65520
  %bf.clear2 = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_index(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 4095
  %arrayidx = getelementptr %struct.amixer, ptr %rsc, i32 0, i32 1, i32 %bf.clear
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_output_slot(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %rsc, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 4095
  %arrayidx.i = getelementptr %struct.amixer, ptr %rsc, i32 0, i32 1, i32 %bf.clear.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv.i, 4
  %add = or i32 %shl, 4
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_input(ptr nocapture noundef %amixer, ptr noundef %rsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %amixer_set_mode = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %amixer_set_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixer_set_mode, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 1) #7
  %input = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 2
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rsc, ptr %input, align 4
  %tobool.not = icmp eq ptr %rsc, null
  %amixer_set_x = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 57
  %7 = ptrtoint ptr %amixer_set_x to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amixer_set_x, align 4
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %output_slot, align 4
  %call10 = tail call i32 %14(ptr noundef nonnull %rsc) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %call10.sink = phi i32 [ %call10, %if.else ], [ 4094, %entry.if.end_crit_edge ]
  %call11 = tail call i32 %8(ptr noundef %10, i32 noundef %call10.sink) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_y(ptr nocapture noundef readonly %amixer, i32 noundef %y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %amixer_set_y = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %amixer_set_y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixer_set_y, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %y) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_invalid_squash(ptr nocapture noundef readonly %amixer, i32 noundef %iv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %amixer_set_iv = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %amixer_set_iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixer_set_iv, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %iv) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_sum(ptr nocapture noundef %amixer, ptr noundef %sum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %sum2 = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 3
  %2 = ptrtoint ptr %sum2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sum, ptr %sum2, align 4
  %tobool.not = icmp eq ptr %sum, null
  %amixer_set_se = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 60
  %3 = ptrtoint ptr %amixer_set_se to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %amixer_set_se, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_blk, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %4(ptr noundef %6, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %4(ptr noundef %6, i32 noundef 1) #7
  %amixer_set_sadr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 59
  %7 = ptrtoint ptr %amixer_set_sadr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amixer_set_sadr, align 4
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %sum, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index, align 4
  %call12 = tail call i32 %14(ptr noundef nonnull %sum) #7
  %call13 = tail call i32 %8(ptr noundef %10, i32 noundef %call12) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_commit_write(ptr noundef %amixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %input2 = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 2
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input2, align 4
  %sum3 = getelementptr inbounds %struct.amixer, ptr %amixer, i32 0, i32 3
  %4 = ptrtoint ptr %sum3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sum3, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %amixer) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops6 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops6, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops11 = getelementptr inbounds %struct.rsc, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef nonnull %5) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %18 = ptrtoint ptr %amixer to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load112 = load i32, ptr %amixer, align 4
  %bf.clear113 = and i32 %bf.load112, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear113)
  %cmp114.not = icmp eq i32 %bf.clear113, 0
  br i1 %cmp114.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %amixer_set_dirty_all = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 62
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %amixer_set_x = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 57
  %ops21 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 3
  %amixer_set_sadr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 59
  %ops31 = getelementptr inbounds %struct.rsc, ptr %5, i32 0, i32 3
  %amixer_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end40.for.body_crit_edge ]
  %19 = ptrtoint ptr %amixer_set_dirty_all to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %amixer_set_dirty_all, align 4
  %21 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %20(ptr noundef %22) #7
  br i1 %tobool.not, label %for.body.if.end25_crit_edge, label %if.then18

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %amixer_set_x to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %amixer_set_x, align 4
  %25 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_blk, align 4
  %27 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops21, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %output_slot, align 4
  %call22 = tail call i32 %30(ptr noundef nonnull %3) #7
  %call23 = tail call i32 %24(ptr noundef %26, i32 noundef %call22) #7
  %31 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops21, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_conj, align 4
  tail call void %34(ptr noundef nonnull %3) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %for.body.if.end25_crit_edge
  br i1 %tobool8.not, label %if.end25.if.end40_crit_edge, label %if.then27

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %amixer_set_sadr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %amixer_set_sadr, align 4
  %37 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_blk, align 4
  %39 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops31, align 4
  %index32 = getelementptr inbounds %struct.rsc_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %index32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %index32, align 4
  %call34 = tail call i32 %42(ptr noundef nonnull %5) #7
  %call35 = tail call i32 %36(ptr noundef %38, i32 noundef %call34) #7
  %43 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops31, align 4
  %next_conj38 = getelementptr inbounds %struct.rsc_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %next_conj38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %next_conj38, align 4
  tail call void %46(ptr noundef nonnull %5) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then27, %if.end25.if.end40_crit_edge
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %output_slot43 = getelementptr inbounds %struct.rsc_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %output_slot43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %output_slot43, align 4
  %call45 = tail call i32 %50(ptr noundef %amixer) #7
  %51 = ptrtoint ptr %amixer_commit_write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %amixer_commit_write, align 4
  %53 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_blk, align 4
  %call48 = tail call i32 %52(ptr noundef %1, i32 noundef %call45, ptr noundef %54) #7
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %next_conj51 = getelementptr inbounds %struct.rsc_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %next_conj51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next_conj51, align 4
  tail call void %58(ptr noundef %amixer) #7
  %inc = add nuw nsw i32 %i.0115, 1
  %59 = ptrtoint ptr %amixer to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load = load i32, ptr %amixer, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %if.end40.for.body_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.end14.for.end_crit_edge
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void %63(ptr noundef %amixer) #7
  br i1 %tobool.not, label %for.end.if.end61_crit_edge, label %if.then58

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops59 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %ops59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops59, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef nonnull %3) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %for.end.if.end61_crit_edge
  br i1 %tobool8.not, label %if.end61.if.end68_crit_edge, label %if.then63

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %ops65 = getelementptr inbounds %struct.rsc, ptr %5, i32 0, i32 3
  %68 = ptrtoint ptr %ops65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops65, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  tail call void %71(ptr noundef nonnull %5) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end61.if.end68_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_commit_raw_write(ptr noundef %amixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %output_slot, align 4
  %call = tail call i32 %5(ptr noundef %amixer) #7
  %amixer_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 63
  %6 = ptrtoint ptr %amixer_commit_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amixer_commit_write, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %call5 = tail call i32 %7(ptr noundef %1, i32 noundef %call, ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_get_y(ptr nocapture noundef readonly %amixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %amixer_get_y = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %amixer_get_y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amixer_get_y, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %amixer, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sum_master(ptr nocapture noundef %rsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %idx = getelementptr inbounds %struct.sum, ptr %rsc, i32 0, i32 1
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %idx, align 4
  %conv = zext i8 %2 to i32
  %bf.shl = shl nuw nsw i32 %conv, 20
  %bf.clear2 = and i32 %bf.load, 983055
  %bf.set3 = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set3, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sum_next_conj(ptr nocapture noundef %rsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = add i32 %bf.load, 16
  %bf.shl = and i32 %1, 65520
  %bf.clear2 = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sum_index(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 4095
  %arrayidx = getelementptr %struct.sum, ptr %rsc, i32 0, i32 1, i32 %bf.clear
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sum_output_slot(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %rsc, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 4095
  %arrayidx.i = getelementptr %struct.sum, ptr %rsc, i32 0, i32 1, i32 %bf.clear.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv.i, 4
  %add = or i32 %shl, 12
  ret i32 %add
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @amixer_mgr_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 309, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @sum_mgr_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 463, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 256, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @get_amixer_rsc._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @get_amixer_rsc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @amixer_basic_rsc_ops, !15, !"amixer_basic_rsc_ops", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 47, i32 29}
!16 = !{ptr @amixer_ops, !17, !"amixer_ops", i1 false, i1 false}
!17 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 184, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 410, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @get_sum_rsc._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @get_sum_rsc._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sum_basic_rsc_ops, !24, !"sum_basic_rsc_ops", i1 false, i1 false}
!24 = !{!"../sound/pci/ctxfi/ctamixer.c", i32 354, i32 29}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
