; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/io-cmd-bdev.c_pt.bc'
source_filename = "../drivers/nvme/target/io-cmd-bdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvme_id_ns = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, i16, [18 x i8], i32, [3 x i8], i8, i16, i16, [16 x i8], [8 x i8], [16 x %struct.nvme_lbaf], [192 x i8], [3712 x i8] }
%struct.nvme_lbaf = type { i16, i8, i8 }
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvme_write_zeroes_cmd = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_dsm_range = type { i32, i32, i64 }
%struct.nvme_dsm_cmd = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i32, i32, [4 x i32] }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }

@nvmet_bdev_ns_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nvmet: failed to open block device %s: (%ld)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_bdev_ns_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/nvme/target/io-cmd-bdev.c\00", [62 x i8] zeroinitializer }, align 32
@nvmet_bdev_ns_enable._entry_ptr = internal global ptr @nvmet_bdev_ns_enable._entry, section ".printk_index", align 4
@t10_pi_type1_crc = external dso_local constant %struct.blk_integrity_profile, align 4
@t10_pi_type3_crc = external dso_local constant %struct.blk_integrity_profile, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@nvmet_bdev_alloc_bip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nvmet: Unable to locate bio_integrity\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_bdev_alloc_bip\00", [43 x i8] zeroinitializer }, align 32
@nvmet_bdev_alloc_bip._entry_ptr = internal global ptr @nvmet_bdev_alloc_bip._entry, section ".printk_index", align 4
@nvmet_bdev_alloc_bip._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvmet: Unable to allocate bio_integrity_payload\0A\00", [45 x i8] zeroinitializer }, align 32
@nvmet_bdev_alloc_bip._entry_ptr.7 = internal global ptr @nvmet_bdev_alloc_bip._entry.5, section ".printk_index", align 4
@nvmet_bdev_alloc_bip._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvmet: bio_integrity_add_page() failed; %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nvmet_bdev_alloc_bip._entry_ptr.10 = internal global ptr @nvmet_bdev_alloc_bip._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 8]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 84, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 190, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 197, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [37 x i8] c"../drivers/nvme/target/io-cmd-bdev.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 212, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @nvmet_bdev_alloc_bip._entry, ptr @nvmet_bdev_alloc_bip._entry.5, ptr @nvmet_bdev_alloc_bip._entry.8, ptr @nvmet_bdev_alloc_bip._entry_ptr, ptr @nvmet_bdev_alloc_bip._entry_ptr.10, ptr @nvmet_bdev_alloc_bip._entry_ptr.7, ptr @nvmet_bdev_ns_enable._entry, ptr @nvmet_bdev_ns_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_ns_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_alloc_bip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_alloc_bip._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_bdev_alloc_bip._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvmet_bdev_set_limits(ptr nocapture noundef readonly %bdev, ptr nocapture noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %physical_block_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 8
  %2 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_block_size, align 4
  %logical_block_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size, align 4
  %div = udiv i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %div, i32 65536) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i = icmp eq i32 %6, 0
  %7 = trunc i32 %6 to i16
  %.op.i = add i16 %7, -1
  %conv.i = select i1 %cmp2.i, i16 0, i16 %.op.i
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %nsfeat = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 3
  %9 = ptrtoint ptr %nsfeat to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nsfeat, align 8
  %nawun = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 13
  %11 = ptrtoint ptr %nawun to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %8, ptr %nawun, align 2
  %nawupf = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 14
  %12 = ptrtoint ptr %nawupf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %nawupf, align 4
  %nacwu = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 15
  %13 = ptrtoint ptr %nacwu to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %nacwu, align 2
  %14 = or i8 %10, 18
  store i8 %14, ptr %nsfeat, align 8
  %npwg = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 21
  %15 = ptrtoint ptr %npwg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %8, ptr %npwg, align 8
  %npwa = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 22
  %16 = ptrtoint ptr %npwa to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %8, ptr %npwa, align 2
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 18
  %17 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %discard_granularity, align 4
  %19 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %logical_block_size, align 4
  %div9 = udiv i32 %18, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %div9, i32 65536) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.i34 = icmp eq i32 %21, 0
  %22 = trunc i32 %21 to i16
  %.op.i35 = add i16 %22, -1
  %conv.i36 = select i1 %cmp2.i34, i16 0, i16 %.op.i35
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv.i36) #7
  %npdg = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 23
  %24 = ptrtoint ptr %npdg to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %npdg, align 4
  %npda = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 24
  %25 = ptrtoint ptr %npda to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %npda, align 2
  %io_opt = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 12
  %26 = ptrtoint ptr %io_opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_opt, align 4
  %28 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %logical_block_size, align 4
  %div13 = udiv i32 %27, %29
  %30 = tail call i32 @llvm.umin.i32(i32 %div13, i32 65536) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2.i37 = icmp eq i32 %30, 0
  %31 = trunc i32 %30 to i16
  %.op.i38 = add i16 %31, -1
  %conv.i39 = select i1 %cmp2.i37, i16 0, i16 %.op.i38
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i39) #7
  %nows = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 25
  %33 = ptrtoint ptr %nows to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %nows, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_bdev_ns_disable(ptr nocapture noundef %ns) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blkdev_put(ptr noundef nonnull %1, i32 noundef 3) #7
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bdev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_bdev_ns_enable(ptr noundef %ns) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_path = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 13
  %0 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_path, align 4
  %call = tail call ptr @blkdev_get_by_path(ptr noundef %1, i32 noundef 3, ptr noundef null) #7
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bdev, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -15 to ptr)
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_path, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bdev, align 8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %8, 9
  %size = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %shl.i, ptr %size, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end11.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end11.do.body.i.preheader_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 9
  %12 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %13
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.i, %if.end11.do.body.i.preheader_crit_edge
  %size.addr.0.i.ph = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 512, %if.end11.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %size.addr.0.i = phi i32 [ %shr.i, %do.body.i.do.body.i_crit_edge ], [ %size.addr.0.i.ph, %do.body.i.preheader ]
  %bits.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 8, %do.body.i.preheader ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i = lshr i32 %size.addr.0.i, 1
  %cmp.i42 = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i42, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 5
  %14 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %blksize_shift, align 8
  %pi_type = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 21
  %15 = ptrtoint ptr %pi_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pi_type, align 8
  %metadata_size = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 22
  %16 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %metadata_size, align 4
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_disk.i.i, align 8
  %queue.i.i.i = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue.i.i.i, align 4
  %integrity.i.i.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %integrity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %integrity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %blksize_bits.exit.nvmet_bdev_ns_enable_integrity.exit_crit_edge, label %if.then.i

