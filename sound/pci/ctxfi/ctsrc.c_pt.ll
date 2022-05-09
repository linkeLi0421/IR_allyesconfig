; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctsrc.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctsrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.src_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsc_ops = type { ptr, ptr, ptr, ptr }
%struct.srcimp_rsc_ops = type { ptr, ptr }
%struct.src_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.src_desc = type { i8, i8, i8 }
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
%struct.src = type { %struct.rsc, ptr, ptr, i8, i8 }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.srcimp_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.imapper = type { i16, i16, i16, i16, %struct.list_head }
%struct.srcimp = type { %struct.rsc, [8 x i8], ptr, i32, ptr, ptr }

@src_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&src_mgr->mgr_lock\00", [45 x i8] zeroinitializer }, align 32
@conj_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@srcimp_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&srcimp_mgr->mgr_lock\00", [42 x i8] zeroinitializer }, align 32
@srcimp_mgr_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&srcimp_mgr->imap_lock\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_src_rsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't meet SRC resource request!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_src_rsc\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/ctxfi/ctsrc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@get_src_rsc._entry_ptr = internal global ptr @get_src_rsc._entry, section ".printk_index", align 4
@src_rsc_ops = internal constant { %struct.src_rsc_ops, [56 x i8] } { %struct.src_rsc_ops { ptr @src_set_state, ptr @src_set_bm, ptr @src_set_sf, ptr @src_set_pm, ptr @src_set_rom, ptr @src_set_vo, ptr @src_set_st, ptr @src_set_bp, ptr @src_set_cisz, ptr @src_set_ca, ptr @src_set_sa, ptr @src_set_la, ptr @src_set_pitch, ptr @src_set_clear_zbufs, ptr @src_commit_write, ptr @src_get_ca, ptr @src_init, ptr @src_next_interleave }, [56 x i8] zeroinitializer }, align 32
@src_default_config = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @src_default_config_memrd, ptr @src_default_config_memwr, ptr @src_default_config_arcrw], [20 x i8] zeroinitializer }, align 32
@get_srcimp_rsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 738, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't meet SRCIMP resource request!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_srcimp_rsc\00", [17 x i8] zeroinitializer }, align 32
@get_srcimp_rsc._entry_ptr = internal global ptr @get_srcimp_rsc._entry, section ".printk_index", align 4
@srcimp_basic_rsc_ops = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @srcimp_master, ptr @srcimp_next_conj, ptr @srcimp_index, ptr null }, [16 x i8] zeroinitializer }, align 32
@srcimp_ops = internal constant { %struct.srcimp_rsc_ops, [24 x i8] } { %struct.srcimp_rsc_ops { ptr @srcimp_map, ptr @srcimp_unmap }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 557, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"conj_mask\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 22, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 839, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 840, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 430, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"src_rsc_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 334, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"src_default_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 28, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 737, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"srcimp_basic_rsc_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 609, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"srcimp_ops\00", align 1
@___asan_gen_.69 = private constant [27 x i8] c"../sound/pci/ctxfi/ctsrc.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 660, i32 36 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @get_src_rsc._entry, ptr @get_src_rsc._entry_ptr, ptr @get_srcimp_rsc._entry, ptr @get_srcimp_rsc._entry_ptr, ptr @src_mgr_create.__key, ptr @.str, ptr @conj_mask, ptr @srcimp_mgr_create.__key, ptr @.str.1, ptr @srcimp_mgr_create.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @src_rsc_ops, ptr @src_default_config, ptr @.str.9, ptr @.str.10, ptr @srcimp_basic_rsc_ops, ptr @srcimp_ops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conj_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcimp_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcimp_mgr_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_src_rsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_rsc_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_default_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_srcimp_rsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcimp_basic_rsc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcimp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @src_mgr_create(ptr noundef %hw, ptr nocapture noundef writeonly %rsrc_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsrc_mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rsrc_mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rsc_mgr_init(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 256, ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %error1

do.body:                                          ; preds = %if.end
  %mgr_lock = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %mgr_lock, ptr noundef nonnull @.str, ptr noundef nonnull @src_mgr_create.__key, i16 noundef signext 3) #9
  %src_dirty_conj_mask = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 37
  %2 = ptrtoint ptr %src_dirty_conj_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_dirty_conj_mask, align 4
  %call6 = tail call i32 %3() #9
  store i32 %call6, ptr @conj_mask, align 4
  %get_src = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %get_src to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @get_src_rsc, ptr %get_src, align 8
  %put_src = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %put_src to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @put_src_rsc, ptr %put_src, align 4
  %src_enable_s = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %src_enable_s to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @src_enable_s, ptr %src_enable_s, align 8
  %src_enable = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %src_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @src_enable, ptr %src_enable, align 4
  %src_disable = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %src_disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @src_disable, ptr %src_disable, align 8
  %commit_write = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %commit_write to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @src_mgr_commit_write, ptr %commit_write, align 4
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %card7 = getelementptr inbounds %struct.src_mgr, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %card7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %card7, align 8
  %src_mgr_dsb_src = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 42
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %call7.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %i.037 = phi i32 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %src_mgr_dsb_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src_mgr_dsb_src, align 4
  %15 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_blk, align 8
  %call9 = tail call i32 %14(ptr noundef %16, i32 noundef %i.037) #9
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %src_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 43
  %17 = ptrtoint ptr %src_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_mgr_commit_write, align 4
  %19 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_blk, align 8
  %call12 = tail call i32 %18(ptr noundef %hw, ptr noundef %20) #9
  %21 = ptrtoint ptr %rsrc_mgr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %rsrc_mgr, align 4
  br label %cleanup

error1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error1, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error1 ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_src_rsc(ptr noundef %mgr, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %rsrc) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %idx, align 4
  %1 = ptrtoint ptr %rsrc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rsrc, align 4
  %mgr_lock = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %mode = getelementptr inbounds %struct.src_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %desc, align 1
  %conv9 = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %conv9, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call12 = call i32 @mgr_get_resource(ptr noundef %mgr, i32 noundef %.sink, ptr noundef nonnull %idx) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp21 = icmp eq i8 %11, 0
  br i1 %cmp21, label %if.end7.i.i, label %if.else27

if.end7.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %desc, align 1
  %conv25 = zext i8 %13 to i32
  %14 = mul nuw nsw i32 %conv25, 28
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  br label %if.end29

if.else27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #12
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.end7.i.i
  %src.0 = phi ptr [ %call7.i.i, %if.else27 ], [ %call8.i.i, %if.end7.i.i ]
  %tobool30.not = icmp eq ptr %src.0, null
  br i1 %tobool30.not, label %if.end29.do.body38_crit_edge, label %if.end32

if.end29.do.body38_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.end32:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %cond.end.i, label %if.end32.for.body.lr.ph.i_crit_edge

if.end32.for.body.lr.ph.i_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

