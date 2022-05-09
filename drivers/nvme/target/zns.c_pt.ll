; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/zns.c_pt.bc'
source_filename = "../drivers/nvme/target/zns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.percpu_ref = type { i32, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_identify = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, [3 x i8], i8, [4 x i32] }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvme_id_ns_zns = type { i16, i16, i32, i32, i32, i32, [2796 x i8], [16 x %struct.nvme_zns_lbafe], [768 x i8], [256 x i8] }
%struct.nvme_zns_lbafe = type { i64, i8, [7 x i8] }
%struct.nvmet_report_zone_data = type { ptr, i64, i64, i64, i8 }
%struct.nvme_zone_mgmt_recv_cmd = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i64, i32, i8, i8, i8, i8, [2 x i32] }
%struct.nvmet_zone_mgmt_send_all_data = type { ptr, ptr }
%struct.nvme_zone_mgmt_send_cmd = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i64, i32, i8, i8, [2 x i8], [2 x i32] }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_zone_descriptor = type { i8, i8, i8, [5 x i8], i64, i64, i64, [32 x i8] }

@nvmet_bdev_execute_zone_mgmt_recv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&req->z.zmgmt_work)\00", [58 x i8] zeroinitializer }, align 32
@zbd_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_bdev_execute_zone_mgmt_send.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvmet_bdev_report_zone_cb.nvme_zrasf_to_blk_zcond = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvme/target/zns.c\00", [38 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@switch.table.nvmet_bdev_zmgmt_send_work = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2059, i32 2060, i32 2058, i32 2063], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967291]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 121, i64 122, i64 125]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 304, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 505, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"nvme_zrasf_to_blk_zcond\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 198, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [29 x i8] c"../drivers/nvme/target/zns.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 420, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [40 x i8] c"switch.table.nvmet_bdev_zmgmt_send_work\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @nvmet_bdev_execute_zone_mgmt_recv.__key, ptr @.str, ptr @nvmet_bdev_execute_zone_mgmt_send.__key, ptr @nvmet_bdev_report_zone_cb.nvme_zrasf_to_blk_zcond, ptr @.str.1, ptr @switch.table.nvmet_bdev_zmgmt_send_work], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_execute_zone_mgmt_recv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_execute_zone_mgmt_send.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_report_zone_cb.nvme_zrasf_to_blk_zcond to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvmet_bdev_zmgmt_send_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvmet_bdev_zns_enable(ptr nocapture noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %max_zone_append_sectors.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 17
  %6 = ptrtoint ptr %max_zone_append_sectors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_zone_append_sectors.i, align 4
  %max_sectors.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 6
  %8 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_sectors.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %tobool.not.i.i.i = icmp ult i32 %10, 8
  %shr.i = lshr i32 %10, 3
  %11 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #7, !range !18
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 31
  %conv8.i = select i1 %tobool.not.i.i.i, i8 -1, i8 %13
  %subsys = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 12
  %14 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subsys, align 8
  %zasl5 = getelementptr inbounds %struct.nvmet_subsys, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %zasl5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %zasl5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %conv8.i)
  %cmp = icmp ugt i8 %17, %conv8.i
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %entry
  %18 = ptrtoint ptr %zasl5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i, ptr %zasl5, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end11.bdev_zone_sectors.exit_crit_edge, label %if.then.i

if.end11.bdev_zone_sectors.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_zone_sectors.exit

if.then.i:                                        ; preds = %if.end11
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 37, i32 27
  %27 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge

if.then.i.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 37, i32 5
  %29 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %30, %cond.true.i.i ], [ 0, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  %phi.bo = add nsw i64 %conv.i.i, -1
  br label %bdev_zone_sectors.exit

bdev_zone_sectors.exit:                           ; preds = %blk_queue_zone_sectors.exit.i, %if.end11.bdev_zone_sectors.exit_crit_edge
  %retval.0.i = phi i64 [ %phi.bo, %blk_queue_zone_sectors.exit.i ], [ -1, %if.end11.bdev_zone_sectors.exit_crit_edge ]
  %and = and i64 %retval.0.i, %22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %if.end19, label %bdev_zone_sectors.exit.cleanup_crit_edge

bdev_zone_sectors.exit.cleanup_crit_edge:         ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %bdev_zone_sectors.exit
  %bd_disk21 = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 17
  %31 = ptrtoint ptr %bd_disk21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd_disk21, align 8
  %queue22 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %queue22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue22, align 4
  %conv_zones_bitmap = getelementptr inbounds %struct.request_queue, ptr %34, i32 0, i32 40
  %35 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %conv_zones_bitmap, align 8
  %tobool23.not = icmp eq ptr %36, null
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call27 = tail call i32 @blkdev_nr_zones(ptr noundef %3) #7
  %call28 = tail call i32 @blkdev_report_zones(ptr noundef %24, i64 noundef 0, i32 noundef %call27, ptr noundef nonnull @validate_conv_zones_cb, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end25.cleanup_crit_edge, label %if.end32

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %37 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev, align 8
  %bd_queue.i.i50 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %bd_queue.i.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_queue.i.i50, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end32.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end32.do.body.i.preheader_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 9
  %41 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool2.not.i.i = icmp eq i32 %42, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %42
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.i, %if.end32.do.body.i.preheader_crit_edge
  %size.addr.0.i.ph = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 512, %if.end32.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %size.addr.0.i = phi i32 [ %shr.i51, %do.body.i.do.body.i_crit_edge ], [ %size.addr.0.i.ph, %do.body.i.preheader ]
  %bits.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 8, %do.body.i.preheader ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i51 = lshr i32 %size.addr.0.i, 1
  %cmp.i52 = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i52, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 5
  %43 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i, ptr %blksize_shift, align 8
  br label %cleanup

cleanup:                                          ; preds = %blksize_bits.exit, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %bdev_zone_sectors.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %blksize_bits.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %bdev_zone_sectors.exit.cleanup_crit_edge ], [ false, %if.end19.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @validate_conv_zones_cb(ptr nocapture noundef readonly %z, i32 noundef %i, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %. = select i1 %cmp, i32 -95, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_identify_cns_cs_ctrl(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %zasl1 = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %zasl1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zasl1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4096) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 8
  %get_mdts = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %get_mdts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_mdts, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call zeroext i8 %12(ptr noundef %3) #7
  %13 = tail call i8 @llvm.umin.i8(i8 %call9, i8 %7)
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end.if.end17_crit_edge
  %storemerge = phi i8 [ %13, %if.then6 ], [ %7, %if.end.if.end17_crit_edge ]
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %call7.i.i, align 8
  %call18 = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

out:                                              ; preds = %if.end17, %entry.out_crit_edge
  %status.0 = phi i16 [ %call18, %if.end17 ], [ 6, %entry.out_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_to_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_identify_cns_cs_ns(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %nsid = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %4 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %error_loc, align 4
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4096) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  %call3 = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %tobool4.not = icmp eq i16 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.done_crit_edge

if.end2.done_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end6:                                          ; preds = %if.end2
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end6.if.then8_crit_edge, label %bdev_is_zoned.exit

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

bdev_is_zoned.exit:                               ; preds = %if.end6
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 27
  %12 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end10, label %bdev_is_zoned.exit.if.then8_crit_edge

bdev_is_zoned.exit.if.then8_crit_edge:            ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %bdev_is_zoned.exit.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  %error_loc9 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %14 = ptrtoint ptr %error_loc9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %error_loc9, align 4
  br label %done

if.end10:                                         ; preds = %bdev_is_zoned.exit
  tail call void @nvmet_ns_revalidate(ptr noundef %7) #7
  %15 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ns, align 8
  %bdev13 = getelementptr inbounds %struct.nvmet_ns, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bdev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev13, align 8
  %bd_queue.i.i41 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %bd_queue.i.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_queue.i.i41, align 4
  %tobool.not.i42 = icmp eq ptr %20, null
  br i1 %tobool.not.i42, label %if.end10.bdev_zone_sectors.exit_crit_edge, label %if.then.i43

if.end10.bdev_zone_sectors.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_zone_sectors.exit

if.then.i43:                                      ; preds = %if.end10
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 27
  %21 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i43.blk_queue_zone_sectors.exit.i_crit_edge

if.then.i43.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 5
  %23 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %if.then.i43.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %24, %cond.true.i.i ], [ 0, %if.then.i43.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  %phi.bo = shl nuw nsw i64 %conv.i.i, 9
  br label %bdev_zone_sectors.exit

bdev_zone_sectors.exit:                           ; preds = %blk_queue_zone_sectors.exit.i, %if.end10.bdev_zone_sectors.exit_crit_edge
  %retval.0.i44 = phi i64 [ %phi.bo, %blk_queue_zone_sectors.exit.i ], [ 0, %if.end10.bdev_zone_sectors.exit_crit_edge ]
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blksize_shift, align 8
  %sh_prom = zext i32 %26 to i64
  %shr = lshr i64 %retval.0.i44, %sh_prom
  %27 = tail call i64 @llvm.bswap.i64(i64 %shr)
  %lbafe = getelementptr inbounds %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %lbafe to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %lbafe, align 8
  %29 = ptrtoint ptr %bdev13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev13, align 8
  %bd_queue.i.i45 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %bd_queue.i.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd_queue.i.i45, align 4
  %tobool.not.i46 = icmp eq ptr %32, null
  br i1 %tobool.not.i46, label %bdev_zone_sectors.exit.bdev_max_open_zones.exit_crit_edge, label %if.then.i47

bdev_zone_sectors.exit.bdev_max_open_zones.exit_crit_edge: ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_max_open_zones.exit

if.then.i47:                                      ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  %max_open_zones.i.i = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 42
  %33 = ptrtoint ptr %max_open_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_open_zones.i.i, align 8
  br label %bdev_max_open_zones.exit

bdev_max_open_zones.exit:                         ; preds = %if.then.i47, %bdev_zone_sectors.exit.bdev_max_open_zones.exit_crit_edge
  %retval.0.i48 = phi i32 [ %34, %if.then.i47 ], [ 0, %bdev_zone_sectors.exit.bdev_max_open_zones.exit_crit_edge ]
  %35 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i48)
  %mor = getelementptr inbounds %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %mor to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mor, align 8
  %37 = ptrtoint ptr %bdev13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev13, align 8
  %bd_queue.i.i49 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %bd_queue.i.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_queue.i.i49, align 4
  %tobool.not.i50 = icmp eq ptr %40, null
  br i1 %tobool.not.i50, label %bdev_max_open_zones.exit.bdev_max_active_zones.exit_crit_edge, label %if.then.i51

bdev_max_open_zones.exit.bdev_max_active_zones.exit_crit_edge: ; preds = %bdev_max_open_zones.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_max_active_zones.exit

if.then.i51:                                      ; preds = %bdev_max_open_zones.exit
  call void @__sanitizer_cov_trace_pc() #9
  %max_active_zones.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 43
  %41 = ptrtoint ptr %max_active_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_active_zones.i.i, align 4
  br label %bdev_max_active_zones.exit

bdev_max_active_zones.exit:                       ; preds = %if.then.i51, %bdev_max_open_zones.exit.bdev_max_active_zones.exit_crit_edge
  %retval.0.i52 = phi i32 [ %42, %if.then.i51 ], [ 0, %bdev_max_open_zones.exit.bdev_max_active_zones.exit_crit_edge ]
  %43 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i52)
  %mar = getelementptr inbounds %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mar to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mar, align 4
  br label %done

done:                                             ; preds = %bdev_max_active_zones.exit, %if.then8, %if.end2.done_crit_edge
  %call23 = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

out:                                              ; preds = %done, %if.end.out_crit_edge, %if.then
  %status.0 = phi i16 [ 16395, %if.then ], [ %call23, %done ], [ 6, %if.end.out_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_req_find_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_revalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_bdev_execute_zone_mgmt_recv(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zmgmt_work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 1
  tail call void @__init_work(ptr noundef %zmgmt_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %zmgmt_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %zmgmt_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nvmet_bdev_execute_zone_mgmt_recv.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmet_bdev_zone_zmgmt_recv_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zbd_wq to i32))
  %4 = load ptr, ptr @zbd_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %zmgmt_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_zone_zmgmt_recv_work(ptr noundef %w) #0 align 64 {
entry:
  %nr_zones = alloca i64, align 8
  %rz_data = alloca %struct.nvmet_report_zone_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -232
  %ns = getelementptr i8, ptr %w, i32 -216
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %slba = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %slba, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %8, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %6, %sh_prom.i
  %bdev.i = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_disk.i, align 8
  %call2.i = tail call i32 @blkdev_nr_zones(ptr noundef %12) #7
  %13 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns, align 8
  %bdev4.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bdev4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev4.i, align 8
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %entry.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge, label %if.then.i.i

entry.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_req_nr_zones_from_slba.exit.thread

if.then.i.i:                                      ; preds = %entry
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 27
  %19 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %nvmet_req_nr_zones_from_slba.exit, label %if.then.i.i.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge

if.then.i.i.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_req_nr_zones_from_slba.exit.thread

nvmet_req_nr_zones_from_slba.exit.thread:         ; preds = %if.then.i.i.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge, %entry.nvmet_req_nr_zones_from_slba.exit.thread_crit_edge
  %conv.i60 = trunc i64 %shl.i to i32
  br label %24

nvmet_req_nr_zones_from_slba.exit:                ; preds = %if.then.i.i
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 5
  %21 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_sectors.i.i.i, align 4
  %conv.i = trunc i64 %shl.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #7, !range !18
  %sub.i.i.op.i.i = xor i32 %23, 31
  br i1 %tobool.not.i.i.i.i, label %nvmet_req_nr_zones_from_slba.exit._crit_edge, label %nvmet_req_nr_zones_from_slba.exit._crit_edge65

nvmet_req_nr_zones_from_slba.exit._crit_edge65:   ; preds = %nvmet_req_nr_zones_from_slba.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %25

nvmet_req_nr_zones_from_slba.exit._crit_edge:     ; preds = %nvmet_req_nr_zones_from_slba.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %24

24:                                               ; preds = %nvmet_req_nr_zones_from_slba.exit._crit_edge, %nvmet_req_nr_zones_from_slba.exit.thread
  %conv.i64 = phi i32 [ %conv.i60, %nvmet_req_nr_zones_from_slba.exit.thread ], [ %conv.i, %nvmet_req_nr_zones_from_slba.exit._crit_edge ]
  br label %25

25:                                               ; preds = %24, %nvmet_req_nr_zones_from_slba.exit._crit_edge65
  %conv.i63 = phi i32 [ %conv.i64, %24 ], [ %conv.i, %nvmet_req_nr_zones_from_slba.exit._crit_edge65 ]
  %26 = phi i32 [ -1, %24 ], [ %sub.i.i.op.i.i, %nvmet_req_nr_zones_from_slba.exit._crit_edge65 ]
  %shr.i = lshr i32 %conv.i63, %26
  %sub.i45 = sub i32 %call2.i, %shr.i
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %numd = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %numd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numd, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add = shl i32 %31, 2
  %shl = add i32 %add, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_zones) #7
  %32 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %nr_zones, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rz_data) #7
  %33 = call ptr @memset(ptr %rz_data, i32 255, i32 40)
  %34 = ptrtoint ptr %rz_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr, ptr %rz_data, align 8
  %out_buf_offset = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %rz_data, i32 0, i32 1
  %35 = ptrtoint ptr %out_buf_offset to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 64, ptr %out_buf_offset, align 8
  %out_nr_zones = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %rz_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %shl)
  %cmp.i = icmp ult i32 %shl, 65
  %sub.i46 = add i32 %add, -60
  %div1.i = lshr i32 %sub.i46, 6
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %div1.i
  %conv = zext i32 %retval.0.i to i64
  %36 = ptrtoint ptr %out_nr_zones to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv, ptr %out_nr_zones, align 8
  %nr_zones5 = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %rz_data, i32 0, i32 3
  %37 = ptrtoint ptr %nr_zones5 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %nr_zones5, align 8
  %zrasf = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %rz_data, i32 0, i32 4
  %zrasf7 = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %28, i32 0, i32 9
  %38 = ptrtoint ptr %zrasf7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %zrasf7, align 1
  %40 = ptrtoint ptr %zrasf to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %zrasf, align 8
  %slba.i48 = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %28, i32 0, i32 6
  %41 = ptrtoint ptr %slba.i48 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %slba.i48, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #7
  %blksize_shift.i.i49 = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 5
  %44 = ptrtoint ptr %blksize_shift.i.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blksize_shift.i.i49, align 8
  %sub.i.i50 = add i32 %45, -9
  %sh_prom.i.i51 = zext i32 %sub.i.i50 to i64
  %shl.i.i52 = shl i64 %43, %sh_prom.i.i51
  %46 = ptrtoint ptr %bdev4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev4.i, align 8
  %bd_disk.i54 = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %bd_disk.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bd_disk.i54, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i52, i64 %53)
  %cmp.not.i = icmp ult i64 %shl.i.i52, %53
  br i1 %cmp.not.i, label %if.end.i, label %.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge

.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge: ; preds = %25
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_validate_zone_mgmt_recv.exit

if.end.i:                                         ; preds = %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shl)
  %cmp4.i = icmp ult i32 %shl, 64
  br i1 %cmp4.i, label %if.end.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge, label %if.end7.i

if.end.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_validate_zone_mgmt_recv.exit

if.end7.i:                                        ; preds = %if.end.i
  %zra.i = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %28, i32 0, i32 8
  %54 = ptrtoint ptr %zra.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %zra.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp9.not.i = icmp eq i8 %55, 0
  br i1 %cmp9.not.i, label %if.end13.i, label %if.end7.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge

if.end7.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_validate_zone_mgmt_recv.exit

if.end13.i:                                       ; preds = %if.end7.i
  %pr.i = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %28, i32 0, i32 10
  %56 = ptrtoint ptr %pr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %switch.i = icmp ult i8 %57, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end13.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge

if.end13.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_validate_zone_mgmt_recv.exit

sw.epilog.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %39)
  %switch35.i = icmp ult i8 %39, 8
  br i1 %switch35.i, label %if.end, label %sw.epilog.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge

sw.epilog.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_validate_zone_mgmt_recv.exit

nvmet_bdev_validate_zone_mgmt_recv.exit:          ; preds = %sw.epilog.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge, %if.end13.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge, %if.end7.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge, %if.end.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge, %.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge
  %.sink.i = phi i16 [ 40, %.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 48, %if.end.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 52, %if.end7.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 54, %if.end13.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 53, %sw.epilog.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ]
  %retval.0.ph.i = phi i16 [ 16512, %.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 16386, %if.end.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 16386, %if.end7.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 16386, %if.end13.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ], [ 16386, %sw.epilog.i.nvmet_bdev_validate_zone_mgmt_recv.exit_crit_edge ]
  %error_loc21.i = getelementptr i8, ptr %w, i32 92
  %58 = ptrtoint ptr %error_loc21.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %.sink.i, ptr %error_loc21.i, align 4
  br label %out