blksize_bits.exit.nvmet_bdev_ns_enable_integrity.exit_crit_edge: ; preds = %blksize_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_bdev_ns_enable_integrity.exit

if.then.i:                                        ; preds = %blksize_bits.exit
  %tuple_size.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 18, i32 2
  %23 = ptrtoint ptr %tuple_size.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tuple_size.i, align 1
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %metadata_size, align 4
  %26 = ptrtoint ptr %integrity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %integrity.i.i.i, align 4
  %cmp.i43 = icmp eq ptr %27, @t10_pi_type1_crc
  br i1 %cmp.i43, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %pi_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %pi_type, align 8
  br label %nvmet_bdev_ns_enable_integrity.exit

if.else.i:                                        ; preds = %if.then.i
  %cmp4.i = icmp eq ptr %27, @t10_pi_type3_crc
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %pi_type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %pi_type, align 8
  br label %nvmet_bdev_ns_enable_integrity.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %metadata_size, align 4
  br label %nvmet_bdev_ns_enable_integrity.exit

nvmet_bdev_ns_enable_integrity.exit:              ; preds = %if.else8.i, %if.then6.i, %if.then2.i, %blksize_bits.exit.nvmet_bdev_ns_enable_integrity.exit_crit_edge
  %31 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %nvmet_bdev_ns_enable_integrity.exit.cleanup_crit_edge, label %bdev_is_zoned.exit

nvmet_bdev_ns_enable_integrity.exit.cleanup_crit_edge: ; preds = %nvmet_bdev_ns_enable_integrity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bdev_is_zoned.exit:                               ; preds = %nvmet_bdev_ns_enable_integrity.exit
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 37, i32 27
  %33 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.then19, label %bdev_is_zoned.exit.cleanup_crit_edge

