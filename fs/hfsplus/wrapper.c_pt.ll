; ModuleID = '/llk/IR_all_yes/fs/hfsplus/wrapper.c_pt.bc'
source_filename = "../fs/hfsplus/wrapper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.34 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.hfsplus_vh = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [8 x i32], %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@hfsplus_read_wrapper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014hfsplus: invalid secondary volume header\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hfsplus_read_wrapper\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/hfsplus/wrapper.c\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_read_wrapper._entry_ptr = internal global ptr @hfsplus_read_wrapper._entry, section ".printk_index", align 4
@hfsplus_read_wrapper._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfsplus: unable to set blocksize to %u!\0A\00", [53 x i8] zeroinitializer }, align 32
@hfsplus_read_wrapper._entry_ptr.5 = internal global ptr @hfsplus_read_wrapper._entry.3, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@hfsplus_get_last_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013hfsplus: invalid session number or type of track\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hfsplus_get_last_session\00", [39 x i8] zeroinitializer }, align 32
@hfsplus_get_last_session._entry_ptr = internal global ptr @hfsplus_get_last_session._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16964, i64 18475, i64 18520]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 18475, i64 18520]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 229, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 251, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [24 x i8] c"../fs/hfsplus/wrapper.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 146, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @hfsplus_get_last_session._entry, ptr @hfsplus_get_last_session._entry_ptr, ptr @hfsplus_read_wrapper._entry, ptr @hfsplus_read_wrapper._entry.3, ptr @hfsplus_read_wrapper._entry_ptr, ptr @hfsplus_read_wrapper._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_read_wrapper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_read_wrapper._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_get_last_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_submit_bio(ptr nocapture noundef readonly %sb, i64 noundef %sector, ptr noundef %buf, ptr noundef writeonly %data, i32 noundef %op, i32 noundef %op_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.hfsplus_min_io_size.exit_crit_edge, label %land.lhs.true.i.i.i

entry.hfsplus_min_io_size.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfsplus_min_io_size.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i.i.i = icmp eq i32 %5, 0
  %.op = and i32 %5, 65535
  %phi.bo = select i1 %tobool2.not.i.i.i, i32 512, i32 %.op
  br label %hfsplus_min_io_size.exit

hfsplus_min_io_size.exit:                         ; preds = %land.lhs.true.i.i.i, %entry.hfsplus_min_io_size.exit_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %entry.hfsplus_min_io_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i.i ]
  %6 = tail call i32 @llvm.umax.i32(i32 %retval1.0.i.i.i, i32 512)
  %conv = zext i32 %6 to i64
  %shl = shl i64 %sector, 9
  %sub = add nuw nsw i64 %conv, 4294967295
  %and = and i64 %sub, %shl
  %conv1 = trunc i64 %and to i32
  %shr = lshr i64 %conv, 9
  %neg = sub nsw i64 0, %shr
  %and3 = and i64 %neg, %sector
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #6
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %and3, ptr %bi_iter, align 8
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %11, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i, label %hfsplus_min_io_size.exit.bio_set_dev.exit_crit_edge, label %if.then.i

hfsplus_min_io_size.exit.bio_set_dev.exit_crit_edge: ; preds = %hfsplus_min_io_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %hfsplus_min_io_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i8.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %hfsplus_min_io_size.exit.bio_set_dev.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #6
  %or.i = or i32 %op_flags, %op
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %bi_opf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp.not = icmp eq i32 %op, 1
  %tobool.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %bio_set_dev.exit.while.body.preheader_crit_edge, label %if.then

bio_set_dev.exit.while.body.preheader_crit_edge:  ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