if.end:                                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %shr.i)
  %tobool9.not = icmp eq i32 %call2.i, %shr.i
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end
  %59 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bdev, align 8
  %call13 = call i32 @blkdev_report_zones(ptr noundef %62, i64 noundef %shl.i, i32 noundef %sub.i45, ptr noundef nonnull @nvmet_bdev_report_zone_cb, ptr noundef nonnull %rz_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %if.end11
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %pr = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %pr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool18.not = icmp eq i8 %66, 0
  br i1 %tobool18.not, label %if.end16.if.end26_crit_edge, label %if.then19

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %nr_zones5 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %nr_zones5, align 8
  %69 = ptrtoint ptr %out_nr_zones to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %out_nr_zones, align 8
  %71 = call i64 @llvm.umin.i64(i64 %68, i64 %70)
  %72 = ptrtoint ptr %nr_zones5 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %nr_zones5, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end16.if.end26_crit_edge
  %73 = ptrtoint ptr %nr_zones5 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %nr_zones5, align 8
  %75 = call i64 @llvm.bswap.i64(i64 %74)
  %76 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %nr_zones, align 8
  %call28 = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %nr_zones, i32 noundef 8) #7
  br label %out

out:                                              ; preds = %if.end26, %if.end11.out_crit_edge, %if.end.out_crit_edge, %nvmet_bdev_validate_zone_mgmt_recv.exit
  %status.0 = phi i16 [ %retval.0.ph.i, %nvmet_bdev_validate_zone_mgmt_recv.exit ], [ %call28, %if.end26 ], [ 0, %if.end.out_crit_edge ], [ 6, %if.end11.out_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %status.0) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rz_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_zones) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_bdev_execute_zone_mgmt_send(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zmgmt_work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 1
  tail call void @__init_work(ptr noundef %zmgmt_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %zmgmt_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %zmgmt_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nvmet_bdev_execute_zone_mgmt_send.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmet_bdev_zmgmt_send_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zbd_wq to i32))
  %4 = load ptr, ptr @zbd_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %zmgmt_work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_zmgmt_send_work(ptr noundef %w) #0 align 64 {
entry:
  %d.i.i = alloca %struct.nvmet_zone_mgmt_send_all_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -232
  %ns = getelementptr i8, ptr %w, i32 -216
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %slba = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %slba, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %8, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %6, %sh_prom.i
  %zsa = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %zsa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %zsa, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %sw.default.i [
    i8 3, label %entry.zsa_req_op.exit_crit_edge
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 4, label %sw.bb3.i
  ]

entry.zsa_req_op.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit

zsa_req_op.exit:                                  ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.zsa_req_op.exit_crit_edge
  %cmp = phi i1 [ false, %entry.zsa_req_op.exit_crit_edge ], [ false, %sw.bb1.i ], [ false, %sw.bb2.i ], [ false, %sw.bb3.i ], [ true, %sw.default.i ]
  %retval.0.i = phi i32 [ 10, %entry.zsa_req_op.exit_crit_edge ], [ 11, %sw.bb1.i ], [ 12, %sw.bb2.i ], [ 15, %sw.bb3.i ], [ 36, %sw.default.i ]
  %bdev4 = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bdev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev4, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %zsa_req_op.exit.bdev_zone_sectors.exit_crit_edge, label %if.then.i

zsa_req_op.exit.bdev_zone_sectors.exit_crit_edge: ; preds = %zsa_req_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_zone_sectors.exit

if.then.i:                                        ; preds = %zsa_req_op.exit
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 27
  %16 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge

if.then.i.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 5
  %18 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %19, %cond.true.i.i ], [ 0, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  br label %bdev_zone_sectors.exit

bdev_zone_sectors.exit:                           ; preds = %blk_queue_zone_sectors.exit.i, %zsa_req_op.exit.bdev_zone_sectors.exit_crit_edge
  %retval.0.i40 = phi i64 [ %conv.i.i, %blk_queue_zone_sectors.exit.i ], [ 0, %zsa_req_op.exit.bdev_zone_sectors.exit_crit_edge ]
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc = getelementptr i8, ptr %w, i32 92
  %20 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 52, ptr %error_loc, align 4
  br label %out

if.end:                                           ; preds = %bdev_zone_sectors.exit
  %select_all = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %select_all to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %select_all, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %23 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %10, label %sw.default.i42 [
    i8 3, label %if.then7.sw.bb6.i_crit_edge
    i8 1, label %if.then7.sw.bb6.i_crit_edge47
    i8 2, label %if.then7.sw.bb6.i_crit_edge48
    i8 4, label %sw.bb.i
  ]

if.then7.sw.bb6.i_crit_edge48:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.then7.sw.bb6.i_crit_edge47:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.then7.sw.bb6.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

sw.bb.i:                                          ; preds = %if.then7
  %24 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns, align 8
  %bdev.i = getelementptr inbounds %struct.nvmet_ns, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev.i, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %call4.i = tail call i32 @blkdev_zone_mgmt(ptr noundef %27, i32 noundef 15, i64 noundef 0, i64 noundef %33, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then.i41, label %sw.bb.i.out_crit_edge

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i41:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call4.i)
  %switch.selectcmp.case1.i = icmp eq i32 %call4.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4.i)
  %switch.selectcmp.case2.i = icmp eq i32 %call4.i, -22
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %34 = select i1 %switch.selectcmp.i, i16 16831, i16 6
  br label %out