bdev_is_zoned.exit.cleanup_crit_edge:             ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %bdev_is_zoned.exit
  %call20 = tail call zeroext i1 @nvmet_bdev_zns_enable(ptr noundef %ns) #7
  br i1 %call20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then19
  %35 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev, align 8
  %tobool.not.i47 = icmp eq ptr %36, null
  br i1 %tobool.not.i47, label %if.then21.cleanup_crit_edge, label %if.then.i48

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i48:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blkdev_put(ptr noundef nonnull %36, i32 noundef 3) #7
  %37 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bdev, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %csi = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 23
  %38 = ptrtoint ptr %csi to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %csi, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then.i48, %if.then21.cleanup_crit_edge, %bdev_is_zoned.exit.cleanup_crit_edge, %nvmet_bdev_ns_enable_integrity.exit.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %if.end22 ], [ 0, %bdev_is_zoned.exit.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ -22, %if.then.i48 ], [ 0, %nvmet_bdev_ns_enable_integrity.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_bdev_zns_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvmet_bdev_ns_revalidate(ptr nocapture noundef %ns) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %3, 9
  %size = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 6
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl.i, ptr %size, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @blk_to_nvme_status(ptr nocapture noundef %req, i8 noundef zeroext %blk_sts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %blk_sts to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %blk_sts, label %sw.default13 [
    i8 0, label %entry.cleanup_crit_edge
    i8 3, label %sw.bb
    i8 5, label %sw.bb4
    i8 1, label %sw.bb6
    i8 7, label %sw.bb10
  ], !prof !28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %1 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 48, ptr %error_loc, align 4
  br label %sw.epilog15

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc5 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %2 = ptrtoint ptr %error_loc5 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 40, ptr %error_loc5, align 4
  br label %sw.epilog15

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc7 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %3 = ptrtoint ptr %error_loc7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %error_loc7, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 8
  %8 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %switch = icmp eq i8 %8, 8
  %. = select i1 %switch, i16 16771, i16 16385
  br label %sw.epilog15

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc11 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %9 = ptrtoint ptr %error_loc11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %error_loc11, align 4
  br label %sw.epilog15

sw.default13:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc14 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %10 = ptrtoint ptr %error_loc14 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %error_loc14, align 4
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.default13, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb
  %status.0 = phi i16 [ 16390, %sw.default13 ], [ 646, %sw.bb10 ], [ 16512, %sw.bb4 ], [ 16513, %sw.bb ], [ %., %sw.bb6 ]
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %14, label %sw.epilog15.cleanup.sink.split_crit_edge [
    i8 2, label %sw.epilog15.sw.bb19_crit_edge
    i8 1, label %sw.epilog15.sw.bb19_crit_edge42
    i8 8, label %sw.bb21
  ]

sw.epilog15.sw.bb19_crit_edge42:                  ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

sw.epilog15.sw.bb19_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

sw.epilog15.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %sw.epilog15.sw.bb19_crit_edge, %sw.epilog15.sw.bb19_crit_edge42
  %slba = getelementptr inbounds %struct.nvme_rw_command, ptr %12, i32 0, i32 7
  br label %cleanup.sink.split.sink.split

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #9
  %slba23 = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %12, i32 0, i32 7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb21, %sw.bb19
  %slba23.sink = phi ptr [ %slba23, %sw.bb21 ], [ %slba, %sw.bb19 ]
  %16 = ptrtoint ptr %slba23.sink to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %slba23.sink, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %sw.epilog15.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ 0, %sw.epilog15.cleanup.sink.split_crit_edge ], [ %18, %cleanup.sink.split.sink.split ]
  %error_slba = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 19
  %19 = ptrtoint ptr %error_slba to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %.sink, ptr %error_slba, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %entry.cleanup_crit_edge ], [ %status.0, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_bdev_flush(ptr nocapture noundef readonly %req) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %call = tail call i32 @blkdev_issue_flush(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i16 0, i16 16390
  ret i16 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_bdev_parse_io_cmd(ptr noundef %req) local_unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %3, label %sw.default [
    i8 2, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge21
    i8 0, label %sw.bb4
    i8 9, label %sw.bb6
    i8 8, label %sw.bb8
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %5 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvmet_bdev_execute_rw, ptr %execute, align 4
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sq, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pi_support = getelementptr inbounds %struct.nvmet_ctrl, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pi_support, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %land.lhs.true

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %sw.bb
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns, align 8
  %pi_type.i = getelementptr inbounds %struct.nvmet_ns, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %pi_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pi_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %land.lhs.true.return_crit_edge, label %nvmet_ns_has_pi.exit

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

nvmet_ns_has_pi.exit:                             ; preds = %land.lhs.true
  %metadata_size.i = getelementptr inbounds %struct.nvmet_ns, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %metadata_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp.i = icmp eq i32 %17, 8
  br i1 %cmp.i, label %if.then, label %nvmet_ns_has_pi.exit.return_crit_edge

nvmet_ns_has_pi.exit.return_crit_edge:            ; preds = %nvmet_ns_has_pi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %nvmet_ns_has_pi.exit
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.nvme_rw_command, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length.i, align 8
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #7
  %conv.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %21 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %metadata_size.i, align 4
  %mul.i = mul i32 %add.i, %22
  %metadata_len = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 12
  %23 = ptrtoint ptr %metadata_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %metadata_len, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute5 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %24 = ptrtoint ptr %execute5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nvmet_bdev_execute_flush, ptr %execute5, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute7 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %25 = ptrtoint ptr %execute7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nvmet_bdev_execute_dsm, ptr %execute7, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute9 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %26 = ptrtoint ptr %execute9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nvmet_bdev_execute_write_zeroes, ptr %execute9, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call zeroext i16 @nvmet_report_invalid_opcode(ptr noundef %req) #7
  br label %return

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %if.then, %nvmet_ns_has_pi.exit.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ %call10, %sw.default ], [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %if.then ], [ 0, %nvmet_ns_has_pi.exit.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_execute_rw(ptr noundef %req) #2 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  %prot_miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_cnt1 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %sg_cnt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_cnt1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #7
  %2 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %prot_miter) #7
  %3 = call ptr @memset(ptr %prot_miter, i32 255, i32 44)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %length.i = getelementptr inbounds %struct.nvme_rw_command, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length.i, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %ns.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns.i, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blksize_shift.i, align 8
  %shl.i = shl i32 %add.i, %12
  %metadata_len = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %metadata_len, align 4
  %add = add i32 %shl.i, %14
  %call2 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %add) #7
  br i1 %call2, label %if.end, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %sg_cnt1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_cnt1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #7
  br label %cleanup83

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %if.then7, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %control = getelementptr inbounds %struct.nvme_rw_command, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %control, align 2
  %23 = and i16 %22, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool10.not = icmp eq i16 %23, 0
  %spec.select = select i1 %tobool10.not, i32 34817, i32 165889
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end5.if.end15_crit_edge
  %op.1 = phi i32 [ %spec.select, %if.then7 ], [ 0, %if.end5.if.end15_crit_edge ]
  %iter_flags.0 = phi i32 [ 2, %if.then7 ], [ 4, %if.end5.if.end15_crit_edge ]
  %sg16 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 5
  %24 = ptrtoint ptr %sg16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg16, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !30

do.body2.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

sg_page.exit:                                     ; preds = %if.end15
  %28 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns.i, align 8
  %slba = getelementptr inbounds %struct.nvme_rw_command, ptr %18, i32 0, i32 7
  %30 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %slba, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #7
  %blksize_shift.i152 = getelementptr inbounds %struct.nvmet_ns, ptr %29, i32 0, i32 5
  %33 = ptrtoint ptr %blksize_shift.i152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blksize_shift.i152, align 8
  %sub.i = add i32 %34, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i153 = shl i64 %32, %sh_prom.i
  %transfer_len.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %35 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %36)
  %cmp.i = icmp ult i32 %36, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp1.i = icmp slt i32 %16, 9
  %or.cond = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond, label %if.then27, label %if.else28