if.then:                                          ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %conv1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %data, align 4
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then, %bio_set_dev.exit.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %buf.addr.073 = phi ptr [ %add.ptr24, %cleanup.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %io_size.072 = phi i64 [ %sub23, %cleanup.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %18 = ptrtoint ptr %buf.addr.073 to i32
  %and8 = and i32 %18, 4095
  %sub9 = sub nuw nsw i32 4096, %and8
  %conv10 = trunc i64 %io_size.072 to i32
  %19 = tail call i32 @llvm.umin.i32(i32 %sub9, i32 %conv10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub13 = add i32 %18, 1073741824
  %shr14 = lshr i32 %sub13, 12
  %add.ptr16 = getelementptr %struct.page, ptr %20, i32 %shr14
  %call17 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %add.ptr16, i32 noundef %19, i32 noundef %and8) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %19)
  %cmp18.not = icmp eq i32 %call17, %19
  br i1 %cmp18.not, label %cleanup, label %out.thread

out.thread:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bio_put(ptr noundef %call.i) #6
  br label %21

cleanup:                                          ; preds = %while.body
  %conv22 = zext i32 %19 to i64
  %sub23 = sub i64 %io_size.072, %conv22
  %add.ptr24 = getelementptr i8, ptr %buf.addr.073, i32 %19
  %cmp6.not = icmp eq i64 %sub23, 0
  br i1 %cmp6.not, label %out, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

out:                                              ; preds = %cleanup
  %call26 = tail call i32 @submit_bio_wait(ptr noundef %call.i) #6
  tail call void @bio_put(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %out._crit_edge, label %out._crit_edge74

out._crit_edge74:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %22

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

21:                                               ; preds = %out._crit_edge, %out.thread
  %ret.171 = phi i32 [ -5, %out.thread ], [ %call26, %out._crit_edge ]
  br label %22

22:                                               ; preds = %21, %out._crit_edge74
  %23 = phi i32 [ %ret.171, %21 ], [ 0, %out._crit_edge74 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_read_wrapper(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %te.i = alloca %struct.cdrom_tocentry, align 4
  %ms_info.i = alloca %struct.cdrom_multisession, align 8
  %part_start = alloca i64, align 8
  %part_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %part_start) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %part_size) #6
  %call1 = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk.i, align 8
  %cdi1.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %cdi1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdi1.i, align 8
  %8 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %part_start, align 8
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %11 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %part_size, align 8
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %session.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %session.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i193 = icmp sgt i32 %15, -1
  br i1 %cmp.i193, label %if.then.i194, label %if.else.i

if.then.i194:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %te.i) #6
  %16 = call ptr @memset(ptr %te.i, i32 255, i32 12)
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i194.hfsplus_get_last_session.exit_crit_edge, label %if.end.i196

if.then.i194.hfsplus_get_last_session.exit_crit_edge: ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfsplus_get_last_session.exit

if.end.i196:                                      ; preds = %if.then.i194
  %conv.i = trunc i32 %15 to i8
  %17 = ptrtoint ptr %te.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %te.i, align 4
  %cdte_format.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 2
  %18 = ptrtoint ptr %cdte_format.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cdte_format.i, align 2
  %call7.i195 = call i32 @cdrom_read_tocentry(ptr noundef nonnull %7, ptr noundef nonnull %te.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i195)
  %tobool8.not.i = icmp eq i32 %call7.i195, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.end.i196.do.end.i_crit_edge

if.end.i196.do.end.i_crit_edge:                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i196
  %cdte_ctrl.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 1
  %19 = ptrtoint ptr %cdte_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %cdte_ctrl.i, align 1
  %20 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp10.not.not.i = icmp eq i8 %20, 0
  br i1 %cmp10.not.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end14.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i196.do.end.i_crit_edge
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %hfsplus_get_last_session.exit

if.end14.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %cdte_addr.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 3
  %21 = ptrtoint ptr %cdte_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cdte_addr.i, align 4
  %conv15.i = sext i32 %22 to i64
  %shl.i = shl nsw i64 %conv15.i, 2
  %23 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i, ptr %part_start, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #6
  br label %if.end5

if.else.i:                                        ; preds = %if.end
  %tobool16.not.i = icmp eq ptr %7, null
  br i1 %tobool16.not.i, label %if.else.i.if.end5_crit_edge, label %if.then17.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then17.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ms_info.i) #6
  %24 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -16646145, ptr %ms_info.i, align 8, !annotation !24
  %call18.i = call i32 @cdrom_multisession(ptr noundef nonnull %7, ptr noundef nonnull %ms_info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %land.lhs.true.i, label %if.then17.i.if.end26.i_crit_edge

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.then17.i
  %xa_flag.i = getelementptr inbounds %struct.cdrom_multisession, ptr %ms_info.i, i32 0, i32 1
  %25 = ptrtoint ptr %xa_flag.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xa_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not.i = icmp eq i8 %26, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %if.then23.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ms_info.i, align 8
  %conv24.i = sext i32 %28 to i64
  %shl25.i = shl nsw i64 %conv24.i, 2
  %29 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shl25.i, ptr %part_start, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end26.i_crit_edge, %if.then17.i.if.end26.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ms_info.i) #6
  br label %if.end5

hfsplus_get_last_session.exit:                    ; preds = %do.end.i, %if.then.i194.hfsplus_get_last_session.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end26.i, %if.else.i.if.end5_crit_edge, %if.end14.i
  %30 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.end5.if.end8.i_crit_edge, label %land.lhs.true.i.i.i