sw.bb6.i:                                         ; preds = %if.then7.sw.bb6.i_crit_edge, %if.then7.sw.bb6.i_crit_edge47, %if.then7.sw.bb6.i_crit_edge48
  %35 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ns, align 8
  %bdev1.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev1.i.i, align 8
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_disk.i.i, align 8
  %call.i.i = tail call i32 @blkdev_nr_zones(ptr noundef %40) #7
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %41 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bd_queue.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d.i.i) #7
  %43 = getelementptr inbounds %struct.nvmet_zone_mgmt_send_all_data, ptr %d.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %43, align 4
  %sub.i.i = add i32 %call.i.i, 31
  %45 = lshr i32 %sub.i.i, 3
  %46 = and i32 %45, 536870908
  %call.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3328) #11
  %47 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.i.i.i, ptr %d.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %out.thread.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb6.i
  %call7.i.i = call i32 @blkdev_report_zones(ptr noundef %38, i64 noundef 0, i32 noundef %call.i.i, ptr noundef nonnull @zmgmt_send_scan_cb, ptr noundef nonnull %d.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call7.i.i, %call.i.i
  br i1 %cmp.not.i.i, label %while.cond.preheader.i.i, label %if.then8.i.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i
  %48 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i77.i.i = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0.i77.i.i, align 4
  %bd_nr_sectors.i.i78.i.i = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bd_nr_sectors.i.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bd_nr_sectors.i.i78.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp1579.not.i.i = icmp eq i64 %53, 0
  br i1 %cmp1579.not.i.i, label %while.cond.preheader.i.i.out.thread73.i.i_crit_edge, label %while.body.lr.ph.i.i

while.cond.preheader.i.i.out.thread73.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread73.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 37, i32 27
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 37, i32 5
  br label %while.body.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp9.i.i = icmp sgt i32 %call7.i.i, 0
  br i1 %cmp9.i.i, label %out.thread75.i.i, label %if.then8.i.i.out.i.i_crit_edge

if.then8.i.i.out.i.i_crit_edge:                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

while.body.i.i:                                   ; preds = %blk_queue_zone_sectors.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %sector.081.i.i = phi i64 [ 0, %while.body.lr.ph.i.i ], [ %add27.i.i, %blk_queue_zone_sectors.exit.i.i.while.body.i.i_crit_edge ]
  %bio.080.i.i = phi ptr [ null, %while.body.lr.ph.i.i ], [ %bio.1.i.i, %blk_queue_zone_sectors.exit.i.i.while.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %cond.end10.i.i.i, label %while.body.i.i.blk_queue_zone_no.exit.i.i_crit_edge

while.body.i.i.blk_queue_zone_no.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_no.exit.i.i

cond.end10.i.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i.i.i = icmp eq i32 %57, 0
  %58 = call i32 @llvm.ctlz.i32(i32 %57, i1 true) #7, !range !18
  %sub.i.op.i.i.i.i = xor i32 %58, 31
  %sub.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i
  %sh_prom.i.i.i = zext i32 %sub.i.i.i.i to i64
  %shr.i56.i.i = lshr i64 %sector.081.i.i, %sh_prom.i.i.i
  %conv12.i.i.i = trunc i64 %shr.i56.i.i to i32
  br label %blk_queue_zone_no.exit.i.i

blk_queue_zone_no.exit.i.i:                       ; preds = %cond.end10.i.i.i, %while.body.i.i.blk_queue_zone_no.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv12.i.i.i, %cond.end10.i.i.i ], [ 0, %while.body.i.i.blk_queue_zone_no.exit.i.i_crit_edge ]
  %59 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d.i.i, align 4
  %div3.i.i.i = lshr i32 %retval.0.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %60, i32 %div3.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %retval.0.i.i.i, 31
  %63 = shl nuw i32 1, %and.i.i.i
  %64 = and i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool19.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool19.not.i.i, label %blk_queue_zone_no.exit.i.i.if.end25.i.i_crit_edge, label %if.then20.i.i

blk_queue_zone_no.exit.i.i.if.end25.i.i_crit_edge: ; preds = %blk_queue_zone_no.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

if.then20.i.i:                                    ; preds = %blk_queue_zone_no.exit.i.i
  %call21.i.i = call ptr @blk_next_bio(ptr noundef %bio.080.i.i, i32 noundef 0, i32 noundef 3264) #7
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %zsa.i.i = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %zsa.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %zsa.i.i, align 4
  %switch.tableidx = add i8 %68, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %69 = icmp ult i8 %switch.tableidx, 4
  br i1 %69, label %switch.lookup, label %if.then20.i.i.zsa_req_op.exit.i.i_crit_edge

if.then20.i.i.zsa_req_op.exit.i.i_crit_edge:      ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zsa_req_op.exit.i.i

switch.lookup:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nvmet_bdev_zmgmt_send_work, i32 0, i32 %70
  %71 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %zsa_req_op.exit.i.i

zsa_req_op.exit.i.i:                              ; preds = %switch.lookup, %if.then20.i.i.zsa_req_op.exit.i.i_crit_edge
  %retval.0.i57.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2084, %if.then20.i.i.zsa_req_op.exit.i.i_crit_edge ]
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call21.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i57.i.i, ptr %bi_opf.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call21.i.i, i32 0, i32 8
  %73 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %sector.081.i.i, ptr %bi_iter.i.i, align 8
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call21.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %75, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %call21.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %77, %38
  br i1 %cmp.not.i.i.i, label %zsa_req_op.exit.i.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

zsa_req_op.exit.i.i.bio_set_dev.exit.i.i_crit_edge: ; preds = %zsa_req_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %zsa_req_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i.i.i = and i16 %75, -2177
  %78 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %zsa_req_op.exit.i.i.bio_set_dev.exit.i.i_crit_edge
  %79 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %38, ptr %bi_bdev.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call21.i.i) #7
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 420, i32 noundef 0) #7
  %call.i.i.i = call i32 @__cond_resched() #7
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %bio_set_dev.exit.i.i, %blk_queue_zone_no.exit.i.i.if.end25.i.i_crit_edge
  %bio.1.i.i = phi ptr [ %call21.i.i, %bio_set_dev.exit.i.i ], [ %bio.080.i.i, %blk_queue_zone_no.exit.i.i.if.end25.i.i_crit_edge ]
  %80 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i60.i.i = add i32 %81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i60.i.i)
  %switch.i.i61.i.i = icmp ult i32 %call.off.i.i60.i.i, 2
  br i1 %switch.i.i61.i.i, label %cond.true.i63.i.i, label %if.end25.i.i.blk_queue_zone_sectors.exit.i.i_crit_edge

if.end25.i.i.blk_queue_zone_sectors.exit.i.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_sectors.exit.i.i

cond.true.i63.i.i:                                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chunk_sectors.i.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i.i

blk_queue_zone_sectors.exit.i.i:                  ; preds = %cond.true.i63.i.i, %if.end25.i.i.blk_queue_zone_sectors.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %83, %cond.true.i63.i.i ], [ 0, %if.end25.i.i.blk_queue_zone_sectors.exit.i.i_crit_edge ]
  %conv.i.i.i = zext i32 %cond.i.i.i to i64
  %add27.i.i = add i64 %sector.081.i.i, %conv.i.i.i
  %84 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  %cmp15.i.i = icmp ult i64 %add27.i.i, %89
  br i1 %cmp15.i.i, label %blk_queue_zone_sectors.exit.i.i.while.body.i.i_crit_edge, label %while.end.i.i

blk_queue_zone_sectors.exit.i.i.while.body.i.i_crit_edge: ; preds = %blk_queue_zone_sectors.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %blk_queue_zone_sectors.exit.i.i
  %tobool28.not.i.i = icmp eq ptr %bio.1.i.i, null
  br i1 %tobool28.not.i.i, label %while.end.i.i.out.thread73.i.i_crit_edge, label %if.then29.i.i

while.end.i.i.out.thread73.i.i_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread73.i.i

out.thread73.i.i:                                 ; preds = %while.end.i.i.out.thread73.i.i_crit_edge, %while.cond.preheader.i.i.out.thread73.i.i_crit_edge
  %90 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %d.i.i, align 4
  call void @kfree(ptr noundef %91) #7
  br label %nvmet_bdev_zone_mgmt_emulate_all.exit.i

if.then29.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i = call i32 @submit_bio_wait(ptr noundef nonnull %bio.1.i.i) #7
  call void @bio_put(ptr noundef nonnull %bio.1.i.i) #7
  br label %out.i.i