if.then27:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %inline_bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 7
  tail call void @bio_init(ptr noundef %37, ptr noundef %inline_bvec, i16 noundef zeroext 8) #7
  br label %if.end32

if.else28:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.umin.i32(i32 %1, i32 256) #7
  %conv30 = trunc i32 %38 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv30, ptr noundef nonnull @fs_bio_set) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then27
  %bio.0 = phi ptr [ %37, %if.then27 ], [ %call.i, %if.else28 ]
  %39 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ns.i, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 3
  %43 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %44, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 1
  %45 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %46, %42
  br i1 %cmp.not.i, label %if.end32.bio_set_dev.exit_crit_edge, label %if.then.i

if.end32.bio_set_dev.exit_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i = and i16 %44, -2177
  %47 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end32.bio_set_dev.exit_crit_edge
  %48 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio.0) #7
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8
  %49 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %shl.i153, ptr %bi_iter, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 11
  %50 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %req, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 10
  %51 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @nvmet_bio_done, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %op.1, ptr %bi_opf, align 8
  call void @blk_start_plug(ptr noundef nonnull %plug) #7
  %53 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not = icmp eq i32 %54, 0
  br i1 %tobool35.not, label %bio_set_dev.exit.if.end37_crit_edge, label %if.then36

bio_set_dev.exit.if.end37_crit_edge:              ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %metadata_sg = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 6
  %55 = ptrtoint ptr %metadata_sg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %metadata_sg, align 8
  %metadata_sg_cnt = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 10
  %57 = ptrtoint ptr %metadata_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %metadata_sg_cnt, align 4
  call void @sg_miter_start(ptr noundef nonnull %prot_miter, ptr noundef %56, i32 noundef %58, i32 noundef %iter_flags.0) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %bio_set_dev.exit.if.end37_crit_edge
  %59 = ptrtoint ptr %sg_cnt1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_cnt1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp40180 = icmp sgt i32 %60, 0
  br i1 %cmp40180, label %while.cond.preheader.preheader, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.cond.preheader.preheader:                   ; preds = %if.end37
  %61 = ptrtoint ptr %sg16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sg16, align 4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.preheader
  %sg_cnt.0185 = phi i32 [ %dec, %while.end.while.cond.preheader_crit_edge ], [ %1, %while.cond.preheader.preheader ]
  %i.0184 = phi i32 [ %inc, %while.end.while.cond.preheader_crit_edge ], [ 0, %while.cond.preheader.preheader ]
  %sector.0183 = phi i64 [ %add67, %while.end.while.cond.preheader_crit_edge ], [ %shl.i153, %while.cond.preheader.preheader ]
  %sg.0182 = phi ptr [ %call68, %while.end.while.cond.preheader_crit_edge ], [ %62, %while.cond.preheader.preheader ]
  %bio.1181 = phi ptr [ %bio.2178, %while.end.while.cond.preheader_crit_edge ], [ %bio.0, %while.cond.preheader.preheader ]
  %63 = ptrtoint ptr %sg.0182 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sg.0182, align 4
  %and.i.i154176 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154176)
  %tobool.i.not.i155177 = icmp eq i32 %and.i.i154176, 0
  br i1 %tobool.i.not.i155177, label %sg_page.exit158.lr.ph, label %while.cond.preheader.do.body2.i156_crit_edge, !prof !30

while.cond.preheader.do.body2.i156_crit_edge:     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i156

sg_page.exit158.lr.ph:                            ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0182, i32 0, i32 2
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0182, i32 0, i32 1
  %65 = call i32 @llvm.umin.i32(i32 %sg_cnt.0185, i32 256) #7
  %conv58 = trunc i32 %65 to i16
  br label %sg_page.exit158

do.body2.i156:                                    ; preds = %cleanup.do.body2.i156_crit_edge, %while.cond.preheader.do.body2.i156_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

sg_page.exit158:                                  ; preds = %cleanup.sg_page.exit158_crit_edge, %sg_page.exit158.lr.ph
  %66 = phi i32 [ %64, %sg_page.exit158.lr.ph ], [ %90, %cleanup.sg_page.exit158_crit_edge ]
  %bio.2178 = phi ptr [ %bio.1181, %sg_page.exit158.lr.ph ], [ %call.i159, %cleanup.sg_page.exit158_crit_edge ]
  %and.i157 = and i32 %66, -4
  %67 = inttoptr i32 %and.i157 to ptr
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length, align 4
  %70 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset, align 4
  %call43 = call i32 @bio_add_page(ptr noundef %bio.2178, ptr noundef %67, i32 noundef %69, i32 noundef %71) #7
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %73)
  %cmp45.not = icmp eq i32 %call43, %73
  br i1 %cmp45.not, label %while.end, label %while.body