cond.end.i:                                       ; preds = %if.end32
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %desc, align 1
  %conv2.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp377.not.i = icmp eq i8 %21, 0
  br i1 %cmp377.not.i, label %cond.end.i.src_rsc_init.exit.thread_crit_edge, label %cond.end.i.for.body.lr.ph.i_crit_edge

cond.end.i.for.body.lr.ph.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

cond.end.i.src_rsc_init.exit.thread_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %src_rsc_init.exit.thread

for.body.lr.ph.i:                                 ; preds = %cond.end.i.for.body.lr.ph.i_crit_edge, %if.end32.for.body.lr.ph.i_crit_edge
  %cond89.i = phi i32 [ %conv2.i, %cond.end.i.for.body.lr.ph.i_crit_edge ], [ 1, %if.end32.for.body.lr.ph.i_crit_edge ]
  %msr.i = getelementptr inbounds %struct.src_desc, ptr %desc, i32 0, i32 1
  %hw.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %src_enable.i = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.079.i = phi ptr [ %src.0, %for.body.lr.ph.i ], [ %add.ptr.i, %cond.end13.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end13.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.078.i, %17
  %22 = ptrtoint ptr %msr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msr.i, align 1
  %conv5.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 4
  %call.i = call i32 @rsc_init(ptr noundef %p.079.i, i32 noundef %add.i, i32 noundef 0, i32 noundef %conv5.i, ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078.i)
  %cmp2781.not.i = icmp eq i32 %i.078.i, 0
  br i1 %cmp2781.not.i, label %for.cond26.preheader.i.error2_crit_edge, label %for.body29.lr.ph.i

for.cond26.preheader.i.error2_crit_edge:          ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error2

for.body29.lr.ph.i:                               ; preds = %for.cond26.preheader.i
  %src_disable.i = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 7
  br label %for.body29.i

if.end.i:                                         ; preds = %for.body.i
  %ops.i = getelementptr inbounds %struct.src, ptr %p.079.i, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @src_rsc_ops, ptr %ops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078.i)
  %cmp7.i = icmp eq i32 %i.078.i, 0
  br i1 %cmp7.i, label %cond.true9.i, label %if.end.i.cond.end13.i_crit_edge

if.end.i.cond.end13.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end13.i

cond.true9.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %desc, align 1
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.true9.i, %if.end.i.cond.end13.i_crit_edge
  %cond14.i = phi i8 [ %28, %cond.true9.i ], [ 1, %if.end.i.cond.end13.i_crit_edge ]
  %multi16.i = getelementptr inbounds %struct.src, ptr %p.079.i, i32 0, i32 3
  %29 = ptrtoint ptr %multi16.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %cond14.i, ptr %multi16.i, align 4
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 1
  %mode18.i = getelementptr inbounds %struct.src, ptr %p.079.i, i32 0, i32 4
  %32 = ptrtoint ptr %mode18.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %mode18.i, align 1
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @src_default_config, i32 0, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %call20.i = call i32 %34(ptr noundef %p.079.i) #9
  %35 = ptrtoint ptr %src_enable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src_enable.i, align 4
  %call21.i = call i32 %36(ptr noundef %mgr, ptr noundef %p.079.i) #9
  %add.ptr.i = getelementptr %struct.src, ptr %p.079.i, i32 1
  %intlv.i = getelementptr inbounds %struct.src, ptr %p.079.i, i32 0, i32 1
  %37 = ptrtoint ptr %intlv.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %intlv.i, align 4
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond89.i
  br i1 %exitcond.not.i, label %cond.end13.i.src_rsc_init.exit.thread_crit_edge, label %cond.end13.i.for.body.i_crit_edge

cond.end13.i.for.body.i_crit_edge:                ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cond.end13.i.src_rsc_init.exit.thread_crit_edge:  ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %src_rsc_init.exit.thread

src_rsc_init.exit.thread:                         ; preds = %cond.end13.i.src_rsc_init.exit.thread_crit_edge, %cond.end.i.src_rsc_init.exit.thread_crit_edge
  %p.0.lcssa.i = phi ptr [ %src.0, %cond.end.i.src_rsc_init.exit.thread_crit_edge ], [ %add.ptr.i, %cond.end13.i.src_rsc_init.exit.thread_crit_edge ]
  %intlv23.i = getelementptr %struct.src, ptr %p.0.lcssa.i, i32 -1, i32 1
  %38 = ptrtoint ptr %intlv23.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %intlv23.i, align 4
  %commit_write37.i100 = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 8
  %39 = ptrtoint ptr %commit_write37.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %commit_write37.i100, align 4
  %call38.i101 = call i32 %40(ptr noundef %mgr) #9
  %41 = ptrtoint ptr %rsrc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %src.0, ptr %rsrc, align 4
  br label %cleanup

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %i.183.in.i = phi i32 [ %i.078.i, %for.body29.lr.ph.i ], [ %i.183.i, %for.body29.i.for.body29.i_crit_edge ]
  %p.0.pn82.i = phi ptr [ %p.079.i, %for.body29.lr.ph.i ], [ %p.1.i, %for.body29.i.for.body29.i_crit_edge ]
  %i.183.i = add nsw i32 %i.183.in.i, -1
  %p.1.i = getelementptr %struct.src, ptr %p.0.pn82.i, i32 -1
  %42 = ptrtoint ptr %src_disable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src_disable.i, align 4
  %call30.i = call i32 %43(ptr noundef %mgr, ptr noundef %p.1.i) #9
  %call32.i = call i32 @rsc_uninit(ptr noundef %p.1.i) #9
  %cmp27.i = icmp sgt i32 %i.183.in.i, 1
  br i1 %cmp27.i, label %for.body29.i.for.body29.i_crit_edge, label %for.body29.i.error2_crit_edge

for.body29.i.error2_crit_edge:                    ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error2

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i

error2:                                           ; preds = %for.body29.i.error2_crit_edge, %for.cond26.preheader.i.error2_crit_edge
  %commit_write37.i = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 8
  %44 = ptrtoint ptr %commit_write37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %commit_write37.i, align 4
  %call38.i = call i32 %45(ptr noundef %mgr) #9
  call void @kfree(ptr noundef nonnull %src.0) #9
  br label %do.body38

do.body38:                                        ; preds = %error2, %if.end29.do.body38_crit_edge
  %err.1 = phi i32 [ %call.i, %error2 ], [ -12, %if.end29.do.body38_crit_edge ]
  %call46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp53 = icmp eq i8 %47, 0
  br i1 %cmp53, label %if.then55, label %if.else60

if.then55:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %desc, align 1
  %conv58 = zext i8 %49 to i32
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx, align 4
  %call59 = call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef %conv58, i32 noundef %51) #9
  br label %if.end63