out.thread75.i.i:                                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %d.i.i, align 4
  call void @kfree(ptr noundef %93) #7
  br label %sw.bb1.i64.i.i

out.thread.i.i:                                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef null) #7
  br label %sw.default.i65.i.i

out.i.i:                                          ; preds = %if.then29.i.i, %if.then8.i.i.out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call7.i.i, %if.then8.i.i.out.i.i_crit_edge ], [ %call30.i.i, %if.then29.i.i ]
  %94 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %d.i.i, align 4
  call void @kfree(ptr noundef %95) #7
  %96 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %ret.0.i.i, label %out.i.i.sw.default.i65.i.i_crit_edge [
    i32 0, label %out.i.i.nvmet_bdev_zone_mgmt_emulate_all.exit.i_crit_edge
    i32 -22, label %out.i.i.sw.bb1.i64.i.i_crit_edge
    i32 -5, label %out.i.i.sw.bb1.i64.i.i_crit_edge49
  ]

out.i.i.sw.bb1.i64.i.i_crit_edge49:               ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i64.i.i

out.i.i.sw.bb1.i64.i.i_crit_edge:                 ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i64.i.i

out.i.i.nvmet_bdev_zone_mgmt_emulate_all.exit.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_zone_mgmt_emulate_all.exit.i

out.i.i.sw.default.i65.i.i_crit_edge:             ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i65.i.i

sw.bb1.i64.i.i:                                   ; preds = %out.i.i.sw.bb1.i64.i.i_crit_edge, %out.i.i.sw.bb1.i64.i.i_crit_edge49, %out.thread75.i.i
  br label %nvmet_bdev_zone_mgmt_emulate_all.exit.i

sw.default.i65.i.i:                               ; preds = %out.i.i.sw.default.i65.i.i_crit_edge, %out.thread.i.i
  br label %nvmet_bdev_zone_mgmt_emulate_all.exit.i

nvmet_bdev_zone_mgmt_emulate_all.exit.i:          ; preds = %sw.default.i65.i.i, %sw.bb1.i64.i.i, %out.i.i.nvmet_bdev_zone_mgmt_emulate_all.exit.i_crit_edge, %out.thread73.i.i
  %retval.0.i66.i.i = phi i16 [ 6, %sw.default.i65.i.i ], [ 16831, %sw.bb1.i64.i.i ], [ 0, %out.i.i.nvmet_bdev_zone_mgmt_emulate_all.exit.i_crit_edge ], [ 0, %out.thread73.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d.i.i) #7
  br label %out

sw.default.i42:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc.i = getelementptr i8, ptr %w, i32 92
  %97 = ptrtoint ptr %error_loc.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 52, ptr %error_loc.i, align 4
  br label %out

if.end9:                                          ; preds = %if.end
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 17
  %98 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %103)
  %cmp11.not = icmp ult i64 %shl.i, %103
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc13 = getelementptr i8, ptr %w, i32 92
  %104 = ptrtoint ptr %error_loc13 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 40, ptr %error_loc13, align 4
  br label %out

if.end14:                                         ; preds = %if.end9
  %sub = add nsw i64 %retval.0.i40, -1
  %and = and i64 %sub, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc17 = getelementptr i8, ptr %w, i32 92
  %105 = ptrtoint ptr %error_loc17 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 40, ptr %error_loc17, align 4
  br label %out

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @blkdev_zone_mgmt(ptr noundef %13, i32 noundef %retval.0.i, i64 noundef %shl.i, i64 noundef %retval.0.i40, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call19)
  %switch.selectcmp.case1 = icmp eq i32 %call19, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call19)
  %switch.selectcmp.case2 = icmp eq i32 %call19, -22
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %106 = select i1 %switch.selectcmp, i16 16831, i16 6
  br label %out

out:                                              ; preds = %if.then21, %if.end18.out_crit_edge, %if.then16, %if.then12, %sw.default.i42, %nvmet_bdev_zone_mgmt_emulate_all.exit.i, %if.then.i41, %sw.bb.i.out_crit_edge, %if.then
  %status.0 = phi i16 [ 16831, %if.then ], [ 16512, %if.then12 ], [ 16386, %if.then16 ], [ 0, %if.end18.out_crit_edge ], [ 16386, %sw.default.i42 ], [ %retval.0.i66.i.i, %nvmet_bdev_zone_mgmt_emulate_all.exit.i ], [ 0, %sw.bb.i.out_crit_edge ], [ %34, %if.then.i41 ], [ %106, %if.then21 ]
  call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %status.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_bdev_execute_zone_append(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %slba = getelementptr inbounds %struct.nvme_rw_command, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %slba, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %8, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %6, %sh_prom.i
  %length.i = getelementptr inbounds %struct.nvme_rw_command, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length.i, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  %conv.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %shl.i102 = shl i32 %add.i, %8
  %call2 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %shl.i102) #7
  br i1 %call2, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end:                                           ; preds = %entry
  %sg_cnt3 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %12 = ptrtoint ptr %sg_cnt3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_cnt3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #7
  br label %cleanup54

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %23)
  %cmp.not = icmp ult i64 %shl.i, %23
  br i1 %cmp.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %24 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 40, ptr %error_loc, align 4
  br label %out

if.end9:                                          ; preds = %if.end5
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 18
  %25 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end9.bdev_zone_sectors.exit_crit_edge, label %if.then.i

if.end9.bdev_zone_sectors.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_zone_sectors.exit

if.then.i:                                        ; preds = %if.end9
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 37, i32 27
  %27 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge

if.then.i.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 37, i32 5
  %29 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %30, %cond.true.i.i ], [ 0, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  %phi.bo = add nsw i64 %conv.i.i, -1
  br label %bdev_zone_sectors.exit

bdev_zone_sectors.exit:                           ; preds = %blk_queue_zone_sectors.exit.i, %if.end9.bdev_zone_sectors.exit_crit_edge
  %retval.0.i = phi i64 [ %phi.bo, %blk_queue_zone_sectors.exit.i ], [ -1, %if.end9.bdev_zone_sectors.exit_crit_edge ]
  %and = and i64 %retval.0.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc15 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %31 = ptrtoint ptr %error_loc15 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 40, ptr %error_loc15, align 4
  br label %out

if.end16:                                         ; preds = %bdev_zone_sectors.exit
  %transfer_len.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %32 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %33)
  %cmp.i = icmp ult i32 %33, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp1.i = icmp slt i32 %13, 9
  %or.cond = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %34 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %inline_bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 7
  tail call void @bio_init(ptr noundef %34, ptr noundef %inline_bvec, i16 noundef zeroext 8) #7
  br label %if.end21

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %13 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv, ptr noundef nonnull @fs_bio_set) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %bio.0 = phi ptr [ %34, %if.then18 ], [ %call.i, %if.else ]
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %35 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 34829, ptr %bi_opf, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 10
  %36 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nvmet_bdev_zone_append_bio_done, ptr %bi_end_io, align 8
  %37 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ns, align 8
  %bdev23 = getelementptr inbounds %struct.nvmet_ns, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bdev23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev23, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 3
  %41 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %42, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 1
  %43 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %44, %40
  br i1 %cmp.not.i, label %if.end21.bio_set_dev.exit_crit_edge, label %if.then.i103