if.end5.if.end8.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

land.lhs.true.i.i.i:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 37, i32 9
  %34 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i.i.i = icmp eq i32 %35, 0
  %.op235 = and i32 %35, 65535
  %phi.bo234 = select i1 %tobool2.not.i.i.i, i32 512, i32 %.op235
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i.i.i, %if.end5.if.end8.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %if.end5.if.end8.i_crit_edge ], [ %phi.bo234, %land.lhs.true.i.i.i ]
  %36 = call i32 @llvm.umax.i32(i32 %retval1.0.i.i.i, i32 512)
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i, ptr %1, align 8
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cleanup_crit_edge, label %if.end11

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  %38 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i.i201 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %bd_queue.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bd_queue.i.i.i201, align 4
  %tobool.not.i.i.i202 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i202, label %if.end11.if.end8.i190_crit_edge, label %land.lhs.true.i.i.i206

if.end11.if.end8.i190_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i190

land.lhs.true.i.i.i206:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %logical_block_size.i.i.i203 = getelementptr inbounds %struct.request_queue, ptr %41, i32 0, i32 37, i32 9
  %42 = ptrtoint ptr %logical_block_size.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %logical_block_size.i.i.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i.i.i204 = icmp eq i32 %43, 0
  %.op = and i32 %43, 65535
  %phi.bo = select i1 %tobool2.not.i.i.i204, i32 512, i32 %.op
  br label %if.end8.i190

if.end8.i190:                                     ; preds = %land.lhs.true.i.i.i206, %if.end11.if.end8.i190_crit_edge
  %retval1.0.i.i.i207 = phi i32 [ 512, %if.end11.if.end8.i190_crit_edge ], [ %phi.bo, %land.lhs.true.i.i.i206 ]
  %44 = call i32 @llvm.umax.i32(i32 %retval1.0.i.i.i207, i32 512)
  %call9.i189 = call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #10
  %s_backup_vhdr_buf = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i189, ptr %s_backup_vhdr_buf, align 8
  %tobool16.not = icmp eq ptr %call9.i189, null
  br i1 %tobool16.not, label %if.end8.i190.out_free_vhdr_crit_edge, label %reread.preheader

if.end8.i190.out_free_vhdr_crit_edge:             ; preds = %if.end8.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_vhdr

reread.preheader:                                 ; preds = %if.end8.i190
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %part_start, align 8
  %add227 = add i64 %47, 2
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %call20228 = call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %add227, ptr noundef %49, ptr noundef %s_vhdr, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20228)
  %tobool21.not229 = icmp eq i32 %call20228, 0
  br i1 %tobool21.not229, label %reread.preheader.if.end23_crit_edge, label %reread.preheader.out_free_backup_vhdr_crit_edge

reread.preheader.out_free_backup_vhdr_crit_edge:  ; preds = %reread.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

reread.preheader.if.end23_crit_edge:              ; preds = %reread.preheader
  br label %if.end23

if.end23:                                         ; preds = %reread.backedge.if.end23_crit_edge, %reread.preheader.if.end23_crit_edge
  %50 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_vhdr, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %51, align 1
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i16 %53, label %sw.default [
    i16 18520, label %sw.bb
    i16 18475, label %if.end23.sw.epilog_crit_edge
    i16 16964, label %sw.bb26
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 33
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #6
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  %add.ptr.i = getelementptr i8, ptr %51, i32 124
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %56, label %sw.bb26.out_free_backup_vhdr_crit_edge [
    i16 18475, label %sw.bb26.if.end.i213_crit_edge
    i16 18520, label %sw.bb26.if.end.i213_crit_edge236
  ]

sw.bb26.if.end.i213_crit_edge236:                 ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i213

sw.bb26.if.end.i213_crit_edge:                    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i213

sw.bb26.out_free_backup_vhdr_crit_edge:           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

if.end.i213:                                      ; preds = %sw.bb26.if.end.i213_crit_edge, %sw.bb26.if.end.i213_crit_edge236
  %add.ptr5.i = getelementptr i8, ptr %51, i32 10
  %58 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr5.i, align 2
  %60 = and i16 %59, -32256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32256, i16 %60)
  %.not.i = icmp eq i16 %60, -32256
  br i1 %.not.i, label %if.end11.i, label %if.end.i213.out_free_backup_vhdr_crit_edge

if.end.i213.out_free_backup_vhdr_crit_edge:       ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