if.else60:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx, align 4
  %call62 = call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %53) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then55
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %src_rsc_init.exit.thread, %do.end17
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ %err.1, %if.end63 ], [ 0, %src_rsc_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_src_rsc(ptr noundef %mgr, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr_lock = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %src) #9
  %mode = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7 = icmp eq i8 %5, 0
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %multi = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 3
  %6 = ptrtoint ptr %multi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multi, align 4
  %conv10 = zext i8 %7 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %conv10, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %index19 = getelementptr inbounds %struct.rsc_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %index19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %index19, align 4
  %call21 = tail call i32 %11(ptr noundef %src) #9
  %call22 = tail call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef %.sink, i32 noundef %call21) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #9
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %cond.end.i, label %if.end.for.body.lr.ph.i_crit_edge

if.end.for.body.lr.ph.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

cond.end.i:                                       ; preds = %if.end
  %multi.i = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 3
  %14 = ptrtoint ptr %multi.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %multi.i, align 4
  %conv2.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp31.not.i = icmp eq i8 %15, 0
  br i1 %cmp31.not.i, label %cond.end.i.src_rsc_uninit.exit_crit_edge, label %cond.end.i.for.body.lr.ph.i_crit_edge

cond.end.i.for.body.lr.ph.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

cond.end.i.src_rsc_uninit.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %src_rsc_uninit.exit

for.body.lr.ph.i:                                 ; preds = %cond.end.i.for.body.lr.ph.i_crit_edge, %if.end.for.body.lr.ph.i_crit_edge
  %cond6.i = phi i32 [ %conv2.i, %cond.end.i.for.body.lr.ph.i_crit_edge ], [ 1, %if.end.for.body.lr.ph.i_crit_edge ]
  %src_disable.i = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.03.i = phi ptr [ %src, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %src_disable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_disable.i, align 4
  %call.i = tail call i32 %17(ptr noundef %mgr, ptr noundef %p.03.i) #9
  %call5.i = tail call i32 @rsc_uninit(ptr noundef %p.03.i) #9
  %multi6.i = getelementptr inbounds %struct.src, ptr %p.03.i, i32 0, i32 3
  %18 = ptrtoint ptr %multi6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %multi6.i, align 4
  %ops.i = getelementptr inbounds %struct.src, ptr %p.03.i, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ops.i, align 4
  %mode7.i = getelementptr inbounds %struct.src, ptr %p.03.i, i32 0, i32 4
  %20 = ptrtoint ptr %mode7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %mode7.i, align 1
  %intlv.i = getelementptr inbounds %struct.src, ptr %p.03.i, i32 0, i32 1
  %21 = ptrtoint ptr %intlv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %intlv.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %incdec.ptr.i = getelementptr %struct.src, ptr %p.03.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond6.i
  br i1 %exitcond.not.i, label %for.body.i.src_rsc_uninit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.src_rsc_uninit.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %src_rsc_uninit.exit

src_rsc_uninit.exit:                              ; preds = %for.body.i.src_rsc_uninit.exit_crit_edge, %cond.end.i.src_rsc_uninit.exit_crit_edge
  %commit_write.i = getelementptr inbounds %struct.src_mgr, ptr %mgr, i32 0, i32 8
  %22 = ptrtoint ptr %commit_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %commit_write.i, align 4
  %call8.i = tail call i32 %23(ptr noundef %mgr) #9
  tail call void @kfree(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_enable_s(ptr nocapture noundef readonly %mgr, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %src) #9
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load27 = load i32, ptr %src, align 4
  %bf.clear28 = and i32 %bf.load27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear28)
  %cmp29.not = icmp eq i32 %bf.clear28, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %src_mgr_enbs_src = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 40
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %src_mgr_enbs_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_mgr_enbs_src, align 4
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index, align 4
  %call = tail call i32 %14(ptr noundef %src) #9
  %call9 = tail call i32 %8(ptr noundef %10, i32 noundef %call) #9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_conj, align 4
  tail call void %18(ptr noundef %src) #9
  %inc = add nuw nsw i32 %i.030, 1
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_enable(ptr nocapture noundef readonly %mgr, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %src) #9
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load27 = load i32, ptr %src, align 4
  %bf.clear28 = and i32 %bf.load27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear28)
  %cmp29.not = icmp eq i32 %bf.clear28, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %src_mgr_enb_src = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 41
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %src_mgr_enb_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_mgr_enb_src, align 4
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index, align 4
  %call = tail call i32 %14(ptr noundef %src) #9
  %call9 = tail call i32 %8(ptr noundef %10, i32 noundef %call) #9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_conj, align 4
  tail call void %18(ptr noundef %src) #9
  %inc = add nuw nsw i32 %i.030, 1
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_disable(ptr nocapture noundef readonly %mgr, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %src) #9
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load27 = load i32, ptr %src, align 4
  %bf.clear28 = and i32 %bf.load27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear28)
  %cmp29.not = icmp eq i32 %bf.clear28, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %src_mgr_dsb_src = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 42
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %src_mgr_dsb_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_mgr_dsb_src, align 4
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index, align 4
  %call = tail call i32 %14(ptr noundef %src) #9
  %call9 = tail call i32 %8(ptr noundef %10, i32 noundef %call) #9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_conj, align 4
  tail call void %18(ptr noundef %src) #9
  %inc = add nuw nsw i32 %i.030, 1
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_mgr_commit_write(ptr nocapture noundef readonly %mgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %src_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %src_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_mgr_commit_write, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @src_mgr_destroy(ptr noundef %src_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsc_mgr_uninit(ptr noundef %src_mgr) #9
  tail call void @kfree(ptr noundef %src_mgr) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @srcimp_mgr_create(ptr noundef %hw, ptr nocapture noundef writeonly %rsrcimp_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsrcimp_mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rsrcimp_mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 148) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rsc_mgr_init(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 256, ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.end.error1_crit_edge

if.end.error1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error1

do.body:                                          ; preds = %if.end
  %mgr_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %mgr_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @srcimp_mgr_create.__key, i16 noundef signext 3) #9
  %imap_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %imap_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @srcimp_mgr_create.__key.2, i16 noundef signext 3) #9
  %imappers = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %imappers, ptr %imappers, align 4
  %prev.i = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %imappers, ptr %prev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #12
  %tobool12.not = icmp eq ptr %call7.i.i45, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @rsc_mgr_uninit(ptr noundef nonnull %call7.i.i) #9
  br label %error1

if.end14:                                         ; preds = %do.body
  %list = getelementptr inbounds %struct.imapper, ptr %call7.i.i45, i32 0, i32 4
  %5 = ptrtoint ptr %call7.i.i45 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %call7.i.i45, align 8
  %6 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imappers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %imappers, ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add.exit_crit_edge

if.end14.list_add.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.imapper, ptr %call7.i.i45, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %imappers, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %imappers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end14.list_add.exit_crit_edge
  %init_imap = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %init_imap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i45, ptr %init_imap, align 4
  %init_imap_added = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %init_imap_added, align 8
  %get_srcimp = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %get_srcimp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @get_srcimp_rsc, ptr %get_srcimp, align 4
  %put_srcimp = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %put_srcimp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @put_srcimp_rsc, ptr %put_srcimp, align 8
  %imap_add = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %imap_add to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @srcimp_imap_add, ptr %imap_add, align 4
  %imap_delete = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %imap_delete to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @srcimp_imap_delete, ptr %imap_delete, align 8
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %card16 = getelementptr inbounds %struct.srcimp_mgr, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %card16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %card16, align 8
  %21 = ptrtoint ptr %rsrcimp_mgr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %rsrcimp_mgr, align 4
  br label %cleanup

error1:                                           ; preds = %if.then13, %if.end.error1_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.error1_crit_edge ], [ -12, %if.then13 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error1, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error1 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_srcimp_rsc(ptr noundef %mgr, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %rsrcimp) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !41
  %1 = ptrtoint ptr %rsrcimp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rsrcimp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp687.not = icmp eq i32 %4, 0
  br i1 %cmp687.not, label %if.end.if.end21_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call9 = call i32 @mgr_get_resource(ptr noundef %mgr, i32 noundef 1, ptr noundef nonnull %idx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end20

if.end12:                                         ; preds = %for.body
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %conv13 = trunc i32 %6 to i8
  %arrayidx = getelementptr %struct.srcimp, ptr %call7.i.i, i32 0, i32 1, i32 %i.088
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.088, 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  %cmp6 = icmp ult i32 %inc, %9
  br i1 %cmp6, label %if.end12.for.body_crit_edge, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #9
  %card = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #13
  br label %do.body27

if.end21:                                         ; preds = %if.end12.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.if.end21_crit_edge ], [ %inc, %if.end12.if.end21_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call3) #9
  %idx.i = getelementptr inbounds %struct.srcimp, ptr %call7.i.i, i32 0, i32 1
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
  %call.i = call i32 @rsc_init(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %17, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.do.body27_crit_edge

if.end21.do.body27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end.i:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc, align 4
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 16) #9
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !42

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %imappers30.i = getelementptr inbounds %struct.srcimp, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %imappers30.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %imappers30.i, align 8
  br label %if.then6.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %25 = extractvalue { i32, i1 } %22, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #14
  %imappers.i = getelementptr inbounds %struct.srcimp, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %imappers.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i.i, ptr %imappers.i, align 8
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.if.then6.i_crit_edge, label %if.end25

if.end7.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end7.i.i.i.if.then6.i_crit_edge, %kcalloc.exit.thread.i
  %call15.i = call i32 @rsc_uninit(ptr noundef nonnull %call7.i.i) #9
  br label %do.body27

if.end25:                                         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.rsc, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @srcimp_basic_rsc_ops, ptr %ops.i, align 4
  %ops9.i = getelementptr inbounds %struct.srcimp, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %ops9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @srcimp_ops, ptr %ops9.i, align 4
  %mgr10.i = getelementptr inbounds %struct.srcimp, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %mgr10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mgr, ptr %mgr10.i, align 8
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i.i = load i32, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %idx.i, align 8
  %conv.i.i = zext i8 %32 to i32
  %bf.shl.i.i = shl nuw nsw i32 %conv.i.i, 20
  %bf.clear2.i.i = and i32 %bf.load.i.i, 983055
  %bf.set3.i.i = or i32 %bf.shl.i.i, %bf.clear2.i.i
  store i32 %bf.set3.i.i, ptr %call7.i.i, align 8
  %33 = ptrtoint ptr %rsrcimp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %rsrcimp, align 4
  br label %cleanup

do.body27:                                        ; preds = %if.then6.i, %if.end21.do.body27_crit_edge, %do.end20
  %i.086 = phi i32 [ %i.088, %do.end20 ], [ %i.0.lcssa, %if.end21.do.body27_crit_edge ], [ %i.0.lcssa, %if.then6.i ]
  %err.2 = phi i32 [ %call9, %do.end20 ], [ %call.i, %if.end21.do.body27_crit_edge ], [ -12, %if.then6.i ]
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %i.189 = add i32 %i.086, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.189)
  %cmp4190 = icmp sgt i32 %i.189, -1
  br i1 %cmp4190, label %do.body27.for.body43_crit_edge, label %do.body27.for.end51_crit_edge