if.end21.bio_set_dev.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_set_dev.exit

if.then.i103:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i = and i16 %42, -2177
  %45 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i103, %if.end21.bio_set_dev.exit_crit_edge
  %46 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio.0) #7
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8
  %47 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl.i, ptr %bi_iter, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 11
  %48 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %req, ptr %bi_private, align 4
  %49 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req, align 8
  %control = getelementptr inbounds %struct.nvme_rw_command, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %control, align 2
  %53 = and i16 %52, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool27.not = icmp eq i16 %53, 0
  br i1 %tobool27.not, label %bio_set_dev.exit.if.end32_crit_edge, label %if.then28

bio_set_dev.exit.if.end32_crit_edge:              ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_opf, align 8
  %56 = or i32 %55, 131072
  store i32 %56, ptr %bi_opf, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %bio_set_dev.exit.if.end32_crit_edge
  %57 = ptrtoint ptr %sg_cnt3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sg_cnt3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp35114 = icmp sgt i32 %58, 0
  br i1 %cmp35114, label %for.body.preheader, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end32
  %sg33 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 5
  %59 = ptrtoint ptr %sg33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg33, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %total_len.0117 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0116 = phi ptr [ %call48, %for.inc.for.body_crit_edge ], [ %60, %for.body.preheader ]
  %sg_cnt.0115 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %61 = ptrtoint ptr %sg.0116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg.0116, align 4
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !20

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %62, -4
  %63 = inttoptr i32 %and.i to ptr
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0116, i32 0, i32 2
  %64 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0116, i32 0, i32 1
  %66 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset, align 4
  %call38 = tail call i32 @bio_add_zone_append_page(ptr noundef %bio.0, ptr noundef %63, i32 noundef %65, i32 noundef %67) #7
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %69)
  %cmp40.not = icmp eq i32 %call38, %69
  br i1 %cmp40.not, label %for.inc, label %sg_page.exit.out_put_bio_crit_edge

sg_page.exit.out_put_bio_crit_edge:               ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_bio

for.inc:                                          ; preds = %sg_page.exit
  %add = add i32 %call38, %total_len.0117
  %inc = add nuw nsw i32 %sg_cnt.0115, 1
  %call48 = tail call ptr @sg_next(ptr noundef %sg.0116) #7
  %70 = ptrtoint ptr %sg_cnt3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sg_cnt3, align 8
  %cmp35 = icmp slt i32 %inc, %71
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge
  %total_len.0.lcssa = phi i32 [ 0, %if.end32.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %72 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req, align 8
  %length.i104 = getelementptr inbounds %struct.nvme_rw_command, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %length.i104 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %length.i104, align 8
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #7
  %conv.i105 = zext i16 %76 to i32
  %add.i106 = add nuw nsw i32 %conv.i105, 1
  %77 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ns, align 8
  %blksize_shift.i108 = getelementptr inbounds %struct.nvmet_ns, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %blksize_shift.i108 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blksize_shift.i108, align 8
  %shl.i109 = shl i32 %add.i106, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0.lcssa, i32 %shl.i109)
  %cmp50.not = icmp eq i32 %total_len.0.lcssa, %shl.i109
  br i1 %cmp50.not, label %if.end53, label %for.end.out_put_bio_crit_edge

for.end.out_put_bio_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_bio

if.end53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @submit_bio(ptr noundef %bio.0) #7
  br label %cleanup54

out_put_bio:                                      ; preds = %for.end.out_put_bio_crit_edge, %sg_page.exit.out_put_bio_crit_edge
  %status.2 = phi i16 [ 16390, %for.end.out_put_bio_crit_edge ], [ 6, %sg_page.exit.out_put_bio_crit_edge ]
  %81 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %cmp.not.i110 = icmp eq ptr %81, %bio.0
  br i1 %cmp.not.i110, label %out_put_bio.out_crit_edge, label %if.then.i111

out_put_bio.out_crit_edge:                        ; preds = %out_put_bio
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i111:                                     ; preds = %out_put_bio
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bio_put(ptr noundef %bio.0) #7
  br label %out

out:                                              ; preds = %if.then.i111, %out_put_bio.out_crit_edge, %if.then14, %if.then8
  %status.3 = phi i16 [ 16512, %if.then8 ], [ 16386, %if.then14 ], [ %status.2, %out_put_bio.out_crit_edge ], [ %status.2, %if.then.i111 ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.3) #7
  br label %cleanup54