while.body:                                       ; preds = %sg_page.exit158
  %74 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool48.not = icmp eq i32 %75, 0
  br i1 %tobool48.not, label %while.body.if.end56_crit_edge, label %if.then49

while.body.if.end56_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then49:                                        ; preds = %while.body
  %call50 = call fastcc i32 @nvmet_bdev_alloc_bip(ptr noundef %req, ptr noundef %bio.2178, ptr noundef nonnull %prot_miter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end56_crit_edge, label %cleanup.thread, !prof !30

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

cleanup.thread:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio.2178, i32 0, i32 6
  %76 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %bio.2178) #7
  br label %cleanup83

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %while.body.if.end56_crit_edge
  %call.i159 = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv58, ptr noundef nonnull @fs_bio_set) #7
  %77 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ns.i, align 8
  %bdev61 = getelementptr inbounds %struct.nvmet_ns, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %bdev61 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bdev61, align 8
  %bi_flags.i.i160 = getelementptr inbounds %struct.bio, ptr %call.i159, i32 0, i32 3
  %81 = ptrtoint ptr %bi_flags.i.i160 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %bi_flags.i.i160, align 4
  %conv1.i.i161 = and i16 %82, -2049
  store i16 %conv1.i.i161, ptr %bi_flags.i.i160, align 4
  %bi_bdev.i162 = getelementptr inbounds %struct.bio, ptr %call.i159, i32 0, i32 1
  %83 = ptrtoint ptr %bi_bdev.i162 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bi_bdev.i162, align 4
  %cmp.not.i163 = icmp eq ptr %84, %80
  br i1 %cmp.not.i163, label %if.end56.cleanup_crit_edge, label %if.then.i165

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i165:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i164 = and i16 %82, -2177
  %85 = ptrtoint ptr %bi_flags.i.i160 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv1.i8.i164, ptr %bi_flags.i.i160, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i165, %if.end56.cleanup_crit_edge
  %86 = ptrtoint ptr %bi_bdev.i162 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %80, ptr %bi_bdev.i162, align 4
  call void @bio_associate_blkg(ptr noundef %call.i159) #7
  %bi_iter62 = getelementptr inbounds %struct.bio, ptr %call.i159, i32 0, i32 8
  %87 = ptrtoint ptr %bi_iter62 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %sector.0183, ptr %bi_iter62, align 8
  %bi_opf64 = getelementptr inbounds %struct.bio, ptr %call.i159, i32 0, i32 2
  %88 = ptrtoint ptr %bi_opf64 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %op.1, ptr %bi_opf64, align 8
  call void @bio_chain(ptr noundef %call.i159, ptr noundef %bio.2178) #7
  call void @submit_bio(ptr noundef %bio.2178) #7
  %89 = ptrtoint ptr %sg.0182 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg.0182, align 4
  %and.i.i154 = and i32 %90, 1
  %tobool.i.not.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.i.not.i155, label %cleanup.sg_page.exit158_crit_edge, label %cleanup.do.body2.i156_crit_edge, !prof !30

cleanup.do.body2.i156_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i156

cleanup.sg_page.exit158_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_page.exit158