do.body27.for.end51_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

do.body27.for.body43_crit_edge:                   ; preds = %do.body27
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %do.body27.for.body43_crit_edge
  %i.191 = phi i32 [ %i.1, %for.body43.for.body43_crit_edge ], [ %i.189, %do.body27.for.body43_crit_edge ]
  %arrayidx46 = getelementptr %struct.srcimp, ptr %call7.i.i, i32 0, i32 1, i32 %i.191
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %35 to i32
  %call48 = call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv47) #9
  %i.1 = add nsw i32 %i.191, -1
  %cmp41 = icmp sgt i32 %i.191, 0
  br i1 %cmp41, label %for.body43.for.body43_crit_edge, label %for.body43.for.end51_crit_edge

for.body43.for.end51_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.end51:                                        ; preds = %for.body43.for.end51_crit_edge, %do.body27.for.end51_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call35) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %for.end51 ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_srcimp_rsc(ptr noundef %mgr, ptr noundef %srcimp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #9
  %0 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load19 = load i32, ptr %srcimp, align 4
  %bf.clear20 = and i32 %bf.load19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear20)
  %cmp521.not = icmp eq i32 %bf.clear20, 0
  br i1 %cmp521.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.srcimp, ptr %srcimp, i32 0, i32 1, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %2 to i32
  %call9 = tail call i32 @mgr_put_resource(ptr noundef %mgr, i32 noundef 1, i32 noundef %conv8) #9
  %inc = add nuw nsw i32 %i.022, 1
  %3 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %srcimp, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp5 = icmp ult i32 %inc, %bf.clear
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #9
  %imappers.i = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 2
  %4 = ptrtoint ptr %imappers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imappers.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %imappers.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %imappers.i, align 4
  %ops.i = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 5
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ops.i, align 4
  %mgr.i = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 4
  %8 = ptrtoint ptr %mgr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mgr.i, align 4
  %call.i = tail call i32 @rsc_uninit(ptr noundef %srcimp) #9
  tail call void @kfree(ptr noundef %srcimp) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_imap_add(ptr noundef %mgr, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #9
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7 = icmp eq i16 %1, 0
  br i1 %cmp7, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %init_imap_added = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 6
  %2 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_imap_added, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %imappers = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 4
  %init_imap = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 5
  %4 = ptrtoint ptr %init_imap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_imap, align 4
  %call9 = tail call i32 @input_mapper_delete(ptr noundef %imappers, ptr noundef %5, ptr noundef nonnull @srcimp_map_op, ptr noundef %mgr) #9
  %6 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %init_imap_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %imappers11 = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 4
  %call12 = tail call i32 @input_mapper_add(ptr noundef %imappers11, ptr noundef %entry1, ptr noundef nonnull @srcimp_map_op, ptr noundef %mgr) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call3) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_imap_delete(ptr noundef %mgr, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #9
  %imappers = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 4
  %call6 = tail call i32 @input_mapper_delete(ptr noundef %imappers, ptr noundef %entry1, ptr noundef nonnull @srcimp_map_op, ptr noundef %mgr) #9
  %0 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %imappers, align 4
  %cmp.i.not = icmp eq ptr %1, %imappers
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %init_imap = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 5
  %2 = ptrtoint ptr %init_imap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_imap, align 4
  %call10 = tail call i32 @input_mapper_add(ptr noundef %imappers, ptr noundef %3, ptr noundef nonnull @srcimp_map_op, ptr noundef %mgr) #9
  %init_imap_added = getelementptr inbounds %struct.srcimp_mgr, ptr %mgr, i32 0, i32 6
  %4 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %init_imap_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call3) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @srcimp_mgr_destroy(ptr noundef %srcimp_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.srcimp_mgr, ptr %srcimp_mgr, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #9
  %imappers = getelementptr inbounds %struct.srcimp_mgr, ptr %srcimp_mgr, i32 0, i32 4
  tail call void @free_input_mapper_list(ptr noundef %imappers) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call2) #9
  %call6 = tail call i32 @rsc_mgr_uninit(ptr noundef %srcimp_mgr) #9
  tail call void @kfree(ptr noundef %srcimp_mgr) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_input_mapper_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgr_get_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgr_put_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_state(ptr nocapture noundef readonly %src, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_state = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %src_set_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_state, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %state) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_bm(ptr nocapture noundef readonly %src, i32 noundef %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_bm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %src_set_bm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_bm, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %bm) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_sf(ptr nocapture noundef readonly %src, i32 noundef %sf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_sf = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %src_set_sf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_sf, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %sf) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_pm(ptr nocapture noundef readonly %src, i32 noundef %pm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_pm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %src_set_pm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_pm, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %pm) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_rom(ptr nocapture noundef readonly %src, i32 noundef %rom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_rom = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %src_set_rom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_rom, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %rom) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_vo(ptr nocapture noundef readonly %src, i32 noundef %vo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_vo = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %src_set_vo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_vo, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %vo) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_st(ptr nocapture noundef readonly %src, i32 noundef %st) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_st = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %src_set_st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_st, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %st) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_bp(ptr nocapture noundef readonly %src, i32 noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_bp = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %src_set_bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_bp, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %bp) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_cisz(ptr nocapture noundef readonly %src, i32 noundef %cisz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_cisz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %src_set_cisz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_cisz, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %cisz) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_ca(ptr nocapture noundef readonly %src, i32 noundef %ca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_ca = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %src_set_ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_ca, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %ca) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_sa(ptr nocapture noundef readonly %src, i32 noundef %sa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_sa = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %src_set_sa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_sa, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %sa) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_la(ptr nocapture noundef readonly %src, i32 noundef %la) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_la = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %src_set_la to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_la, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %la) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_pitch(ptr nocapture noundef readonly %src, i32 noundef %pitch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_pitch = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %src_set_pitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_pitch, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %pitch) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_clear_zbufs(ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_clear_zbufs = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %src_set_clear_zbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_clear_zbufs, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_commit_write(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %src) #9
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %cmp.not = icmp eq i32 %bf.clear, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_get_dirty = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %src_get_dirty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_get_dirty, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %9 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %8(ptr noundef %10) #9
  %11 = load i32, ptr @conj_mask, align 4
  %and = and i32 %11, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dirty.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %src_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_commit_write, align 4
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %index, align 4
  %call9 = tail call i32 %17(ptr noundef %src) #9
  %ctrl_blk11 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %18 = ptrtoint ptr %ctrl_blk11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_blk11, align 4
  %call12 = tail call i32 %13(ptr noundef %1, i32 noundef %call9, ptr noundef %19) #9
  %mode = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp13 = icmp eq i8 %21, 1
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %22 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load1866 = load i32, ptr %src, align 4
  %bf.clear1967 = and i32 %bf.load1866, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear1967)
  %cmp2068.not = icmp eq i32 %bf.clear1967, 0
  br i1 %cmp2068.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %src_set_dirty = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_conj, align 4
  tail call void %26(ptr noundef %src) #9
  %27 = ptrtoint ptr %src_set_dirty to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src_set_dirty, align 4
  %29 = ptrtoint ptr %ctrl_blk11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_blk11, align 4
  %call27 = tail call i32 %28(ptr noundef %30, i32 noundef %dirty.0) #9
  %31 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src_commit_write, align 4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %index31 = getelementptr inbounds %struct.rsc_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %index31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %index31, align 4
  %call33 = tail call i32 %36(ptr noundef %src) #9
  %37 = ptrtoint ptr %ctrl_blk11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_blk11, align 4
  %call36 = tail call i32 %32(ptr noundef %1, i32 noundef %call33, ptr noundef %38) #9
  %inc = add nuw nsw i32 %i.069, 1
  %39 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load18 = load i32, ptr %src, align 4
  %bf.clear19 = and i32 %bf.load18, 15
  %cmp20 = icmp ult i32 %inc, %bf.clear19
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void %43(ptr noundef %src) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_get_ca(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_get_ca = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %src_get_ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_get_ca, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %index, align 4
  %call = tail call i32 %7(ptr noundef %src) #9
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %call5 = tail call i32 %3(ptr noundef %1, i32 noundef %call, ptr noundef %9) #9
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_init(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @src_default_config, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %3(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @src_next_interleave(ptr nocapture noundef readonly %src) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intlv = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 1
  %0 = ptrtoint ptr %intlv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intlv, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_default_config_memrd(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_state = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %src_set_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_state, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 0) #9
  %src_set_bm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %src_set_bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_set_bm, align 4
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %call5 = tail call i32 %7(ptr noundef %9, i32 noundef 1) #9
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp144 = icmp ugt i32 %bf.clear, 1
  br i1 %cmp144, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %msr.0146 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %bf.clear, %entry.for.body_crit_edge ]
  %rsr.0145 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add nuw nsw i32 %rsr.0145, 1
  %shr = lshr i32 %msr.0146, 1
  %cmp = icmp ugt i32 %msr.0146, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rsr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %src_set_rsr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %src_set_rsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src_set_rsr, align 4
  %13 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_blk, align 4
  %call9 = tail call i32 %12(ptr noundef %14, i32 noundef %rsr.0.lcssa) #9
  %src_set_sf = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %src_set_sf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src_set_sf, align 4
  %17 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_blk, align 4
  %call12 = tail call i32 %16(ptr noundef %18, i32 noundef 1) #9
  %src_set_wr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %src_set_wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src_set_wr, align 4
  %21 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_blk, align 4
  %call15 = tail call i32 %20(ptr noundef %22, i32 noundef 0) #9
  %src_set_pm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %src_set_pm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src_set_pm, align 4
  %25 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_blk, align 4
  %call18 = tail call i32 %24(ptr noundef %26, i32 noundef 0) #9
  %src_set_rom = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %src_set_rom to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src_set_rom, align 4
  %29 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_blk, align 4
  %call21 = tail call i32 %28(ptr noundef %30, i32 noundef 0) #9
  %src_set_vo = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %src_set_vo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src_set_vo, align 4
  %33 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_blk, align 4
  %call24 = tail call i32 %32(ptr noundef %34, i32 noundef 0) #9
  %src_set_st = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %src_set_st to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src_set_st, align 4
  %37 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_blk, align 4
  %call27 = tail call i32 %36(ptr noundef %38, i32 noundef 0) #9
  %src_set_ilsz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 24
  %39 = ptrtoint ptr %src_set_ilsz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src_set_ilsz, align 4
  %41 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_blk, align 4
  %multi = getelementptr inbounds %struct.src, ptr %src, i32 0, i32 3
  %43 = ptrtoint ptr %multi to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %multi, align 4
  %conv = zext i8 %44 to i32
  %sub = add nsw i32 %conv, -1
  %call30 = tail call i32 %40(ptr noundef %42, i32 noundef %sub) #9
  %src_set_cisz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 26
  %45 = ptrtoint ptr %src_set_cisz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %src_set_cisz, align 4
  %47 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_blk, align 4
  %call33 = tail call i32 %46(ptr noundef %48, i32 noundef 128) #9
  %src_set_sa = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 28
  %49 = ptrtoint ptr %src_set_sa to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src_set_sa, align 4
  %51 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl_blk, align 4
  %call36 = tail call i32 %50(ptr noundef %52, i32 noundef 0) #9
  %src_set_la = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 29
  %53 = ptrtoint ptr %src_set_la to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %src_set_la, align 4
  %55 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl_blk, align 4
  %call39 = tail call i32 %54(ptr noundef %56, i32 noundef 4096) #9
  %src_set_ca = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 27
  %57 = ptrtoint ptr %src_set_ca to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %src_set_ca, align 4
  %59 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_blk, align 4
  %call42 = tail call i32 %58(ptr noundef %60, i32 noundef 128) #9
  %src_set_pitch = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 30
  %61 = ptrtoint ptr %src_set_pitch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %src_set_pitch, align 4
  %63 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctrl_blk, align 4
  %call45 = tail call i32 %62(ptr noundef %64, i32 noundef 16777216) #9
  %src_set_clear_zbufs = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 31
  %65 = ptrtoint ptr %src_set_clear_zbufs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %src_set_clear_zbufs, align 4
  %67 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl_blk, align 4
  %call48 = tail call i32 %66(ptr noundef %68, i32 noundef 1) #9
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  tail call void %72(ptr noundef %src) #9
  %src_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 34
  %73 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %src_commit_write, align 4
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %index, align 4
  %call54 = tail call i32 %78(ptr noundef %src) #9
  %79 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl_blk, align 4
  %call57 = tail call i32 %74(ptr noundef %1, i32 noundef %call54, ptr noundef %80) #9
  %81 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load60147 = load i32, ptr %src, align 4
  %bf.clear61148 = and i32 %bf.load60147, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear61148)
  %cmp62149.not = icmp eq i32 %bf.clear61148, 0
  br i1 %cmp62149.not, label %for.end.for.end83_crit_edge, label %for.end.for.body64_crit_edge

for.end.for.body64_crit_edge:                     ; preds = %for.end
  br label %for.body64

for.end.for.end83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.end.for.body64_crit_edge
  %msr.1150 = phi i32 [ %inc82, %for.body64.for.body64_crit_edge ], [ 1, %for.end.for.body64_crit_edge ]
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %next_conj, align 4
  tail call void %85(ptr noundef %src) #9
  %86 = ptrtoint ptr %src_set_pitch to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %src_set_pitch, align 4
  %88 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctrl_blk, align 4
  %call71 = tail call i32 %87(ptr noundef %89, i32 noundef 16777216) #9
  %90 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %src_commit_write, align 4
  %92 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops, align 4
  %index75 = getelementptr inbounds %struct.rsc_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %index75 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %index75, align 4
  %call77 = tail call i32 %95(ptr noundef %src) #9
  %96 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctrl_blk, align 4
  %call80 = tail call i32 %91(ptr noundef %1, i32 noundef %call77, ptr noundef %97) #9
  %inc82 = add nuw nsw i32 %msr.1150, 1
  %98 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load60 = load i32, ptr %src, align 4
  %bf.clear61 = and i32 %bf.load60, 15
  %cmp62 = icmp ult i32 %inc82, %bf.clear61
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.body64.for.end83_crit_edge

for.body64.for.end83_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

for.end83:                                        ; preds = %for.body64.for.end83_crit_edge, %for.end.for.end83_crit_edge
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  tail call void %102(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_default_config_memwr(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_state = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %src_set_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_state, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 0) #9
  %src_set_bm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %src_set_bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_set_bm, align 4
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %call5 = tail call i32 %7(ptr noundef %9, i32 noundef 1) #9
  %src_set_rsr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %src_set_rsr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src_set_rsr, align 4
  %12 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_blk, align 4
  %call8 = tail call i32 %11(ptr noundef %13, i32 noundef 0) #9
  %src_set_sf = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %src_set_sf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src_set_sf, align 4
  %16 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_blk, align 4
  %call11 = tail call i32 %15(ptr noundef %17, i32 noundef 1) #9
  %src_set_wr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %src_set_wr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_set_wr, align 4
  %20 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_blk, align 4
  %call14 = tail call i32 %19(ptr noundef %21, i32 noundef 1) #9
  %src_set_pm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %src_set_pm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_set_pm, align 4
  %24 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_blk, align 4
  %call17 = tail call i32 %23(ptr noundef %25, i32 noundef 0) #9
  %src_set_rom = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %src_set_rom to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src_set_rom, align 4
  %28 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_blk, align 4
  %call20 = tail call i32 %27(ptr noundef %29, i32 noundef 0) #9
  %src_set_vo = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %src_set_vo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src_set_vo, align 4
  %32 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_blk, align 4
  %call23 = tail call i32 %31(ptr noundef %33, i32 noundef 0) #9
  %src_set_st = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 22
  %34 = ptrtoint ptr %src_set_st to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src_set_st, align 4
  %36 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl_blk, align 4
  %call26 = tail call i32 %35(ptr noundef %37, i32 noundef 0) #9
  %src_set_ilsz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 24
  %38 = ptrtoint ptr %src_set_ilsz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src_set_ilsz, align 4
  %40 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_blk, align 4
  %call29 = tail call i32 %39(ptr noundef %41, i32 noundef 0) #9
  %src_set_cisz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 26
  %42 = ptrtoint ptr %src_set_cisz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src_set_cisz, align 4
  %44 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl_blk, align 4
  %call32 = tail call i32 %43(ptr noundef %45, i32 noundef 128) #9
  %src_set_sa = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %src_set_sa to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %src_set_sa, align 4
  %48 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl_blk, align 4
  %call35 = tail call i32 %47(ptr noundef %49, i32 noundef 0) #9
  %src_set_la = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 29
  %50 = ptrtoint ptr %src_set_la to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src_set_la, align 4
  %52 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl_blk, align 4
  %call38 = tail call i32 %51(ptr noundef %53, i32 noundef 4096) #9
  %src_set_ca = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 27
  %54 = ptrtoint ptr %src_set_ca to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %src_set_ca, align 4
  %56 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl_blk, align 4
  %call41 = tail call i32 %55(ptr noundef %57, i32 noundef 128) #9
  %src_set_pitch = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 30
  %58 = ptrtoint ptr %src_set_pitch to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src_set_pitch, align 4
  %60 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctrl_blk, align 4
  %call44 = tail call i32 %59(ptr noundef %61, i32 noundef 16777216) #9
  %src_set_clear_zbufs = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 31
  %62 = ptrtoint ptr %src_set_clear_zbufs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %src_set_clear_zbufs, align 4
  %64 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl_blk, align 4
  %call47 = tail call i32 %63(ptr noundef %65, i32 noundef 1) #9
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void %69(ptr noundef %src) #9
  %src_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 34
  %70 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %src_commit_write, align 4
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %index, align 4
  %call53 = tail call i32 %75(ptr noundef %src) #9
  %76 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl_blk, align 4
  %call56 = tail call i32 %71(ptr noundef %1, i32 noundef %call53, ptr noundef %77) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_default_config_arcrw(ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %src_set_state = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %src_set_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_set_state, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 0) #9
  %src_set_bm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %src_set_bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_set_bm, align 4
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %call5 = tail call i32 %7(ptr noundef %9, i32 noundef 0) #9
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %src, align 4
  %bf.clear = and i32 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp132 = icmp ugt i32 %bf.clear, 1
  br i1 %cmp132, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %msr.0134 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %bf.clear, %entry.for.body_crit_edge ]
  %rsr.0133 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add nuw nsw i32 %rsr.0133, 1
  %shr = lshr i32 %msr.0134, 1
  %cmp = icmp ugt i32 %msr.0134, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rsr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %src_set_rsr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %src_set_rsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src_set_rsr, align 4
  %13 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_blk, align 4
  %call9 = tail call i32 %12(ptr noundef %14, i32 noundef %rsr.0.lcssa) #9
  %src_set_sf = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %src_set_sf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src_set_sf, align 4
  %17 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_blk, align 4
  %call12 = tail call i32 %16(ptr noundef %18, i32 noundef 4) #9
  %src_set_wr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %src_set_wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src_set_wr, align 4
  %21 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_blk, align 4
  %call15 = tail call i32 %20(ptr noundef %22, i32 noundef 0) #9
  %src_set_pm = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %src_set_pm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src_set_pm, align 4
  %25 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_blk, align 4
  %call18 = tail call i32 %24(ptr noundef %26, i32 noundef 0) #9
  %src_set_rom = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %src_set_rom to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src_set_rom, align 4
  %29 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_blk, align 4
  %call21 = tail call i32 %28(ptr noundef %30, i32 noundef 0) #9
  %src_set_vo = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %src_set_vo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src_set_vo, align 4
  %33 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_blk, align 4
  %call24 = tail call i32 %32(ptr noundef %34, i32 noundef 0) #9
  %src_set_st = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %src_set_st to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src_set_st, align 4
  %37 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_blk, align 4
  %call27 = tail call i32 %36(ptr noundef %38, i32 noundef 0) #9
  %src_set_ilsz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 24
  %39 = ptrtoint ptr %src_set_ilsz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src_set_ilsz, align 4
  %41 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_blk, align 4
  %call30 = tail call i32 %40(ptr noundef %42, i32 noundef 0) #9
  %src_set_cisz = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %src_set_cisz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src_set_cisz, align 4
  %45 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_blk, align 4
  %call33 = tail call i32 %44(ptr noundef %46, i32 noundef 128) #9
  %src_set_sa = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 28
  %47 = ptrtoint ptr %src_set_sa to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src_set_sa, align 4
  %49 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_blk, align 4
  %call36 = tail call i32 %48(ptr noundef %50, i32 noundef 0) #9
  %src_set_la = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 29
  %51 = ptrtoint ptr %src_set_la to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %src_set_la, align 4
  %53 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_blk, align 4
  %call39 = tail call i32 %52(ptr noundef %54, i32 noundef 4096) #9
  %src_set_ca = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 27
  %55 = ptrtoint ptr %src_set_ca to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src_set_ca, align 4
  %57 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctrl_blk, align 4
  %call42 = tail call i32 %56(ptr noundef %58, i32 noundef 128) #9
  %src_set_pitch = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 30
  %59 = ptrtoint ptr %src_set_pitch to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src_set_pitch, align 4
  %61 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl_blk, align 4
  %call45 = tail call i32 %60(ptr noundef %62, i32 noundef 16777216) #9
  %src_set_clear_zbufs = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 31
  %63 = ptrtoint ptr %src_set_clear_zbufs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %src_set_clear_zbufs, align 4
  %65 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctrl_blk, align 4
  %call48 = tail call i32 %64(ptr noundef %66, i32 noundef 1) #9
  %src_get_dirty = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 36
  %67 = ptrtoint ptr %src_get_dirty to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %src_get_dirty, align 4
  %69 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl_blk, align 4
  %call51 = tail call i32 %68(ptr noundef %70) #9
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  tail call void %74(ptr noundef %src) #9
  %75 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load56135 = load i32, ptr %src, align 4
  %bf.clear57136 = and i32 %bf.load56135, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear57136)
  %cmp58137.not = icmp eq i32 %bf.clear57136, 0
  br i1 %cmp58137.not, label %for.end.for.end75_crit_edge, label %for.body59.lr.ph

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.body59.lr.ph:                                 ; preds = %for.end
  %src_set_dirty = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 32
  %src_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 34
  br label %for.body59

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.body59.lr.ph
  %msr.1138 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc74, %for.body59.for.body59_crit_edge ]
  %76 = ptrtoint ptr %src_set_dirty to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %src_set_dirty, align 4
  %78 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl_blk, align 4
  %call62 = tail call i32 %77(ptr noundef %79, i32 noundef %call51) #9
  %80 = ptrtoint ptr %src_commit_write to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %src_commit_write, align 4
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %index, align 4
  %call66 = tail call i32 %85(ptr noundef %src) #9
  %86 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl_blk, align 4
  %call69 = tail call i32 %81(ptr noundef %1, i32 noundef %call66, ptr noundef %87) #9
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %next_conj, align 4
  tail call void %91(ptr noundef %src) #9
  %inc74 = add nuw nsw i32 %msr.1138, 1
  %92 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load56 = load i32, ptr %src, align 4
  %bf.clear57 = and i32 %bf.load56, 15
  %cmp58 = icmp ult i32 %inc74, %bf.clear57
  br i1 %cmp58, label %for.body59.for.body59_crit_edge, label %for.body59.for.end75_crit_edge