cleanup54:                                        ; preds = %out, %if.end53, %if.then4, %entry.cleanup54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_zone_append_bio_done(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %9, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %7, %sh_prom.i
  %10 = tail call i64 @llvm.bswap.i64(i64 %shr.i) #7
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cqe, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bi_status, align 2
  %call3 = tail call zeroext i16 @blk_to_nvme_status(ptr noundef %1, i8 noundef zeroext %15) #7
  tail call void @nvmet_req_complete(ptr noundef %1, i16 noundef zeroext %call3) #7
  %16 = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 8
  %cmp.not.i = icmp eq ptr %16, %bio
  br i1 %cmp.not.i, label %if.end.nvmet_req_bio_put.exit_crit_edge, label %if.then.i

if.end.nvmet_req_bio_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_req_bio_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bio_put(ptr noundef %bio) #7
  br label %nvmet_req_bio_put.exit

nvmet_req_bio_put.exit:                           ; preds = %if.then.i, %if.end.nvmet_req_bio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_zone_append_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_bdev_zns_parse_io_cmd(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %3, label %sw.default [
    i8 125, label %sw.bb
    i8 122, label %sw.bb2
    i8 121, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %5 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvmet_bdev_execute_zone_append, ptr %execute, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute3 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %6 = ptrtoint ptr %execute3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvmet_bdev_execute_zone_mgmt_recv, ptr %execute3, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute5 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %7 = ptrtoint ptr %execute5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvmet_bdev_execute_zone_mgmt_send, ptr %execute5, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i16 @nvmet_bdev_parse_io_cmd(ptr noundef %req) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i16 [ %call, %sw.default ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_bdev_parse_io_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_bdev_report_zone_cb(ptr nocapture noundef readonly %z, i32 noundef %i, ptr nocapture noundef %d) #0 align 64 {
entry:
  %zdesc = alloca %struct.nvme_zone_descriptor, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zrasf = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %zrasf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %zrasf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %1 to i32
  %cond = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 4
  %2 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cond, align 1
  %conv2 = zext i8 %3 to i32
  %arrayidx = getelementptr [8 x i32], ptr @nvmet_bdev_report_zone_cb.nvme_zrasf_to_blk_zcond, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv2)
  %cmp4.not = icmp eq i32 %5, %conv2
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup32_crit_edge

land.lhs.true.cleanup32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_zones = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %d, i32 0, i32 3
  %6 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nr_zones, align 8
  %out_nr_zones = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %out_nr_zones to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %out_nr_zones, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp6 = icmp ult i64 %7, %9
  br i1 %cmp6, label %if.then8, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zdesc) #7
  %10 = call ptr @memset(ptr %zdesc, i32 0, i32 64)
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 8
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns, align 8
  %capacity = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 8
  %15 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %capacity, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %18, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %16, %sh_prom.i
  %19 = tail call i64 @llvm.bswap.i64(i64 %shr.i) #7
  %zcap = getelementptr inbounds %struct.nvme_zone_descriptor, ptr %zdesc, i32 0, i32 4
  %20 = ptrtoint ptr %zcap to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %zcap, align 8
  %21 = ptrtoint ptr %z to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %z, align 8
  %shr.i53 = lshr i64 %22, %sh_prom.i
  %23 = tail call i64 @llvm.bswap.i64(i64 %shr.i53) #7
  %zslba = getelementptr inbounds %struct.nvme_zone_descriptor, ptr %zdesc, i32 0, i32 5
  %24 = ptrtoint ptr %zslba to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %zslba, align 8
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns, align 8
  %wp = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 2
  %27 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wp, align 8
  %blksize_shift.i54 = getelementptr inbounds %struct.nvmet_ns, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %blksize_shift.i54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blksize_shift.i54, align 8
  %sub.i55 = add i32 %30, -9
  %sh_prom.i56 = zext i32 %sub.i55 to i64
  %shr.i57 = lshr i64 %28, %sh_prom.i56
  %31 = tail call i64 @llvm.bswap.i64(i64 %shr.i57) #7
  %wp15 = getelementptr inbounds %struct.nvme_zone_descriptor, ptr %zdesc, i32 0, i32 6
  %32 = ptrtoint ptr %wp15 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %wp15, align 8
  %reset = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 6
  %33 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  %conv18 = select i1 %tobool.not, i8 0, i8 4
  %za = getelementptr inbounds %struct.nvme_zone_descriptor, ptr %zdesc, i32 0, i32 2
  %35 = ptrtoint ptr %za to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv18, ptr %za, align 2
  %cond19 = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 4
  %36 = ptrtoint ptr %cond19 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cond19, align 1
  %shl = shl i8 %37, 4
  %zs = getelementptr inbounds %struct.nvme_zone_descriptor, ptr %zdesc, i32 0, i32 1
  %38 = ptrtoint ptr %zs to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %shl, ptr %zs, align 1
  %type = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 3
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 8
  %41 = ptrtoint ptr %zdesc to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %zdesc, align 8
  %out_buf_offset = getelementptr inbounds %struct.nvmet_report_zone_data, ptr %d, i32 0, i32 1
  %42 = ptrtoint ptr %out_buf_offset to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %out_buf_offset, align 8
  %conv23 = trunc i64 %43 to i32
  %call24 = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %12, i32 noundef %conv23, ptr noundef nonnull %zdesc, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call24)
  %tobool25.not = icmp eq i16 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup32.critedge

if.end27:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %out_buf_offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %out_buf_offset, align 8
  %add = add i64 %45, 64
  store i64 %add, ptr %out_buf_offset, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zdesc) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end.if.end30_crit_edge
  %46 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %nr_zones, align 8
  %inc = add i64 %47, 1
  store i64 %inc, ptr %nr_zones, align 8
  br label %cleanup32

cleanup32.critedge:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zdesc) #7
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.critedge, %if.end30, %land.lhs.true.cleanup32_crit_edge
  %retval.1 = phi i32 [ 0, %if.end30 ], [ 0, %land.lhs.true.cleanup32_crit_edge ], [ -22, %cleanup32.critedge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_zone_mgmt(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zmgmt_send_scan_cb(ptr nocapture noundef readonly %z, i32 noundef %i, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.nvmet_zone_mgmt_send_all_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %zsa = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %zsa to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zsa, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cond = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 4
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cond15 = icmp eq i8 %8, 4
  br i1 %cond15, label %sw.bb.sw.epilog14_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog14_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.bb1:                                           ; preds = %entry
  %cond2 = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 4
  %9 = ptrtoint ptr %cond2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cond2, align 1
  %11 = and i8 %10, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch = icmp eq i8 %11, 2
  br i1 %switch, label %sw.bb1.sw.epilog14_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.sw.epilog14_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.bb7:                                           ; preds = %entry
  %cond8 = getelementptr inbounds %struct.blk_zone, ptr %z, i32 0, i32 4
  %12 = ptrtoint ptr %cond8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cond8, align 1
  %.off19 = add i8 %13, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off19)
  %switch20 = icmp ult i8 %.off19, 3
  br i1 %switch20, label %sw.bb7.sw.epilog14_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7.sw.epilog14_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb7.sw.epilog14_crit_edge, %sw.bb1.sw.epilog14_crit_edge, %sw.bb.sw.epilog14_crit_edge
  %14 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d, align 4
  tail call void @_set_bit(i32 noundef %i, ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog14, %sw.bb7.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog14 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_next_bio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @blk_to_nvme_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @nvmet_bdev_execute_zone_mgmt_recv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/zns.c", i32 304, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvmet_bdev_execute_zone_mgmt_send.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/nvme/target/zns.c", i32 505, i32 2}
!5 = !{ptr @nvmet_bdev_report_zone_cb.nvme_zrasf_to_blk_zcond, !6, !"nvme_zrasf_to_blk_zcond", i1 false, i1 false}
!6 = !{!"../drivers/nvme/target/zns.c", i32 198, i32 28}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/zns.c", i32 420, i32 4}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i32 0, i32 33}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2154364010, i64 2154368563, i64 2154364047, i64 2154364103, i64 2154364137, i64 2154364161, i64 2154364202, i64 2154364223, i64 2154364251, i64 2154364285}