while.end:                                        ; preds = %sg_page.exit158
  %shr = lshr i32 %call43, 9
  %conv66 = zext i32 %shr to i64
  %add67 = add i64 %sector.0183, %conv66
  %dec = add i32 %sg_cnt.0185, -1
  %inc = add nuw nsw i32 %i.0184, 1
  %call68 = call ptr @sg_next(ptr noundef %sg.0182) #7
  %91 = ptrtoint ptr %sg_cnt1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sg_cnt1, align 8
  %cmp40 = icmp slt i32 %inc, %92
  br i1 %cmp40, label %while.end.while.cond.preheader_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.end:                                          ; preds = %while.end.for.end_crit_edge, %if.end37.for.end_crit_edge
  %bio.1.lcssa = phi ptr [ %bio.0, %if.end37.for.end_crit_edge ], [ %bio.2178, %while.end.for.end_crit_edge ]
  %93 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool70.not = icmp eq i32 %94, 0
  br i1 %tobool70.not, label %for.end.if.end82_crit_edge, label %if.then71

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then71:                                        ; preds = %for.end
  %call72 = call fastcc i32 @nvmet_bdev_alloc_bip(ptr noundef %req, ptr noundef %bio.1.lcssa, ptr noundef nonnull %prot_miter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.if.end82_crit_edge, label %if.then80, !prof !30

if.then71.if.end82_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then80:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %bi_status.i167 = getelementptr inbounds %struct.bio, ptr %bio.1.lcssa, i32 0, i32 6
  %95 = ptrtoint ptr %bi_status.i167 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 10, ptr %bi_status.i167, align 2
  call void @bio_endio(ptr noundef %bio.1.lcssa) #7
  br label %cleanup83

if.end82:                                         ; preds = %if.then71.if.end82_crit_edge, %for.end.if.end82_crit_edge
  call void @submit_bio(ptr noundef %bio.1.lcssa) #7
  call void @blk_finish_plug(ptr noundef nonnull %plug) #7
  br label %cleanup83

cleanup83:                                        ; preds = %if.end82, %if.then80, %cleanup.thread, %if.then4, %entry.cleanup83_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %prot_miter) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_execute_flush(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %inline_bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 7
  tail call void @bio_init(ptr noundef %0, ptr noundef %inline_bvec, i16 noundef zeroext 8) #7
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %6, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %8, %4
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i = and i16 %6, -2177
  %9 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %10 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %0) #7
  %bi_private = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 11
  %11 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  %12 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nvmet_bio_done, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262145, ptr %bi_opf, align 8
  tail call void @submit_bio(ptr noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %bio_set_dev.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_execute_dsm(ptr noundef %req) #2 align 64 {
entry:
  %range.i = alloca %struct.nvme_dsm_range, align 8
  %bio.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %nr.i = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %add.i = shl i32 %4, 4
  %mul.i = add i32 %add.i, 16
  %call1 = tail call zeroext i1 @nvmet_check_data_len_lte(ptr noundef %req, i32 noundef %mul.i) #7
  br i1 %call1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 8
  %attributes = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attributes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %8)
  %cond = icmp eq i32 %8, 67108864
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i) #7
  %9 = getelementptr inbounds %struct.nvme_dsm_range, ptr %range.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvme_dsm_range, ptr %range.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %range.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio.i) #7
  %12 = ptrtoint ptr %bio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bio.i, align 4
  %ns1.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %error_slba.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.024.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i7 = shl i32 %i.024.i, 4
  %call.i = call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %req, i32 noundef %mul.i7, ptr noundef nonnull %range.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %13 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns1.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i.i, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %10, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #7
  %blksize_shift.i.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 5
  %20 = ptrtoint ptr %blksize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blksize_shift.i.i.i, align 8
  %sub.i.i.i = add i32 %21, -9
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shl.i.i.i = shl i64 %19, %sh_prom.i.i.i
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #7
  %shl.i.i = shl i32 %24, %sub.i.i.i
  %conv.i.i = zext i32 %shl.i.i to i64
  %call2.i.i = call i32 @__blkdev_issue_discard(ptr noundef %16, i64 noundef %shl.i.i.i, i64 noundef %conv.i.i, i32 noundef 3264, i32 noundef 0, ptr noundef nonnull %bio.i) #7
  %25 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call2.i.i, label %nvmet_bdev_discard_range.exit.i [
    i32 0, label %if.end.i.for.inc.i_crit_edge
    i32 -95, label %if.end.i.for.inc.i_crit_edge9
  ]

if.end.i.for.inc.i_crit_edge9:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

nvmet_bdev_discard_range.exit.i:                  ; preds = %if.end.i
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %10, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #7
  %29 = ptrtoint ptr %error_slba.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %error_slba.i.i, align 8
  %call5.i.i = call zeroext i16 @errno_to_nvme_status(ptr noundef %req, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call5.i.i)
  %tobool2.not.i = icmp eq i16 %call5.i.i, 0
  br i1 %tobool2.not.i, label %nvmet_bdev_discard_range.exit.i.for.inc.i_crit_edge, label %nvmet_bdev_discard_range.exit.i.for.end.i_crit_edge

nvmet_bdev_discard_range.exit.i.for.end.i_crit_edge: ; preds = %nvmet_bdev_discard_range.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

nvmet_bdev_discard_range.exit.i.for.inc.i_crit_edge: ; preds = %nvmet_bdev_discard_range.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %nvmet_bdev_discard_range.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge9
  %inc.i = add i32 %i.024.i, 1
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 8
  %nr.i8 = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %nr.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr.i8, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33) #7
  %cmp.not.i = icmp ugt i32 %inc.i, %34
  br i1 %cmp.not.i, label %for.end.thread.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %nvmet_bdev_discard_range.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %status.1.i = phi i16 [ %call.i, %for.body.i.for.end.i_crit_edge ], [ %call5.i.i, %nvmet_bdev_discard_range.exit.i.for.end.i_crit_edge ]
  %35 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bio.i, align 4
  %tobool5.not.i = icmp eq ptr %36, null
  br i1 %tobool5.not.i, label %for.end.i.if.else10.i_crit_edge, label %if.then8.i

for.end.i.if.else10.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10.i

for.end.thread.i:                                 ; preds = %for.inc.i
  %37 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bio.i, align 4
  %tobool5.not26.i = icmp eq ptr %38, null
  br i1 %tobool5.not26.i, label %for.end.thread.i.if.else10.i_crit_edge, label %if.else.i

for.end.thread.i.if.else10.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10.i

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 10
  %40 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nvmet_bio_done, ptr %bi_end_io.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %bi_status.i.i, align 2
  call void @bio_endio(ptr noundef nonnull %36) #7
  br label %nvmet_bdev_execute_discard.exit