for.body59.for.end75_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59

for.end75:                                        ; preds = %for.body59.for.end75_crit_edge, %for.end.for.end75_crit_edge
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  tail call void %96(ptr noundef %src) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @srcimp_master(ptr nocapture noundef %rsc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %idx = getelementptr inbounds %struct.srcimp, ptr %rsc, i32 0, i32 1
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
define internal void @srcimp_next_conj(ptr nocapture noundef %rsc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @srcimp_index(ptr nocapture noundef readonly %rsc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 4095
  %arrayidx = getelementptr %struct.srcimp, ptr %rsc, i32 0, i32 1, i32 %bf.clear
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_map(ptr noundef %srcimp, ptr noundef %src, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsc, ptr %srcimp, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %srcimp) #9
  %ops4 = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %4 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %src) #9
  %ops7 = getelementptr inbounds %struct.rsc, ptr %input, i32 0, i32 3
  %8 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %input) #9
  %12 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load63 = load i32, ptr %srcimp, align 4
  %bf.clear64 = and i32 %bf.load63, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear64)
  %cmp65.not = icmp eq i32 %bf.clear64, 0
  br i1 %cmp65.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %imappers = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 2
  %mgr = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 4
  %mapped = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %imappers, align 4
  %arrayidx = getelementptr %struct.imapper, ptr %14, i32 %i.066
  %15 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops7, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %output_slot, align 4
  %call = tail call i32 %18(ptr noundef %input) #9
  %conv = trunc i32 %call to i16
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops4, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %index, align 4
  %call14 = tail call i32 %23(ptr noundef %src) #9
  %conv15 = trunc i32 %call14 to i16
  %user = getelementptr %struct.imapper, ptr %14, i32 %i.066, i32 1
  %24 = ptrtoint ptr %user to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv15, ptr %user, align 2
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %index18 = getelementptr inbounds %struct.rsc_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %index18, align 4
  %call20 = tail call i32 %28(ptr noundef %srcimp) #9
  %conv21 = trunc i32 %call20 to i16
  %addr = getelementptr %struct.imapper, ptr %14, i32 %i.066, i32 2
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv21, ptr %addr, align 4
  %30 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mgr, align 4
  %imap_add = getelementptr inbounds %struct.srcimp_mgr, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %imap_add to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %imap_add, align 4
  %call23 = tail call i32 %33(ptr noundef %31, ptr noundef %arrayidx) #9
  %shl = shl nuw i32 1, %i.066
  %34 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mapped, align 4
  %or = or i32 %35, %shl
  store i32 %or, ptr %mapped, align 4
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_conj, align 4
  tail call void %39(ptr noundef %srcimp) #9
  %40 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops7, align 4
  %next_conj28 = getelementptr inbounds %struct.rsc_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %next_conj28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next_conj28, align 4
  tail call void %43(ptr noundef %input) #9
  %inc = add nuw nsw i32 %i.066, 1
  %44 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load = load i32, ptr %srcimp, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void %48(ptr noundef %srcimp) #9
  %49 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops7, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  tail call void %52(ptr noundef %input) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_unmap(ptr nocapture noundef %srcimp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load14 = load i32, ptr %srcimp, align 4
  %bf.clear15 = and i32 %bf.load14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear15)
  %cmp16.not = icmp eq i32 %bf.clear15, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapped = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 3
  %mgr = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 4
  %imappers = getelementptr inbounds %struct.srcimp, ptr %srcimp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mapped, align 4
  %shl = shl nuw i32 1, %i.017
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mgr, align 4
  %imap_delete = getelementptr inbounds %struct.srcimp_mgr, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %imap_delete to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %imap_delete, align 4
  %7 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %imappers, align 4
  %arrayidx = getelementptr %struct.imapper, ptr %8, i32 %i.017
  %call = tail call i32 %6(ptr noundef %4, ptr noundef %arrayidx) #9
  %neg = xor i32 %shl, -1
  %9 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapped, align 4
  %and4 = and i32 %10, %neg
  store i32 %and4, ptr %mapped, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %11 = ptrtoint ptr %srcimp to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %srcimp, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mapper_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_map_op(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw3 = getelementptr inbounds %struct.rsc_mgr, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw3, align 4
  %srcimp_mgr_set_imaparc = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %srcimp_mgr_set_imaparc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srcimp_mgr_set_imaparc, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry1, align 4
  %conv = zext i16 %7 to i32
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %conv) #9
  %srcimp_mgr_set_imapuser = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %srcimp_mgr_set_imapuser to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srcimp_mgr_set_imapuser, align 4
  %10 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_blk, align 4
  %user = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 1
  %12 = ptrtoint ptr %user to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %user, align 2
  %conv5 = zext i16 %13 to i32
  %call6 = tail call i32 %9(ptr noundef %11, i32 noundef %conv5) #9
  %srcimp_mgr_set_imapnxt = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 48
  %14 = ptrtoint ptr %srcimp_mgr_set_imapnxt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srcimp_mgr_set_imapnxt, align 4
  %16 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_blk, align 4
  %next = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 3
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %next, align 2
  %conv8 = zext i16 %19 to i32
  %call9 = tail call i32 %15(ptr noundef %17, i32 noundef %conv8) #9
  %srcimp_mgr_set_imapaddr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 49
  %20 = ptrtoint ptr %srcimp_mgr_set_imapaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %srcimp_mgr_set_imapaddr, align 4
  %22 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_blk, align 4
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr, align 4
  %conv11 = zext i16 %25 to i32
  %call12 = tail call i32 %21(ptr noundef %23, i32 noundef %conv11) #9
  %srcimp_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 50
  %26 = ptrtoint ptr %srcimp_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %srcimp_mgr_commit_write, align 4
  %28 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw3, align 4
  %30 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_blk, align 4
  %call15 = tail call i32 %27(ptr noundef %29, ptr noundef %31) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mapper_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @src_mgr_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 557, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @srcimp_mgr_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 839, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @srcimp_mgr_create.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 840, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @conj_mask, !10, !"conj_mask", i1 false, i1 false}
!10 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 22, i32 21}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 430, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @get_src_rsc._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @get_src_rsc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @src_rsc_ops, !20, !"src_rsc_ops", i1 false, i1 false}
!20 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 334, i32 33}
!21 = !{ptr @src_default_config, !22, !"src_default_config", i1 false, i1 false}
!22 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 28, i32 14}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 737, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @get_srcimp_rsc._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @get_srcimp_rsc._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @srcimp_basic_rsc_ops, !29, !"srcimp_basic_rsc_ops", i1 false, i1 false}
!29 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 609, i32 29}
!30 = !{ptr @srcimp_ops, !31, !"srcimp_ops", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/ctsrc.c", i32 660, i32 36}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2000}