if.end11.i:                                       ; preds = %if.end.i213
  %add.ptr12.i = getelementptr i8, ptr %51, i32 20
  %61 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %62)
  %cmp14.i = icmp ugt i32 %62, 511
  %rem.i = and i32 %62, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool19.not.i = icmp eq i32 %rem.i, 0
  %or.cond42.i = and i1 %cmp14.i, %tobool19.not.i
  br i1 %or.cond42.i, label %if.end31, label %if.end11.i.out_free_backup_vhdr_crit_edge

if.end11.i.out_free_backup_vhdr_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

if.end31:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr22.i = getelementptr i8, ptr %51, i32 28
  %63 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr22.i, align 2
  %add.ptr23.i = getelementptr i8, ptr %51, i32 126
  %65 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %add.ptr23.i, align 1
  %shr.i = lshr i32 %66, 16
  %shr = lshr i32 %62, 9
  %conv32 = zext i16 %64 to i64
  %conv33 = zext i32 %shr.i to i64
  %conv35 = zext i32 %shr to i64
  %mul = mul nuw nsw i64 %conv33, %conv35
  %67 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %part_start, align 8
  %add36 = add i64 %68, %conv32
  %add37 = add i64 %add36, %mul
  store i64 %add37, ptr %part_start, align 8
  %conv27.i.mask = and i32 %66, 65535
  %conv38 = zext i32 %conv27.i.mask to i64
  %mul41 = mul nuw nsw i64 %conv38, %conv35
  %69 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %mul41, ptr %part_size, align 8
  br label %reread.backedge

reread.backedge:                                  ; preds = %sw.default.reread.backedge_crit_edge, %if.end31
  %70 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %part_start, align 8
  %add = add i64 %71, 2
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %call20 = call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %add, ptr noundef %73, ptr noundef %s_vhdr, i32 noundef 0, i32 noundef 0)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %reread.backedge.if.end23_crit_edge, label %reread.backedge.out_free_backup_vhdr_crit_edge

reread.backedge.out_free_backup_vhdr_crit_edge:   ; preds = %reread.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

reread.backedge.if.end23_crit_edge:               ; preds = %reread.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

sw.default:                                       ; preds = %if.end23
  %call42 = call i32 @hfsplus_part_find(ptr noundef %sb, ptr noundef nonnull %part_start, ptr noundef nonnull %part_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %sw.default.reread.backedge_crit_edge, label %sw.default.out_free_backup_vhdr_crit_edge

sw.default.out_free_backup_vhdr_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

sw.default.reread.backedge_crit_edge:             ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %reread.backedge

sw.epilog:                                        ; preds = %sw.bb, %if.end23.sw.epilog_crit_edge
  %74 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %part_start, align 8
  %76 = ptrtoint ptr %part_size to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %part_size, align 8
  %add46 = add i64 %75, -2
  %sub = add i64 %add46, %77
  %78 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_backup_vhdr_buf, align 8
  %s_backup_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 3
  %call48 = call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %sub, ptr noundef %79, ptr noundef %s_backup_vhdr, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %sw.epilog.out_free_backup_vhdr_crit_edge

sw.epilog.out_free_backup_vhdr_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

if.end51:                                         ; preds = %sw.epilog
  %80 = ptrtoint ptr %s_backup_vhdr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_backup_vhdr, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %81, align 1
  %84 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_vhdr, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %85, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %87)
  %cmp.not = icmp eq i16 %83, %87
  br i1 %cmp.not, label %if.end61, label %do.end

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %out_free_backup_vhdr

if.end61:                                         ; preds = %if.end51
  %blocksize63 = getelementptr inbounds %struct.hfsplus_vh, ptr %85, i32 0, i32 11
  %88 = ptrtoint ptr %blocksize63 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %blocksize63, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %89)
  %cmp64 = icmp ugt i32 %89, 511
  %90 = call i32 @llvm.ctpop.i32(i32 %89), !range !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %tobool67.not = icmp ult i32 %90, 2
  %or.cond = and i1 %cmp64, %tobool67.not
  br i1 %or.cond, label %if.end69, label %if.end61.out_free_backup_vhdr_crit_edge

if.end61.out_free_backup_vhdr_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_backup_vhdr