if.else.i:                                        ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %bi_private30.i = getelementptr inbounds %struct.bio, ptr %38, i32 0, i32 11
  %42 = ptrtoint ptr %bi_private30.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %req, ptr %bi_private30.i, align 4
  %bi_end_io31.i = getelementptr inbounds %struct.bio, ptr %38, i32 0, i32 10
  %43 = ptrtoint ptr %bi_end_io31.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @nvmet_bio_done, ptr %bi_end_io31.i, align 8
  call void @submit_bio(ptr noundef nonnull %38) #7
  br label %nvmet_bdev_execute_discard.exit

if.else10.i:                                      ; preds = %for.end.thread.i.if.else10.i_crit_edge, %for.end.i.if.else10.i_crit_edge
  %status.128.i = phi i16 [ 0, %for.end.thread.i.if.else10.i_crit_edge ], [ %status.1.i, %for.end.i.if.else10.i_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.128.i) #7
  br label %nvmet_bdev_execute_discard.exit

nvmet_bdev_execute_discard.exit:                  ; preds = %if.else10.i, %if.else.i, %if.then8.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #7
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #7
  br label %return

return:                                           ; preds = %sw.default, %nvmet_bdev_execute_discard.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bdev_execute_write_zeroes(ptr noundef %req) #2 align 64 {
entry:
  %bio = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio) #7
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 8
  %slba = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %slba, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #7
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksize_shift.i, align 8
  %sub.i = add i32 %9, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %7, %sh_prom.i
  %length = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i64
  %add = add nuw nsw i64 %conv, 1
  %shl = shl i64 %add, %sh_prom.i
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev, align 8
  %call4 = call i32 @__blkdev_issue_zeroout(ptr noundef %14, i64 noundef %shl.i, i64 noundef %shl, i32 noundef 3264, ptr noundef nonnull %bio, i32 noundef 0) #7
  %15 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bio, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bi_private = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 10
  %18 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nvmet_bio_done, ptr %bi_end_io, align 8
  call void @submit_bio(ptr noundef nonnull %16) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call zeroext i16 @errno_to_nvme_status(ptr noundef %req, i32 noundef %call4) #7
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_report_invalid_opcode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_bio_done(ptr noundef %bio) #2 align 64 {
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
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %3, label %sw.default13.i [
    i8 0, label %entry.blk_to_nvme_status.exit_crit_edge
    i8 3, label %sw.bb.i
    i8 5, label %sw.bb4.i
    i8 1, label %sw.bb6.i
    i8 7, label %sw.bb10.i
  ], !prof !28

entry.blk_to_nvme_status.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_to_nvme_status.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %error_loc.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 48, ptr %error_loc.i, align 4
  br label %sw.epilog15.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc5.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %error_loc5.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 40, ptr %error_loc5.i, align 4
  br label %sw.epilog15.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc7.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %error_loc7.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %error_loc7.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8
  %12 = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %switch.i = icmp eq i8 %12, 8
  %..i = select i1 %switch.i, i16 16771, i16 16385
  br label %sw.epilog15.i

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc11.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %error_loc11.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %error_loc11.i, align 4
  br label %sw.epilog15.i

sw.default13.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc14.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %error_loc14.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %error_loc14.i, align 4
  br label %sw.epilog15.i

sw.epilog15.i:                                    ; preds = %sw.default13.i, %sw.bb10.i, %sw.bb6.i, %sw.bb4.i, %sw.bb.i
  %status.0.i = phi i16 [ 16390, %sw.default13.i ], [ 646, %sw.bb10.i ], [ 16512, %sw.bb4.i ], [ 16513, %sw.bb.i ], [ %..i, %sw.bb6.i ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %18, label %sw.epilog15.i.cleanup.sink.split.i_crit_edge [
    i8 2, label %sw.epilog15.i.sw.bb19.i_crit_edge
    i8 1, label %sw.epilog15.i.sw.bb19.i_crit_edge5
    i8 8, label %sw.bb21.i
  ]

sw.epilog15.i.sw.bb19.i_crit_edge5:               ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19.i

sw.epilog15.i.sw.bb19.i_crit_edge:                ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19.i

sw.epilog15.i.cleanup.sink.split.i_crit_edge:     ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb19.i:                                        ; preds = %sw.epilog15.i.sw.bb19.i_crit_edge, %sw.epilog15.i.sw.bb19.i_crit_edge5
  %slba.i = getelementptr inbounds %struct.nvme_rw_command, ptr %16, i32 0, i32 7
  br label %cleanup.sink.split.sink.split.i

sw.bb21.i:                                        ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  %slba23.i = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %16, i32 0, i32 7
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %sw.bb21.i, %sw.bb19.i
  %slba23.sink.i = phi ptr [ %slba23.i, %sw.bb21.i ], [ %slba.i, %sw.bb19.i ]
  %20 = ptrtoint ptr %slba23.sink.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %slba23.sink.i, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %sw.epilog15.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 0, %sw.epilog15.i.cleanup.sink.split.i_crit_edge ], [ %22, %cleanup.sink.split.sink.split.i ]
  %error_slba.i = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %error_slba.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %.sink.i, ptr %error_slba.i, align 8
  br label %blk_to_nvme_status.exit