if.end69:                                         ; preds = %if.end61
  %alloc_blksz = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 15
  %91 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %89, ptr %alloc_blksz, align 4
  %92 = call i32 @llvm.ctlz.i32(i32 %89, i1 true) #6, !range !25
  %cond78 = xor i32 %92, 31
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 16
  %93 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cond78, ptr %alloc_blksz_shift, align 8
  %94 = call i32 @llvm.umin.i32(i32 %89, i32 4096)
  %95 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %part_start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end69
  %blocksize.0 = phi i32 [ %94, %if.end69 ], [ %shr92, %while.cond.while.cond_crit_edge ]
  %shr87 = lshr i32 %blocksize.0, 9
  %sub88 = add nsw i32 %shr87, -1
  %conv89 = zext i32 %sub88 to i64
  %and90 = and i64 %96, %conv89
  %tobool91.not = icmp eq i64 %and90, 0
  %shr92 = lshr i32 %blocksize.0, 1
  br i1 %tobool91.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call93 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %blocksize.0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call93, i32 %blocksize.0)
  %cmp94.not = icmp eq i32 %call93, %blocksize.0
  br i1 %cmp94.not, label %if.end102, label %do.end99

do.end99:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %blocksize.0) #9
  br label %out_free_backup_vhdr

if.end102:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %part_start, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %99 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %s_blocksize_bits, align 4
  %conv103 = zext i8 %100 to i32
  %sub104 = add nsw i32 %conv103, -9
  %sh_prom = zext i32 %sub104 to i64
  %shr105 = lshr i64 %98, %sh_prom
  %conv106 = trunc i64 %shr105 to i32
  %blockoffset = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 11
  %101 = ptrtoint ptr %blockoffset to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv106, ptr %blockoffset, align 4
  %part_start107 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 12
  %102 = ptrtoint ptr %part_start107 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %98, ptr %part_start107, align 8
  %103 = ptrtoint ptr %part_size to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %part_size, align 8
  %sect_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 13
  %105 = ptrtoint ptr %sect_count to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %sect_count, align 8
  %106 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %alloc_blksz_shift, align 8
  %108 = load i8, ptr %s_blocksize_bits, align 4
  %conv110 = zext i8 %108 to i32
  %sub111 = sub i32 %107, %conv110
  %fs_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 14
  %109 = ptrtoint ptr %fs_shift to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %sub111, ptr %fs_shift, align 8
  br label %cleanup

out_free_backup_vhdr:                             ; preds = %do.end99, %if.end61.out_free_backup_vhdr_crit_edge, %do.end, %sw.epilog.out_free_backup_vhdr_crit_edge, %sw.default.out_free_backup_vhdr_crit_edge, %reread.backedge.out_free_backup_vhdr_crit_edge, %if.end11.i.out_free_backup_vhdr_crit_edge, %if.end.i213.out_free_backup_vhdr_crit_edge, %sw.bb26.out_free_backup_vhdr_crit_edge, %reread.preheader.out_free_backup_vhdr_crit_edge
  %error.0 = phi i32 [ %call48, %sw.epilog.out_free_backup_vhdr_crit_edge ], [ -22, %do.end ], [ -22, %if.end61.out_free_backup_vhdr_crit_edge ], [ -22, %do.end99 ], [ %call20228, %reread.preheader.out_free_backup_vhdr_crit_edge ], [ %call20, %reread.backedge.out_free_backup_vhdr_crit_edge ], [ -22, %sw.default.out_free_backup_vhdr_crit_edge ], [ -22, %sw.bb26.out_free_backup_vhdr_crit_edge ], [ -22, %if.end.i213.out_free_backup_vhdr_crit_edge ], [ -22, %if.end11.i.out_free_backup_vhdr_crit_edge ]
  %110 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_backup_vhdr_buf, align 8
  call void @kfree(ptr noundef %111) #6
  br label %out_free_vhdr

out_free_vhdr:                                    ; preds = %out_free_backup_vhdr, %if.end8.i190.out_free_vhdr_crit_edge
  %error.1 = phi i32 [ %error.0, %out_free_backup_vhdr ], [ -12, %if.end8.i190.out_free_vhdr_crit_edge ]
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  call void @kfree(ptr noundef %113) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_vhdr, %if.end102, %if.end8.i.cleanup_crit_edge, %hfsplus_get_last_session.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102 ], [ -22, %hfsplus_get_last_session.exit ], [ %error.1, %out_free_vhdr ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %part_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %part_start) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_part_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_read_tocentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_multisession(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/wrapper.c", i32 229, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_read_wrapper._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_read_wrapper._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/wrapper.c", i32 251, i32 3}
!8 = !{ptr @hfsplus_read_wrapper._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hfsplus_read_wrapper._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hfsplus/wrapper.c", i32 146, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hfsplus_get_last_session._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hfsplus_get_last_session._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i32 0, i32 33}