blk_to_nvme_status.exit:                          ; preds = %cleanup.sink.split.i, %entry.blk_to_nvme_status.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %entry.blk_to_nvme_status.exit_crit_edge ], [ %status.0.i, %cleanup.sink.split.i ]
  tail call void @nvmet_req_complete(ptr noundef %1, i16 noundef zeroext %retval.0.i) #7
  %24 = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 8
  %cmp.not.i = icmp eq ptr %24, %bio
  br i1 %cmp.not.i, label %blk_to_nvme_status.exit.nvmet_req_bio_put.exit_crit_edge, label %if.then.i

blk_to_nvme_status.exit.nvmet_req_bio_put.exit_crit_edge: ; preds = %blk_to_nvme_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvmet_req_bio_put.exit

if.then.i:                                        ; preds = %blk_to_nvme_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bio_put(ptr noundef %bio) #7
  br label %nvmet_req_bio_put.exit

nvmet_req_bio_put.exit:                           ; preds = %if.then.i, %blk_to_nvme_status.exit.nvmet_req_bio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_bdev_alloc_bip(ptr nocapture noundef readonly %req, ptr noundef %bio, ptr noundef %miter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %bdev = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk.i, align 8
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i.i, align 4
  %integrity.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %integrity.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %integrity.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %tobool.not85 = icmp eq ptr %integrity.i.i, null
  %tobool.not = or i1 %tobool.not.i.i, %tobool.not85
  br i1 %tobool.not, label %do.end, label %if.end, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %metadata_sg_cnt = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 10
  %10 = ptrtoint ptr %metadata_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %metadata_sg_cnt, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 256) #7
  %call6 = tail call ptr @bio_integrity_alloc(ptr noundef %bio, i32 noundef 3072, i32 noundef %12) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %13 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %15, 9
  %interval_exp.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interval_exp.i.i, align 2
  %conv.i.i = zext i8 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %shr.i.i = lshr i32 %shr, %sub.i.i
  %tuple_size.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %tuple_size.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tuple_size.i, align 1
  %conv.i = zext i8 %19 to i32
  %mul.i = mul nuw nsw i32 %shr.i.i, %conv.i
  %bi_size17 = getelementptr inbounds %struct.bio_integrity_payload, ptr %call6, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %bi_size17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %bi_size17, align 4
  %21 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter, align 8
  %23 = load i8, ptr %interval_exp.i.i, align 2
  %conv = zext i8 %23 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %shr19 = lshr i64 %22, %sh_prom
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call6, i32 0, i32 1
  %24 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %shr19, ptr %bip_iter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.not86 = icmp eq i32 %mul.i, 0
  br i1 %cmp.not86, label %if.end15.while.end_crit_edge, label %land.rhs.lr.ph

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end15
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end52.land.rhs_crit_edge, %land.rhs.lr.ph
  %resid.087 = phi i32 [ %mul.i, %land.rhs.lr.ph ], [ %sub44, %if.end52.land.rhs_crit_edge ]
  %call23 = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #7
  br i1 %call23, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %resid.087)
  %28 = ptrtoint ptr %miter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %miter, align 4
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr, align 4
  %32 = ptrtoint ptr %31 to i32
  %and = and i32 %32, 4095
  %call28 = tail call i32 @bio_integrity_add_page(ptr noundef %bio, ptr noundef %29, i32 noundef %27, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %27)
  %cmp29.not = icmp eq i32 %call28, %27
  br i1 %cmp29.not, label %if.end43, label %do.end40, !prof !30

do.end40:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call28) #10
  tail call void @sg_miter_stop(ptr noundef %miter) #7
  br label %cleanup

if.end43:                                         ; preds = %while.body
  %sub44 = sub i32 %resid.087, %27
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %34)
  %cmp46 = icmp ult i32 %27, %34
  br i1 %cmp46, label %if.then48, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %sub50.neg = sub i32 %27, %34
  %35 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %consumed, align 4
  %sub51 = add i32 %sub50.neg, %36
  store i32 %sub51, ptr %consumed, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end43.if.end52_crit_edge
  %cmp.not = icmp eq i32 %sub44, 0
  br i1 %cmp.not, label %if.end52.while.end_crit_edge, label %if.end52.land.rhs_crit_edge

if.end52.land.rhs_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end15.while.end_crit_edge
  tail call void @sg_miter_stop(ptr noundef %miter) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end40, %do.end11, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %13, %do.end11 ], [ -12, %do.end40 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_integrity_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_data_len_lte(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_from_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @errno_to_nvme_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/io-cmd-bdev.c", i32 84, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvmet_bdev_ns_enable._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvmet_bdev_ns_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/target/io-cmd-bdev.c", i32 190, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvmet_bdev_alloc_bip._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @nvmet_bdev_alloc_bip._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/nvme/target/io-cmd-bdev.c", i32 197, i32 3}
!13 = !{ptr @nvmet_bdev_alloc_bip._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nvmet_bdev_alloc_bip._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/nvme/target/io-cmd-bdev.c", i32 212, i32 4}
!17 = !{ptr @nvmet_bdev_alloc_bip._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvmet_bdev_alloc_bip._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2154320432, i64 2154324985, i64 2154320469, i64 2154320525, i64 2154320559, i64 2154320583, i64 2154320624, i64 2154320645, i64 2154320673, i64 2154320707}
!32 = !{!"branch_weights", i32 1, i32 2000}
