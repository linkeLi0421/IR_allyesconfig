; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/block.c_pt.bc'
source_filename = "../drivers/mmc/core/block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_queue = type { ptr, %struct.mmc_ctx, %struct.blk_mq_tag_set, ptr, ptr, %struct.spinlock, [3 x i32], i32, i8, i8, i8, i8, i8, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.mutex, %struct.work_struct }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mmc_blk_data = type { ptr, ptr, %struct.mmc_queue, %struct.list_head, %struct.list_head, i32, %struct.kref, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_blk_request = type { %struct.mmc_request, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_data }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mmc_blk_busy_data = type { ptr, i32 }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_blk_ioc_data = type { %struct.mmc_ioc_cmd, ptr, i64, ptr }
%struct.mmc_ioc_cmd = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mmc_rpmb_data = type { %struct.device, %struct.cdev, i32, i32, ptr, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mmc_queue_req = type { %struct.mmc_blk_request, ptr, i32, i32, ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.mmc_ioc_multi_cmd = type { i64, [0 x %struct.mmc_ioc_cmd] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }

@__UNIQUE_ID_alias280 = internal constant [26 x i8] c"mmc_block.alias=mmc:block\00", section ".modinfo", align 1
@__param_str_perdev_minors = internal constant [21 x i8] c"mmcblk.perdev_minors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@perdev_minors = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_perdev_minors = internal constant %struct.kernel_param { ptr @__param_str_perdev_minors, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @perdev_minors } }, section "__param", align 4
@__UNIQUE_ID_perdev_minorstype281 = internal constant [37 x i8] c"mmc_block.parmtype=perdev_minors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_perdev_minors282 = internal constant [67 x i8] c"mmc_block.parm=perdev_minors:Minors numbers to allocate per device\00", section ".modinfo", align 1
@mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc_block\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_blk_cqe_recovery\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mmc/core/block.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: CQE recovery start\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: CQE recovery done\0A\00", [41 x i8] zeroinitializer }, align 32
@mmc_blk_mq_issue_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmc_blk_mq_issue_rq.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmc_blk_mq_issue_rq.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmc_driver = internal global { %struct.mmc_driver, [40 x i8] } { %struct.mmc_driver { %struct.device_driver { ptr @.str.22, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_blk_pm_ops, ptr null, ptr null }, ptr @mmc_blk_probe, ptr @mmc_blk_remove, ptr @mmc_blk_shutdown }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@mmc_rpmb_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mmc_rpmb_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.88, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_mmc_block__287_3075_mmc_blk_init6 = internal global ptr @mmc_blk_init, section ".initcall6.init", align 4
@__exitcall_mmc_blk_exit = internal global ptr @mmc_blk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file288 = internal constant [42 x i8] c"mmc_block.file=drivers/mmc/core/mmc_block\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [22 x i8] c"mmc_block.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"mmc_block.description=Multimedia Card (MMC) block device driver\00", section ".modinfo", align 1
@mmc_blk_mq_rw_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: recovery failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_blk_mq_rw_recovery\00", [41 x i8] zeroinitializer }, align 32
@mmc_blk_mq_rw_recovery._entry_ptr = internal global ptr @mmc_blk_mq_rw_recovery._entry, section ".printk_index", align 4
@mmc_blk_clock_khz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mmc_blk_issue_drv_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: Locking boot partition ro until next power on failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_blk_issue_drv_op\00", [43 x i8] zeroinitializer }, align 32
@mmc_blk_issue_drv_op._entry_ptr = internal global ptr @mmc_blk_issue_drv_op._entry, section ".printk_index", align 4
@mmc_blk_issue_drv_op._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: unknown driver specific operation\0A\00", [55 x i8] zeroinitializer }, align 32
@mmc_blk_issue_drv_op._entry_ptr.14 = internal global ptr @mmc_blk_issue_drv_op._entry.12, section ".printk_index", align 4
@__mmc_blk_ioctl_cmd._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 564, ptr @.str.17, ptr @.str.18 }, align 1
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: cmd error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mmc_blk_ioctl_cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mmc_blk_ioctl_cmd._entry_ptr = internal global ptr @__mmc_blk_ioctl_cmd._entry, section ".printk_index", align 4
@__mmc_blk_ioctl_cmd._entry.19 = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 569, ptr @.str.17, ptr @.str.18 }, align 1
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: data error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__mmc_blk_ioctl_cmd._entry_ptr.21 = internal global ptr @__mmc_blk_ioctl_cmd._entry.19, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmcblk\00", [25 x i8] zeroinitializer }, align 32
@mmc_blk_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mmc_blk_fixups = internal constant { [25 x %struct.mmc_fixup], [328 x i8] } { [25 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr @.str.29, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.30, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.31, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.32, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.33, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.34, i64 0, i64 -1, i32 2, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.35, i64 0, i64 -1, i32 2, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.36, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.37, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.38, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.39, i64 0, i64 -1, i32 9, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_sd, i32 128 }, %struct.mmc_fixup { ptr @.str.40, i64 0, i64 -1, i32 39, i16 20552, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_sd, i32 128 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 19, i16 512, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 512 }, %struct.mmc_fixup { ptr @.str.41, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 512 }, %struct.mmc_fixup { ptr @.str.42, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.43, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.44, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.45, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.46, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.47, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.48, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.49, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.50, i64 0, i64 -1, i32 112, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 4096 }, %struct.mmc_fixup { ptr @.str.51, i64 0, i64 -1, i32 112, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 4096 }, %struct.mmc_fixup zeroinitializer], [328 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_complete\00", [19 x i8] zeroinitializer }, align 32
@mmc_blk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 2910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to create mmc completion workqueue\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_blk_probe\00", [18 x i8] zeroinitializer }, align 32
@mmc_blk_probe._entry_ptr = internal global ptr @mmc_blk_probe._entry, section ".printk_index", align 4
@mmc_fixup_device.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_fixup_device\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/core/quirks.h\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calling %ps\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEM02G\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEM04G\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEM08G\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEM16G\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEM32G\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDMB-32\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDM032\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMC08G\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMC16G\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMC32G\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AF SD\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"APUSD\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"008GE0\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M8G2FA\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MAG4FA\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MBG8FA\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MCGAFA\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAL00M\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VYL00M\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KYL00M\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VZL00M\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"V10008\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"V10016\00", [25 x i8] zeroinitializer }, align 32
@mmc_blk_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@max_devices = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mmc_blk_alloc_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2365, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no more device IDs available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_blk_alloc_req\00", [46 x i8] zeroinitializer }, align 32
@mmc_blk_alloc_req._entry_ptr = internal global ptr @mmc_blk_alloc_req._entry, section ".printk_index", align 4
@mmc_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @mmc_blk_open, ptr @mmc_blk_release, ptr null, ptr @mmc_blk_ioctl, ptr null, ptr null, ptr null, ptr @mmc_blk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_blk_alternative_gpt_sector }, [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmcblk%u%s\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mmc_blk_alloc_req._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.2, i32 2444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: %s %s %s %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mmc_blk_alloc_req._entry_ptr.58 = internal global ptr @mmc_blk_alloc_req._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(ro)\00", [27 x i8] zeroinitializer }, align 32
@mmc_disk_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mmc_disk_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_blk_ida.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@block_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @block_mutex, i64 52), ptr getelementptr (i8, ptr @block_mutex, i64 52) }, ptr @block_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@open_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @open_lock, i64 52), ptr getelementptr (i8, ptr @open_lock, i64 52) }, ptr @open_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"open_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"open_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_mutex\00", [20 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mmc_disk_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @mmc_disk_attrs_is_visible, ptr null, ptr @mmc_disk_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmc_disk_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_force_ro, ptr @dev_attr_ro_lock_until_next_power_on, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_ro_lock_until_next_power_on = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 0, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_ro_lock_show, ptr @power_ro_lock_store }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ro_lock_until_next_power_on\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@power_ro_lock_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Locking boot partition ro until next power on\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power_ro_lock_store\00", [44 x i8] zeroinitializer }, align 32
@power_ro_lock_store._entry_ptr = internal global ptr @power_ro_lock_store._entry, section ".printk_index", align 4
@power_ro_lock_store._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@power_ro_lock_store._entry_ptr.73 = internal global ptr @power_ro_lock_store._entry.72, section ".printk_index", align 4
@dev_attr_force_ro = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @force_ro_show, ptr @force_ro_store }, [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force_ro\00", [23 x i8] zeroinitializer }, align 32
@mmc_rpmb_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mmc_rpmb_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_rpmb_ioctl, ptr null, ptr null, i32 0, ptr @mmc_rpmb_chrdev_open, ptr null, ptr @mmc_rpmb_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mmc_blk_alloc_rpmb_part._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 2630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not add character device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmc_blk_alloc_rpmb_part\00", [40 x i8] zeroinitializer }, align 32
@mmc_blk_alloc_rpmb_part._entry_ptr = internal global ptr @mmc_blk_alloc_rpmb_part._entry, section ".printk_index", align 4
@mmc_blk_alloc_rpmb_part._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 2641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s %s %s, chardev (%d:%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@mmc_blk_alloc_rpmb_part._entry_ptr.79 = internal global ptr @mmc_blk_alloc_rpmb_part._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_rpmb_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@mmc_dbg_card_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_dbg_card_status_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_csd\00", [24 x i8] zeroinitializer }, align 32
@mmc_dbg_ext_csd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @mmc_ext_csd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_ext_csd_open, ptr null, ptr @mmc_ext_csd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%08llx\0A\00", [24 x i8] zeroinitializer }, align 32
@mmc_ext_csd_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013FAILED %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_ext_csd_open\00", [47 x i8] zeroinitializer }, align 32
@mmc_ext_csd_open._entry_ptr = internal global ptr @mmc_ext_csd_open._entry, section ".printk_index", align 4
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_rpmb\00", [23 x i8] zeroinitializer }, align 32
@mmc_blk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 3034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013mmcblk: could not register RPMB bus type\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_blk_init\00", [19 x i8] zeroinitializer }, align 32
@mmc_blk_init._entry_ptr = internal global ptr @mmc_blk_init._entry, section ".printk_index", align 4
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rpmb\00", [27 x i8] zeroinitializer }, align 32
@mmc_blk_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.90, ptr @.str.2, i32 3039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mmcblk: failed to allocate rpmb chrdev region\0A\00", [47 x i8] zeroinitializer }, align 32
@mmc_blk_init._entry_ptr.94 = internal global ptr @mmc_blk_init._entry.92, section ".printk_index", align 4
@mmc_blk_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.90, ptr @.str.2, i32 3044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mmcblk: using %d minors per device\0A\00", [58 x i8] zeroinitializer }, align 32
@mmc_blk_init._entry_ptr.97 = internal global ptr @mmc_blk_init._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 5, i64 34, i64 35]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 2162688, i64 11730944]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 3221795585, i64 3225989888]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 3221795585, i64 3225989888]
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"perdev_minors\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 87, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1480, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1488, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"mmc_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3018, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3070, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"mmc_rpmb_devt\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 144, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"mmc_rpmb_bus_type\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 147, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1840, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1068, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1084, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 563, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 568, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3020, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"mmc_blk_pm_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3016, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"mmc_blk_fixups\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 18, i32 46 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2907, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2910, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 200, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 26, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 28, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 30, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 32, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 34, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 45, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 47, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 49, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 51, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 53, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 59, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 61, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 69, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 77, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 79, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 81, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 83, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 85, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 87, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 89, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 91, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 98, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [29 x i8] c"../drivers/mmc/core/quirks.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 100, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"mmc_blk_ida\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"max_devices\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 94, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2364, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [10 x i8] c"mmc_bdops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 823, i32 45 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2420, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2420, i32 57 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2442, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [21 x i8] c"mmc_disk_attr_groups\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 355, i32 38 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 98, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant [12 x i8] c"block_mutex\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [10 x i8] c"open_lock\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 169, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 81, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 230, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 214, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 156, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c"mmc_disk_attr_group\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 350, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant [15 x i8] c"mmc_disk_attrs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 324, i32 26 }
@___asan_gen_.349 = private unnamed_addr constant [37 x i8] c"dev_attr_ro_lock_until_next_power_on\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 287, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 235, i32 33 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 272, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 278, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant [18 x i8] c"dev_attr_force_ro\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 322, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant [13 x i8] c"mmc_rpmb_ida\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"mmc_rpmb_fileops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2571, i32 37 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2630, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2639, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 99, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2845, i32 31 }
@___asan_gen_.403 = private unnamed_addr constant [25 x i8] c"mmc_dbg_card_status_fops\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2854, i32 24 }
@___asan_gen_.409 = private unnamed_addr constant [21 x i8] c"mmc_dbg_ext_csd_fops\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2827, i32 37 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2756, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2789, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2794, i32 25 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 148, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3034, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3037, i32 60 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3039, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.452 = private constant [28 x i8] c"../drivers/mmc/core/block.c\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 3044, i32 3 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_perdev_minors282, ptr @__UNIQUE_ID_perdev_minorstype281, ptr @__exitcall_mmc_blk_exit, ptr @__initcall__kmod_mmc_block__287_3075_mmc_blk_init6, ptr @__mmc_blk_ioctl_cmd._entry, ptr @__mmc_blk_ioctl_cmd._entry.19, ptr @__mmc_blk_ioctl_cmd._entry_ptr, ptr @__mmc_blk_ioctl_cmd._entry_ptr.21, ptr @__param_perdev_minors, ptr @mmc_blk_alloc_req._entry, ptr @mmc_blk_alloc_req._entry.56, ptr @mmc_blk_alloc_req._entry_ptr, ptr @mmc_blk_alloc_req._entry_ptr.58, ptr @mmc_blk_alloc_rpmb_part._entry, ptr @mmc_blk_alloc_rpmb_part._entry.77, ptr @mmc_blk_alloc_rpmb_part._entry_ptr, ptr @mmc_blk_alloc_rpmb_part._entry_ptr.79, ptr @mmc_blk_exit, ptr @mmc_blk_init._entry, ptr @mmc_blk_init._entry.92, ptr @mmc_blk_init._entry.95, ptr @mmc_blk_init._entry_ptr, ptr @mmc_blk_init._entry_ptr.94, ptr @mmc_blk_init._entry_ptr.97, ptr @mmc_blk_issue_drv_op._entry, ptr @mmc_blk_issue_drv_op._entry.12, ptr @mmc_blk_issue_drv_op._entry_ptr, ptr @mmc_blk_issue_drv_op._entry_ptr.14, ptr @mmc_blk_mq_rw_recovery._entry, ptr @mmc_blk_mq_rw_recovery._entry_ptr, ptr @mmc_blk_probe._entry, ptr @mmc_blk_probe._entry_ptr, ptr @mmc_ext_csd_open._entry, ptr @mmc_ext_csd_open._entry_ptr, ptr @power_ro_lock_store._entry, ptr @power_ro_lock_store._entry.72, ptr @power_ro_lock_store._entry_ptr, ptr @power_ro_lock_store._entry_ptr.73, ptr @perdev_minors, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mmc_driver, ptr @.str.7, ptr @mmc_rpmb_devt, ptr @mmc_rpmb_bus_type, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @mmc_blk_pm_ops, ptr @mmc_blk_fixups, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mmc_blk_ida, ptr @max_devices, ptr @.str.52, ptr @.str.53, ptr @mmc_bdops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @mmc_disk_attr_groups, ptr @.str.60, ptr @block_mutex, ptr @open_lock, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @mmc_disk_attr_group, ptr @mmc_disk_attrs, ptr @dev_attr_ro_lock_until_next_power_on, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @dev_attr_force_ro, ptr @.str.74, ptr @mmc_rpmb_ida, ptr @mmc_rpmb_fileops, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @mmc_dbg_card_status_fops, ptr @.str.82, ptr @mmc_dbg_ext_csd_fops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perdev_minors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_rpmb_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_rpmb_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_mq_rw_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_issue_drv_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_issue_drv_op._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_fixups to i32), i32 1400, i32 1728, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_alloc_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_alloc_req._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_disk_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_disk_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_disk_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ro_lock_until_next_power_on to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_ro_lock_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_ro_lock_store._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_force_ro to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_rpmb_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_rpmb_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_alloc_rpmb_part._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_alloc_rpmb_part._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_dbg_card_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_dbg_ext_csd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_ext_csd_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_blk_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_blk_cqe_recovery(ptr nocapture noundef readonly %mq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_blk_cqe_recovery, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i38 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i38) #15
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %call6 = tail call i32 @mmc_cqe_recovery(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %blkdata10 = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %8 = ptrtoint ptr %blkdata10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkdata10, align 4
  %reset_done.i41 = getelementptr inbounds %struct.mmc_blk_data, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %reset_done.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_done.i41, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i39 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i39, label %if.end.i40, label %if.then8.do.body12_crit_edge

if.then8.do.body12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

if.end.i40:                                       ; preds = %if.then8
  %or.i = or i32 %11, 16
  %12 = ptrtoint ptr %reset_done.i41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %reset_done.i41, align 4
  %call.i = tail call i32 @mmc_hw_reset(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i40.do.body12_crit_edge, label %if.then3.i

if.end.i40.do.body12_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

if.then3.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #17
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 37
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %part_type.i = getelementptr inbounds %struct.mmc_blk_data, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %part_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %part_type.i, align 4
  %part_curr.i = getelementptr inbounds %struct.mmc_blk_data, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %part_curr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %part_curr.i, align 4
  %20 = load ptr, ptr %card.i, align 4
  %part_type6.i = getelementptr inbounds %struct.mmc_blk_data, ptr %9, i32 0, i32 8
  %21 = ptrtoint ptr %part_type6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %part_type6.i, align 4
  %call7.i = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %20, i32 noundef %22) #15
  br label %do.body12

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %and.i42 = and i32 %11, -17
  %23 = ptrtoint ptr %reset_done.i41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i42, ptr %reset_done.i41, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then3.i, %if.end.i40.do.body12_crit_edge, %if.then8.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_blk_cqe_recovery, %if.then24)) #15
          to label %do.end29 [label %if.then24], !srcloc !250

if.then24:                                        ; preds = %do.body12
  %init_name.i43 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i43, align 8
  %tobool.not.i44 = icmp eq ptr %25, null
  br i1 %tobool.not.i44, label %if.end.i45, label %if.then24.dev_name.exit47_crit_edge

if.then24.dev_name.exit47_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit47

if.end.i45:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %class_dev25 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev25, align 4
  br label %dev_name.exit47

dev_name.exit47:                                  ; preds = %if.end.i45, %if.then24.dev_name.exit47_crit_edge
  %retval.0.i46 = phi ptr [ %27, %if.end.i45 ], [ %25, %if.then24.dev_name.exit47_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i46) #15
  br label %do.end29

do.end29:                                         ; preds = %dev_name.exit47, %do.body12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cqe_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_complete(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cqe_enabled, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %3, ptr noundef %req)
  br label %if.end7

if.else:                                          ; preds = %entry
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %queue_flags.i, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.if.then6_crit_edge, label %blk_should_fake_timeout.exit

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

blk_should_fake_timeout.exit:                     ; preds = %if.else
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %1) #15
  br i1 %call1.i, label %blk_should_fake_timeout.exit.if.end7_crit_edge, label %blk_should_fake_timeout.exit.if.then6_crit_edge, !prof !252

blk_should_fake_timeout.exit.if.then6_crit_edge:  ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

blk_should_fake_timeout.exit.if.end7_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %blk_should_fake_timeout.exit.if.then6_crit_edge, %if.else.if.then6_crit_edge
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %3, ptr noundef %req)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %blk_should_fake_timeout.exit.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call4 = tail call i32 @mmc_issue_type(ptr noundef %mq, ptr noundef %req) #15
  tail call void @mmc_cqe_post_req(ptr noundef %5, ptr noundef %add.ptr.i.i) #15
  %cmd = getelementptr %struct.request, ptr %req, i32 1, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then20_crit_edge

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %data = getelementptr %struct.request, ptr %req, i32 1, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.else33, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.else
  %error12 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.then27, label %land.lhs.true10.if.then20_crit_edge

land.lhs.true10.if.then20_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true10.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %retries = getelementptr %struct.request, ptr %req, i32 2, i32 32
  %14 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retries, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp slt i32 %15, 2
  br i1 %cmp, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_requeue_request(ptr noundef %req, i1 noundef zeroext true) #15
  br label %do.body36

if.else22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 10) #15
  br label %do.body36

if.then27:                                        ; preds = %land.lhs.true10
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_xfered, align 4
  %call29 = tail call zeroext i1 @blk_update_request(ptr noundef %req, i8 noundef zeroext 0, i32 noundef %17) #15
  br i1 %call29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_requeue_request(ptr noundef %req, i1 noundef zeroext true) #15
  br label %do.body36

if.else31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 0) #15
  br label %do.body36

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 0) #15
  br label %do.body36

do.body36:                                        ; preds = %if.else33, %if.else31, %if.then30, %if.else22, %if.then21
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 5
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %arrayidx = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 %call4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %19, -1
  store i32 %sub, ptr %arrayidx, align 4
  %in_flight.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 6
  %20 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_flight.i, align 4
  %arrayidx2.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %23, %21
  %arrayidx4.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i, align 4
  %add5.i = sub i32 0, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add5.i)
  %cmp43 = icmp eq i32 %add.i, %add5.i
  tail call void @mmc_cqe_check_busy(ptr noundef %mq) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #15
  %cqe_busy = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 7
  %26 = ptrtoint ptr %cqe_busy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cqe_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool46.not = icmp eq i32 %27, 0
  br i1 %tobool46.not, label %if.then47, label %do.body36.if.end48_crit_edge

do.body36.if.end48_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then47:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_run_hw_queues(ptr noundef %1, i1 noundef zeroext true) #15
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %do.body36.if.end48_crit_edge
  br i1 %cmp43, label %if.then50, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mq, align 4
  %ctx = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %29, ptr noundef %ctx) #15
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_complete_rq(ptr nocapture noundef readonly %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_xfered = getelementptr %struct.request, ptr %req, i32 2, i32 29
  %0 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @blk_update_request(ptr noundef %req, i8 noundef zeroext 0, i32 noundef %1) #15
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_requeue_request(ptr noundef %req, i1 noundef zeroext true) #15
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 0) #15
  br label %if.end17

if.else3:                                         ; preds = %entry
  %__data_len.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %2 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 10) #15
  br label %if.end17

if.else7:                                         ; preds = %if.else3
  %retries = getelementptr %struct.request, ptr %req, i32 2, i32 32
  %4 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp slt i32 %5, 5
  br i1 %cmp, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_requeue_request(ptr noundef %req, i1 noundef zeroext true) #15
  br label %if.end17

if.else9:                                         ; preds = %if.else7
  %6 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.else9.if.end14_crit_edge, label %land.lhs.true

if.else9.if.end14_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %if.else9
  %state = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_flags, align 8
  %or = or i32 %11, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true.if.end14_crit_edge, %if.else9.if.end14_crit_edge
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 10) #15
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.then8, %if.then6, %if.else, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_recovery(ptr noundef %mq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_req = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 15
  %0 = ptrtoint ptr %recovery_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recovery_req, align 4
  %2 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr %struct.request, ptr %1, i32 1
  store ptr null, ptr %recovery_req, align 4
  %rw_wait = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 11
  %6 = ptrtoint ptr %rw_wait to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rw_wait, align 1
  %error.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.mmc_blk_eval_resp_error.exit.i_crit_edge

entry.mmc_blk_eval_resp_error.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then.i.i:                                      ; preds = %entry
  %resp.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resp.i.i, align 4
  %and.i.i = and i32 %10, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool3.not.i.i = icmp sgt i32 %10, -1
  br i1 %tobool3.not.i.i, label %if.then.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

if.then.i.i.land.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then.i.i.land.end.i.i_crit_edge
  %13 = phi i1 [ false, %if.then.i.i.land.end.i.i_crit_edge ], [ %tobool4.not.i.i, %land.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %brmerge.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %13
  br i1 %brmerge.i.i, label %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, label %if.then7.i.i

land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -5, ptr %error.i.i, align 4
  br label %mmc_blk_eval_resp_error.exit.i

mmc_blk_eval_resp_error.exit.i:                   ; preds = %if.then7.i.i, %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, %entry.mmc_blk_eval_resp_error.exit.i_crit_edge
  %error.i = getelementptr %struct.request, ptr %1, i32 1, i32 33
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %mmc_blk_eval_resp_error.exit.i.if.then_crit_edge

mmc_blk_eval_resp_error.exit.i.if.then_crit_edge: ; preds = %mmc_blk_eval_resp_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.i:                                  ; preds = %mmc_blk_eval_resp_error.exit.i
  %error1.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %error1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i = icmp eq i32 %20, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.if.then_crit_edge

lor.lhs.false3.i.if.then_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %error7.i = getelementptr %struct.request, ptr %1, i32 2, i32 28
  %21 = ptrtoint ptr %error7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not.i = icmp eq i32 %22, 0
  br i1 %tobool8.not.i, label %mmc_blk_rq_error.exit, label %lor.lhs.false6.i.if.then_crit_edge

lor.lhs.false6.i.if.then_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

mmc_blk_rq_error.exit:                            ; preds = %lor.lhs.false6.i
  %resp.i = getelementptr %struct.request, ptr %1, i32 2, i32 5
  %23 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp.i, align 4
  %and.i = and i32 %24, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.i.not, label %mmc_blk_rq_error.exit.if.end_crit_edge, label %mmc_blk_rq_error.exit.if.then_crit_edge

mmc_blk_rq_error.exit.if.then_crit_edge:          ; preds = %mmc_blk_rq_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

mmc_blk_rq_error.exit.if.end_crit_edge:           ; preds = %mmc_blk_rq_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %mmc_blk_rq_error.exit.if.then_crit_edge, %lor.lhs.false6.i.if.then_crit_edge, %lor.lhs.false3.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %mmc_blk_eval_resp_error.exit.i.if.then_crit_edge
  %retune_now.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %25 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %retune_now.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1025
  store i16 %bf.clear.i, ptr %retune_now.i, align 8
  %hold_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 33
  %26 = ptrtoint ptr %hold_retune.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hold_retune.i, align 8
  %add.i = add i32 %27, 1
  store i32 %add.i, ptr %hold_retune.i, align 8
  tail call fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %mq, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %mmc_blk_rq_error.exit.if.end_crit_edge
  %28 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mq, align 4
  %type.i.i = getelementptr inbounds %struct.mmc_card, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.mmc_blk_urgent_bkops.exit_crit_edge

if.end.mmc_blk_urgent_bkops.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_urgent_bkops.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps.i.i, align 32
  %and.i.i13 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %land.rhs.i.i17, label %land.lhs.true.i.i.mmc_blk_urgent_bkops.exit_crit_edge

land.lhs.true.i.i.mmc_blk_urgent_bkops.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_urgent_bkops.exit

land.rhs.i.i17:                                   ; preds = %land.lhs.true.i.i
  %resp.i.i15 = getelementptr %struct.request, ptr %1, i32 2, i32 5
  %36 = ptrtoint ptr %resp.i.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp.i.i15, align 4
  %and2.i.i = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i16 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i16, label %mmc_blk_urgent_bkops_needed.exit.i, label %land.rhs.i.i17.if.then.i_crit_edge

land.rhs.i.i17.if.then.i_crit_edge:               ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

mmc_blk_urgent_bkops_needed.exit.i:               ; preds = %land.rhs.i.i17
  %resp5.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %resp5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resp5.i.i, align 4
  %and7.i.i = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.i.not.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.i.not.i, label %mmc_blk_urgent_bkops_needed.exit.i.mmc_blk_urgent_bkops.exit_crit_edge, label %mmc_blk_urgent_bkops_needed.exit.i.if.then.i_crit_edge

mmc_blk_urgent_bkops_needed.exit.i.if.then.i_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

mmc_blk_urgent_bkops_needed.exit.i.mmc_blk_urgent_bkops.exit_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_urgent_bkops.exit

if.then.i:                                        ; preds = %mmc_blk_urgent_bkops_needed.exit.i.if.then.i_crit_edge, %land.rhs.i.i17.if.then.i_crit_edge
  tail call void @mmc_run_bkops(ptr noundef %29) #15
  br label %mmc_blk_urgent_bkops.exit

mmc_blk_urgent_bkops.exit:                        ; preds = %if.then.i, %mmc_blk_urgent_bkops_needed.exit.i.mmc_blk_urgent_bkops.exit_crit_edge, %land.lhs.true.i.i.mmc_blk_urgent_bkops.exit_crit_edge, %if.end.mmc_blk_urgent_bkops.exit_crit_edge
  tail call fastcc void @mmc_blk_mq_post_req(ptr noundef %mq, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %mrq.i = alloca %struct.mmc_request, align 4
  %cmd.i = alloca %struct.mmc_command, align 4
  %data.i = alloca %struct.mmc_data, align 4
  %sg.i = alloca %struct.scatterlist, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond1 = select i1 %tobool.i.not, i32 1, i32 2
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %2 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blkdata, align 4
  %4 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !253
  %call5 = call i32 @__mmc_send_status(ptr noundef %5, ptr noundef nonnull %status, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end10

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queuedata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 32
  %and.i147 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i = icmp eq i32 %and.i147, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.if.end16.thread_crit_edge

lor.lhs.false.if.end16.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.thread

if.end.i:                                         ; preds = %lor.lhs.false
  %resp.i = getelementptr %struct.request, ptr %req, i32 2, i32 5
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp.i, align 4
  %and3.i = and i32 %20, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end.i.if.end10.critedge145_crit_edge

if.end.i.if.end10.critedge145_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.critedge145

lor.lhs.false.i:                                  ; preds = %if.end.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %22, null
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 1681391616, i32 -466092032
  %resp5.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %resp5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp5.i, align 4
  %25 = or i32 %24, %8
  %26 = and i32 %cond.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %lor.rhs.i, label %lor.lhs.false.i.if.end10.critedge145_crit_edge

lor.lhs.false.i.if.end10.critedge145_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.critedge145

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_flags, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp ne i32 %and.i.i, 0
  %30 = and i32 %8, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %30)
  %31 = icmp ne i32 %30, 2304
  %or.cond = select i1 %tobool.i.not.i, i1 %31, i1 false
  br i1 %or.cond, label %lor.rhs.i.if.end10.critedge145_crit_edge, label %lor.rhs.i.if.end16.thread_crit_edge

lor.rhs.i.if.end16.thread_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.thread

lor.rhs.i.if.end10.critedge145_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.critedge145

if.end10.critedge145:                             ; preds = %lor.rhs.i.if.end10.critedge145_crit_edge, %lor.lhs.false.i.if.end10.critedge145_crit_edge, %if.end.i.if.end10.critedge145_crit_edge
  %bytes_xfered.c = getelementptr %struct.request, ptr %req, i32 2, i32 29
  %32 = ptrtoint ptr %bytes_xfered.c to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bytes_xfered.c, align 4
  br label %if.end16.thread

if.end10:                                         ; preds = %entry
  %bytes_xfered.c146 = getelementptr %struct.request, ptr %req, i32 2, i32 29
  %33 = ptrtoint ptr %bytes_xfered.c146 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bytes_xfered.c146, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  call void @mmc_retune_release(ptr noundef %35) #15
  %call9 = call i32 @__mmc_send_status(ptr noundef %5, ptr noundef nonnull %status, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 8
  %call13 = call i32 @mmc_detect_card_removed(ptr noundef %37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16.thread219, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %38 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mq, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps, align 32
  %and19 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.lor.lhs.false23_crit_edge, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.end16.lor.lhs.false23_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false23

if.end16.thread219:                               ; preds = %land.lhs.true
  %44 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mq, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %caps220 = getelementptr inbounds %struct.mmc_host, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %caps220 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps220, align 32
  %and19221 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19221)
  %tobool20.not222 = icmp eq i32 %and19221, 0
  br i1 %tobool20.not222, label %if.end16.thread219.if.then25_crit_edge, label %if.end16.thread219.if.end50_crit_edge

if.end16.thread219.if.end50_crit_edge:            ; preds = %if.end16.thread219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.end16.thread219.if.then25_crit_edge:           ; preds = %if.end16.thread219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end16.thread:                                  ; preds = %if.end10.critedge145, %lor.rhs.i.if.end16.thread_crit_edge, %lor.lhs.false.if.end16.thread_crit_edge
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 8
  call void @mmc_retune_release(ptr noundef %51) #15
  %52 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mq, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %caps202 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %caps202 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %caps202, align 32
  %and19203 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19203)
  %tobool20.not204 = icmp eq i32 %and19203, 0
  br i1 %tobool20.not204, label %if.end16.thread.lor.lhs.false23_crit_edge, label %if.end16.thread.land.lhs.true30_crit_edge

if.end16.thread.land.lhs.true30_crit_edge:        ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true30

if.end16.thread.lor.lhs.false23_crit_edge:        ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end16.thread.lor.lhs.false23_crit_edge, %if.end16.lor.lhs.false23_crit_edge
  %58 = phi ptr [ %53, %if.end16.thread.lor.lhs.false23_crit_edge ], [ %39, %if.end16.lor.lhs.false23_crit_edge ]
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status, align 4
  %61 = and i32 %60, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %61)
  %62 = icmp eq i32 %61, 2304
  br i1 %62, label %lor.lhs.false23.land.lhs.true30_crit_edge, label %lor.lhs.false23.if.then25_crit_edge

lor.lhs.false23.if.then25_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false23.land.lhs.true30_crit_edge:        ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true30

if.then25:                                        ; preds = %lor.lhs.false23.if.then25_crit_edge, %if.end16.thread219.if.then25_crit_edge
  %63 = phi ptr [ %58, %lor.lhs.false23.if.then25_crit_edge ], [ %45, %if.end16.thread219.if.then25_crit_edge ]
  %call27 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %63, ptr noundef %req)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end16.if.end28_crit_edge
  %err.1 = phi i32 [ %call9, %if.end16.if.end28_crit_edge ], [ %call27, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool29.not = icmp eq i32 %err.1, 0
  br i1 %tobool29.not, label %if.end28.land.lhs.true30_crit_edge, label %if.end28.if.end50_crit_edge

if.end28.if.end50_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.end28.land.lhs.true30_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end28.land.lhs.true30_crit_edge, %lor.lhs.false23.land.lhs.true30_crit_edge, %if.end16.thread.land.lhs.true30_crit_edge
  %error.i = getelementptr %struct.request, ptr %req, i32 1, i32 33
  %64 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i148 = icmp eq i32 %65, 0
  br i1 %tobool.not.i148, label %land.lhs.true.i, label %land.lhs.true30.if.end64_crit_edge

land.lhs.true30.if.end64_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true.i:                                  ; preds = %land.lhs.true30
  %error1.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 5
  %66 = ptrtoint ptr %error1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool2.not.i = icmp eq i32 %67, 0
  br i1 %tobool2.not.i, label %mmc_blk_cmd_started.exit, label %land.lhs.true.i.if.end64_crit_edge

land.lhs.true.i.if.end64_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

mmc_blk_cmd_started.exit:                         ; preds = %land.lhs.true.i
  %resp.i149 = getelementptr %struct.request, ptr %req, i32 2, i32 5
  %68 = ptrtoint ptr %resp.i149 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %resp.i149, align 4
  %and.i150 = and i32 %69, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool4.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool4.not.i151, label %land.lhs.true32, label %mmc_blk_cmd_started.exit.if.end64_crit_edge

mmc_blk_cmd_started.exit.if.end64_crit_edge:      ; preds = %mmc_blk_cmd_started.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true32:                                  ; preds = %mmc_blk_cmd_started.exit
  %type33 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 4
  %70 = ptrtoint ptr %type33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp34 = icmp eq i32 %71, 1
  br i1 %cmp34, label %land.lhs.true35, label %land.lhs.true32.if.end64_crit_edge

land.lhs.true32.if.end64_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %72 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmd_flags, align 4
  %and.i153 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.i154.not = icmp eq i32 %and.i153, 0
  br i1 %tobool.i154.not, label %land.lhs.true35.if.end64_crit_edge, label %if.then41

land.lhs.true35.if.end64_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then41:                                        ; preds = %land.lhs.true35
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #15
  %74 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #15
  %75 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %76 = call ptr @memset(ptr %75, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data.i) #15
  %77 = call ptr @memset(ptr %data.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #15
  %78 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %79 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 55, ptr %cmd.i, align 4
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 3
  %80 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %81, 16
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %82 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shl.i, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 149, ptr %flags.i, align 4
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 8
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %85, ptr noundef nonnull %cmd.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i155 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i155, label %if.end.i159, label %if.then41.if.then44_crit_edge

if.then41.if.then44_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.end.i159:                                      ; preds = %if.then41
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %5, align 8
  %caps.i156 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %caps.i156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %caps.i156, align 32
  %and.i157 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool2.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool2.not.i158, label %land.lhs.true.i163, label %if.end.i159.if.end6.i_crit_edge

if.end.i159.if.end6.i_crit_edge:                  ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

land.lhs.true.i163:                               ; preds = %if.end.i159
  %90 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %75, align 4
  %and3.i161 = and i32 %91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i161)
  %tobool4.not.i162 = icmp eq i32 %and3.i161, 0
  br i1 %tobool4.not.i162, label %land.lhs.true.i163.if.then44_crit_edge, label %land.lhs.true.i163.if.end6.i_crit_edge

land.lhs.true.i163.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

land.lhs.true.i163.if.then44_crit_edge:           ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.end6.i:                                        ; preds = %land.lhs.true.i163.if.end6.i_crit_edge, %if.end.i159.if.end6.i_crit_edge
  %92 = call ptr @memset(ptr %75, i32 0, i32 40)
  %93 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 22, ptr %cmd.i, align 4
  %94 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arg.i, align 4
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 181, ptr %flags.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 2
  %96 = ptrtoint ptr %blksz.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %blksz.i, align 4
  %blocks10.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 3
  %97 = ptrtoint ptr %blocks10.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %blocks10.i, align 4
  %flags11.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 6
  %98 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 512, ptr %flags11.i, align 4
  %sg12.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 12
  %99 = ptrtoint ptr %sg12.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %sg.i, ptr %sg12.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 10
  %100 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %sg_len.i, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %data.i, ptr noundef %5) #15
  %cmd13.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %101 = ptrtoint ptr %cmd13.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %cmd.i, ptr %cmd13.i, align 4
  %data14.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 2
  %102 = ptrtoint ptr %data14.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %data.i, ptr %data14.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3264, i32 noundef 4) #18
  %tobool16.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not.i, label %if.end6.i.if.then44_crit_edge, label %if.end18.i

if.end6.i.if.then44_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.end18.i:                                       ; preds = %if.end6.i
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call7.i.i, i32 noundef 4) #15
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %5, align 8
  call void @mmc_wait_for_req(ptr noundef %105, ptr noundef nonnull %mrq.i) #15
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %error.i164 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 5
  %108 = ptrtoint ptr %error.i164 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %error.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool20.not.i = icmp eq i32 %109, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i165, label %if.end18.i.if.then44_crit_edge

if.end18.i.if.then44_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

lor.lhs.false.i165:                               ; preds = %if.end18.i
  %error21.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 5
  %110 = ptrtoint ptr %error21.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %error21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool22.not.i = icmp eq i32 %111, 0
  br i1 %tobool22.not.i, label %if.else, label %lor.lhs.false.i165.if.then44_crit_edge

lor.lhs.false.i165.if.then44_crit_edge:           ; preds = %lor.lhs.false.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.i165.if.then44_crit_edge, %if.end18.i.if.then44_crit_edge, %if.end6.i.if.then44_crit_edge, %land.lhs.true.i163.if.then44_crit_edge, %if.then41.if.then44_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #15
  br label %if.end64.sink.split

if.else:                                          ; preds = %lor.lhs.false.i165
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #15
  %shl = shl i32 %107, 9
  br label %if.end64.sink.split

if.end50:                                         ; preds = %if.end28.if.end50_crit_edge, %if.end16.thread219.if.end50_crit_edge
  %112 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mq, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %caps53 = getelementptr inbounds %struct.mmc_host, ptr %115, i32 0, i32 16
  %116 = ptrtoint ptr %caps53 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %caps53, align 32
  %and54 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not.not, label %land.lhs.true58, label %if.end50.if.end64_crit_edge

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true58:                                  ; preds = %if.end50
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %5, align 8
  %reset_done.i = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 9
  %120 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %reset_done.i, align 4
  %and.i167 = and i32 %121, %cond1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.end.i171, label %land.lhs.true58.do.end_crit_edge

land.lhs.true58.do.end_crit_edge:                 ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.i171:                                      ; preds = %land.lhs.true58
  %or.i = or i32 %121, %cond1
  %122 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i, ptr %reset_done.i, align 4
  %call.i169 = call i32 @mmc_hw_reset(ptr noundef %119) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool2.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool2.not.i170, label %if.end.i171.if.end64_crit_edge, label %if.then3.i

if.end.i171.if.end64_crit_edge:                   ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then3.i:                                       ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #17
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %119, i32 0, i32 37
  %123 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %card.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %124, i32 0, i32 1, i32 8
  %125 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i, align 4
  %part_type.i = getelementptr inbounds %struct.mmc_blk_data, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %part_type.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %part_type.i, align 4
  %part_curr.i = getelementptr inbounds %struct.mmc_blk_data, ptr %126, i32 0, i32 10
  %129 = ptrtoint ptr %part_curr.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %part_curr.i, align 4
  %130 = load ptr, ptr %card.i, align 4
  %part_type6.i = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 8
  %131 = ptrtoint ptr %part_type6.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %part_type6.i, align 4
  %call7.i = call fastcc i32 @mmc_blk_part_switch(ptr noundef %130, i32 noundef %132) #15
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %land.lhs.true58.do.end_crit_edge
  %133 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %req, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %disk, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %136, i32 0, i32 3
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %disk_name) #19
  %retries = getelementptr %struct.request, ptr %req, i32 2, i32 32
  %137 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 6, ptr %retries, align 4
  br label %cleanup

if.end64.sink.split:                              ; preds = %if.else, %if.then44
  %shl.sink = phi i32 [ %shl, %if.else ], [ 0, %if.then44 ]
  %bytes_xfered48 = getelementptr %struct.request, ptr %req, i32 2, i32 29
  %138 = ptrtoint ptr %bytes_xfered48 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %shl.sink, ptr %bytes_xfered48, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.end.i171.if.end64_crit_edge, %if.end50.if.end64_crit_edge, %land.lhs.true35.if.end64_crit_edge, %land.lhs.true32.if.end64_crit_edge, %mmc_blk_cmd_started.exit.if.end64_crit_edge, %land.lhs.true.i.if.end64_crit_edge, %land.lhs.true30.if.end64_crit_edge
  %bytes_xfered66 = getelementptr %struct.request, ptr %req, i32 2, i32 29
  %139 = ptrtoint ptr %bytes_xfered66 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bytes_xfered66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool67.not = icmp eq i32 %140, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  %retries70 = getelementptr %struct.request, ptr %req, i32 2, i32 32
  %141 = ptrtoint ptr %retries70 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %retries70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp71 = icmp eq i32 %142, 4
  br i1 %cmp71, label %if.then72, label %if.end69.if.end75_crit_edge

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  %143 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %5, align 8
  %reset_done.i172 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 9
  %145 = ptrtoint ptr %reset_done.i172 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reset_done.i172, align 4
  %and.i173 = and i32 %146, %cond1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool.not.i174 = icmp eq i32 %and.i173, 0
  br i1 %tobool.not.i174, label %if.end.i178, label %if.then72.if.end75_crit_edge

if.then72.if.end75_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.end.i178:                                      ; preds = %if.then72
  %or.i175 = or i32 %146, %cond1
  %147 = ptrtoint ptr %reset_done.i172 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i175, ptr %reset_done.i172, align 4
  %call.i176 = call i32 @mmc_hw_reset(ptr noundef %144) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool2.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool2.not.i177, label %if.end.i178.if.end75_crit_edge, label %if.then3.i186

if.end.i178.if.end75_crit_edge:                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then3.i186:                                    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #17
  %card.i179 = getelementptr inbounds %struct.mmc_host, ptr %144, i32 0, i32 37
  %148 = ptrtoint ptr %card.i179 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %card.i179, align 4
  %driver_data.i.i180 = getelementptr inbounds %struct.mmc_card, ptr %149, i32 0, i32 1, i32 8
  %150 = ptrtoint ptr %driver_data.i.i180 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %driver_data.i.i180, align 4
  %part_type.i181 = getelementptr inbounds %struct.mmc_blk_data, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %part_type.i181 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %part_type.i181, align 4
  %part_curr.i182 = getelementptr inbounds %struct.mmc_blk_data, ptr %151, i32 0, i32 10
  %154 = ptrtoint ptr %part_curr.i182 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %part_curr.i182, align 4
  %155 = load ptr, ptr %card.i179, align 4
  %part_type6.i183 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 8
  %156 = ptrtoint ptr %part_type6.i183 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %part_type6.i183, align 4
  %call7.i184 = call fastcc i32 @mmc_blk_part_switch(ptr noundef %155, i32 noundef %157) #15
  br label %if.end75

if.end75:                                         ; preds = %if.then3.i186, %if.end.i178.if.end75_crit_edge, %if.then72.if.end75_crit_edge, %if.end69.if.end75_crit_edge
  %error = getelementptr %struct.request, ptr %req, i32 1, i32 33
  %158 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool76.not = icmp eq i32 %159, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false77:                                  ; preds = %if.end75
  %error78 = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i, i32 0, i32 2, i32 5
  %160 = ptrtoint ptr %error78 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %error78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool79.not = icmp eq i32 %161, 0
  br i1 %tobool79.not, label %if.end81, label %lor.lhs.false77.cleanup_crit_edge

lor.lhs.false77.cleanup_crit_edge:                ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end81:                                         ; preds = %lor.lhs.false77
  %162 = ptrtoint ptr %retries70 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %retries70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %163)
  %cmp83 = icmp slt i32 %163, 3
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %164 = ptrtoint ptr %retries70 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 3, ptr %retries70, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.end81
  %data_sector_size.i = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 21, i32 35
  %165 = ptrtoint ptr %data_sector_size.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %166)
  %cmp.i = icmp eq i32 %166, 4096
  br i1 %cmp.i, label %if.end86.cleanup_crit_edge, label %land.lhs.true88

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true88:                                  ; preds = %if.end86
  %167 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cmd_flags, align 4
  %and.i190 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.i191.not = icmp eq i32 %and.i190, 0
  br i1 %tobool.i191.not, label %land.lhs.true94, label %land.lhs.true88.cleanup_crit_edge

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true94:                                  ; preds = %land.lhs.true88
  %blocks96 = getelementptr %struct.request, ptr %req, i32 2, i32 26
  %169 = ptrtoint ptr %blocks96 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %blocks96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp97 = icmp ugt i32 %170, 1
  br i1 %cmp97, label %if.then98, label %land.lhs.true94.cleanup_crit_edge

land.lhs.true94.cleanup_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then98:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @mmc_blk_read_single(ptr noundef %mq, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %land.lhs.true94.cleanup_crit_edge, %land.lhs.true88.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then84, %lor.lhs.false77.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_post_req(ptr noundef %mq, ptr noundef %req, i1 noundef zeroext %can_sleep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.mmc_post_req.exit_crit_edge, label %if.then.i

entry.mmc_post_req.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_post_req.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  tail call void %7(ptr noundef %3, ptr noundef %add.ptr.i.i, i32 noundef 0) #15
  br label %mmc_post_req.exit

mmc_post_req.exit:                                ; preds = %if.then.i, %entry.mmc_post_req.exit_crit_edge
  %in_recovery = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 10
  %8 = ptrtoint ptr %in_recovery to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_recovery, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mmc_post_req.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %mq, ptr noundef %req)
  br label %if.end12

if.else:                                          ; preds = %mmc_post_req.exit
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %queue_flags.i, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i21 = icmp eq i32 %14, 0
  br i1 %tobool.not.i21, label %if.else.if.then7_crit_edge, label %blk_should_fake_timeout.exit

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

blk_should_fake_timeout.exit:                     ; preds = %if.else
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %11) #15
  br i1 %call1.i, label %blk_should_fake_timeout.exit.if.end12_crit_edge, label %blk_should_fake_timeout.exit.if.then7_crit_edge, !prof !252

blk_should_fake_timeout.exit.if.then7_crit_edge:  ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

blk_should_fake_timeout.exit.if.end12_crit_edge:  ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %blk_should_fake_timeout.exit.if.then7_crit_edge, %if.else.if.then7_crit_edge
  br i1 %can_sleep, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then7
  %state.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 25
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 2, ptr %state.i, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 8
  %queuedata.i.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %queuedata.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queuedata.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %cqe_enabled.i.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 65
  %24 = ptrtoint ptr %cqe_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cqe_enabled.i.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %19, ptr noundef %req) #15
  br label %if.end12

if.else.i.i:                                      ; preds = %if.then9
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 11
  %26 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.if.then6.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

if.else.i.i.if.then6.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %if.else.i.i
  %call1.i.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %17) #15
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.if.end12_crit_edge, label %blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge, !prof !252

blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i

blk_should_fake_timeout.exit.i.i.if.end12_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then6.i.i:                                     ; preds = %blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge, %if.else.i.i.if.then6.i.i_crit_edge
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %19, ptr noundef %req) #15
  br label %if.end12

if.else10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_complete_request(ptr noundef %req) #15
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then6.i.i, %blk_should_fake_timeout.exit.i.i.if.end12_crit_edge, %if.then.i.i, %blk_should_fake_timeout.exit.if.end12_crit_edge, %if.then
  %lock.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %call5.i = tail call i32 @mmc_issue_type(ptr noundef %mq, ptr noundef %req) #15
  %arrayidx.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 %call5.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %30, -1
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %in_flight.i.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 6
  %31 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_flight.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %34, %32
  %arrayidx4.i.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i, align 4
  %add5.i.i = sub i32 0, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add5.i.i)
  %cmp7.i = icmp eq i32 %add.i.i, %add5.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  br i1 %cmp7.i, label %if.then.i23, label %if.end12.mmc_blk_mq_dec_in_flight.exit_crit_edge

if.end12.mmc_blk_mq_dec_in_flight.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_dec_in_flight.exit

if.then.i23:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mq, align 4
  %ctx.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %38, ptr noundef %ctx.i) #15
  br label %mmc_blk_mq_dec_in_flight.exit

mmc_blk_mq_dec_in_flight.exit:                    ; preds = %if.then.i23, %if.end12.mmc_blk_mq_dec_in_flight.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_complete_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -464
  tail call fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %add.ptr, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %mq, ptr noundef writeonly %prev_req) unnamed_addr #0 align 64 {
entry:
  %cb_data.i.i = alloca %struct.mmc_blk_busy_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %complete_lock = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %complete_lock, i32 noundef 0) #15
  %complete_req = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 16
  %6 = ptrtoint ptr %complete_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete_req, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.out_unlock_crit_edge, label %if.end2

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %7, i32 1
  %8 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mq, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %error.i.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end2.mmc_blk_eval_resp_error.exit.i.i_crit_edge

if.end2.mmc_blk_eval_resp_error.exit.i.i_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end2
  %resp.i.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %resp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp.i.i.i, align 4
  %and.i.i.i = and i32 %15, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool3.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %tobool3.not.i.i.i, label %if.then.i.i.i.land.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then.i.i.i.land.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %17, null
  br label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %land.rhs.i.i.i, %if.then.i.i.i.land.end.i.i.i_crit_edge
  %18 = phi i1 [ false, %if.then.i.i.i.land.end.i.i.i_crit_edge ], [ %tobool4.not.i.i.i, %land.rhs.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %brmerge.i.i.i = select i1 %tobool5.not.i.i.i, i1 true, i1 %18
  br i1 %brmerge.i.i.i, label %land.end.i.i.i.mmc_blk_eval_resp_error.exit.i.i_crit_edge, label %if.then7.i.i.i

land.end.i.i.i.mmc_blk_eval_resp_error.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i.i

if.then7.i.i.i:                                   ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -5, ptr %error.i.i.i, align 4
  br label %mmc_blk_eval_resp_error.exit.i.i

mmc_blk_eval_resp_error.exit.i.i:                 ; preds = %if.then7.i.i.i, %land.end.i.i.i.mmc_blk_eval_resp_error.exit.i.i_crit_edge, %if.end2.mmc_blk_eval_resp_error.exit.i.i_crit_edge
  %error.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 33
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %mmc_blk_eval_resp_error.exit.i.i.if.then.i_crit_edge

mmc_blk_eval_resp_error.exit.i.i.if.then.i_crit_edge: ; preds = %mmc_blk_eval_resp_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i.i:                                ; preds = %mmc_blk_eval_resp_error.exit.i.i
  %error1.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %error1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.then.i_crit_edge

lor.lhs.false.i.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %24 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false3.i.i.if.then.i_crit_edge

lor.lhs.false3.i.i.if.then.i_crit_edge:           ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false3.i.i
  %error7.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 28
  %26 = ptrtoint ptr %error7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool8.not.i.i, label %mmc_blk_rq_error.exit.i, label %lor.lhs.false6.i.i.if.then.i_crit_edge

lor.lhs.false6.i.i.if.then.i_crit_edge:           ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

mmc_blk_rq_error.exit.i:                          ; preds = %lor.lhs.false6.i.i
  %resp.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 5
  %28 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp.i.i, align 4
  %and.i.i = and i32 %29, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.i.not.i, label %lor.lhs.false.i, label %mmc_blk_rq_error.exit.i.if.then.i_crit_edge

mmc_blk_rq_error.exit.i.if.then.i_crit_edge:      ; preds = %mmc_blk_rq_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %mmc_blk_rq_error.exit.i
  %30 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mq, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb_data.i.i) #15
  %32 = getelementptr inbounds %struct.mmc_blk_busy_data, ptr %cb_data.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps.i.i, align 32
  %and.i13.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.not.i14.i, label %lor.lhs.false.i16.i, label %lor.lhs.false.i.mmc_blk_card_busy.exit.thread.i_crit_edge

lor.lhs.false.i.mmc_blk_card_busy.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_card_busy.exit.thread.i

lor.lhs.false.i16.i:                              ; preds = %lor.lhs.false.i
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3
  %37 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i15.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i15.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i16.i.mmc_blk_card_busy.exit.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false.i16.i.mmc_blk_card_busy.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_card_busy.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i16.i
  %39 = ptrtoint ptr %cb_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %31, ptr %cb_data.i.i, align 4
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %32, align 4
  %call5.i.i = call i32 @__mmc_poll_for_busy(ptr noundef %34, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @mmc_blk_busy_cb, ptr noundef nonnull %cb_data.i.i) #15
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %32, align 4
  %43 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %44, null
  %cond.i.i.i = select i1 %tobool.i.not.i.i.i, i32 1681391616, i32 -466092032
  %and8.i.i = and i32 %cond.i.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %bytes_xfered.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 29
  %45 = ptrtoint ptr %bytes_xfered.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %bytes_xfered.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool12.not.i.i = icmp eq i32 %call5.i.i, 0
  %spec.select.i.i = select i1 %tobool12.not.i.i, i32 -5, i32 %call5.i.i
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %err.0.i.i = phi i32 [ %spec.select.i.i, %if.then10.i.i ], [ %call5.i.i, %if.end.i.i.if.end14.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.mmc_card, ptr %31, i32 0, i32 4
  %46 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp15.i.i = icmp ne i32 %47, 0
  %and17.i.i = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  %or.cond.i.i = select i1 %cmp15.i.i, i1 true, i1 %tobool18.not.i.i
  br i1 %or.cond.i.i, label %if.end14.i.i.mmc_blk_card_busy.exit.i_crit_edge, label %if.then19.i.i

if.end14.i.i.mmc_blk_card_busy.exit.i_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_card_busy.exit.i

if.then19.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp.i.i, align 4
  %or.i.i = or i32 %49, 64
  store i32 %or.i.i, ptr %resp.i.i, align 4
  br label %mmc_blk_card_busy.exit.i

mmc_blk_card_busy.exit.thread.i:                  ; preds = %lor.lhs.false.i16.i.mmc_blk_card_busy.exit.thread.i_crit_edge, %lor.lhs.false.i.mmc_blk_card_busy.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_data.i.i) #15
  br label %if.else.i

mmc_blk_card_busy.exit.i:                         ; preds = %if.then19.i.i, %if.end14.i.i.mmc_blk_card_busy.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_data.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not.i = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not.i, label %mmc_blk_card_busy.exit.i.if.else.i_crit_edge, label %mmc_blk_card_busy.exit.i.if.then.i_crit_edge

mmc_blk_card_busy.exit.i.if.then.i_crit_edge:     ; preds = %mmc_blk_card_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

mmc_blk_card_busy.exit.i.if.else.i_crit_edge:     ; preds = %mmc_blk_card_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %mmc_blk_card_busy.exit.i.if.then.i_crit_edge, %mmc_blk_rq_error.exit.i.if.then.i_crit_edge, %lor.lhs.false6.i.i.if.then.i_crit_edge, %lor.lhs.false3.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.if.then.i_crit_edge, %mmc_blk_eval_resp_error.exit.i.i.if.then.i_crit_edge
  call fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %mq, ptr noundef nonnull %7) #15
  br label %if.end.i

if.else.i:                                        ; preds = %mmc_blk_card_busy.exit.i.if.else.i_crit_edge, %mmc_blk_card_busy.exit.thread.i
  %cmd_flags.i18.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3
  %50 = ptrtoint ptr %cmd_flags.i18.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cmd_flags.i18.i, align 4
  %and.i.i19.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %tobool.i.not.i20.i = icmp eq i32 %and.i.i19.i, 0
  %blkdata.i.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %52 = ptrtoint ptr %blkdata.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blkdata.i.i, align 4
  %neg.i.i.i = select i1 %tobool.i.not.i20.i, i32 -2, i32 -3
  %reset_done.i.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %reset_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reset_done.i.i.i, align 4
  %and.i2.i.i = and i32 %neg.i.i.i, %55
  store i32 %and.i2.i.i, ptr %reset_done.i.i.i, align 4
  call void @mmc_retune_release(ptr noundef %11) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %56 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mq, align 4
  %type.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.mmc_blk_mq_poll_completion.exit_crit_edge

if.end.i.mmc_blk_mq_poll_completion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_poll_completion.exit

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 8
  %caps.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caps.i.i.i, align 32
  %and.i.i21.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21.i)
  %tobool.not.i.i22.i = icmp eq i32 %and.i.i21.i, 0
  br i1 %tobool.not.i.i22.i, label %land.rhs.i.i25.i, label %land.lhs.true.i.i.i.mmc_blk_mq_poll_completion.exit_crit_edge

land.lhs.true.i.i.i.mmc_blk_mq_poll_completion.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_poll_completion.exit

land.rhs.i.i25.i:                                 ; preds = %land.lhs.true.i.i.i
  %resp.i.i23.i = getelementptr %struct.request, ptr %7, i32 2, i32 5
  %64 = ptrtoint ptr %resp.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %resp.i.i23.i, align 4
  %and2.i.i.i = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i24.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i24.i, label %mmc_blk_urgent_bkops_needed.exit.i.i, label %land.rhs.i.i25.i.if.then.i.i_crit_edge

land.rhs.i.i25.i.if.then.i.i_crit_edge:           ; preds = %land.rhs.i.i25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

mmc_blk_urgent_bkops_needed.exit.i.i:             ; preds = %land.rhs.i.i25.i
  %resp5.i.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %resp5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %resp5.i.i.i, align 4
  %and7.i.i.i = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.i.not.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.i.not.i.i, label %mmc_blk_urgent_bkops_needed.exit.i.i.mmc_blk_mq_poll_completion.exit_crit_edge, label %mmc_blk_urgent_bkops_needed.exit.i.i.if.then.i.i_crit_edge

mmc_blk_urgent_bkops_needed.exit.i.i.if.then.i.i_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

mmc_blk_urgent_bkops_needed.exit.i.i.mmc_blk_mq_poll_completion.exit_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_poll_completion.exit

if.then.i.i:                                      ; preds = %mmc_blk_urgent_bkops_needed.exit.i.i.if.then.i.i_crit_edge, %land.rhs.i.i25.i.if.then.i.i_crit_edge
  call void @mmc_run_bkops(ptr noundef %57) #15
  br label %mmc_blk_mq_poll_completion.exit

mmc_blk_mq_poll_completion.exit:                  ; preds = %if.then.i.i, %mmc_blk_urgent_bkops_needed.exit.i.i.mmc_blk_mq_poll_completion.exit_crit_edge, %land.lhs.true.i.i.i.mmc_blk_mq_poll_completion.exit_crit_edge, %if.end.i.mmc_blk_mq_poll_completion.exit_crit_edge
  %tobool4.not = icmp eq ptr %prev_req, null
  %68 = ptrtoint ptr %complete_req to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %complete_req, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %mmc_blk_mq_poll_completion.exit
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %prev_req to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %prev_req, align 4
  br label %if.end8

if.else:                                          ; preds = %mmc_blk_mq_poll_completion.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @mmc_blk_mq_post_req(ptr noundef %mq, ptr noundef %69, i1 noundef zeroext true)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %71 = ptrtoint ptr %complete_req to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %complete_req, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end8, %if.end.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %complete_lock) #15
  br label %return

return:                                           ; preds = %out_unlock, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_blk_mq_issue_rq(ptr noundef %mq, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %prev_req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %part_type = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %part_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %part_type, align 4
  %call = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %3, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mmc_issue_type(ptr noundef %mq, ptr noundef %req) #15
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %land.end121 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb47_crit_edge
    i32 2, label %if.end.sw.bb47_crit_edge230
  ]

if.end.sw.bb47_crit_edge230:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end.sw.bb47_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

sw.bb:                                            ; preds = %if.end
  %cqe_enabled.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 65
  %9 = ptrtoint ptr %cqe_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cqe_enabled.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %cqe_ops.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 62
  %11 = ptrtoint ptr %cqe_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cqe_ops.i, align 8
  %cqe_wait_for_idle.i = getelementptr inbounds %struct.mmc_cqe_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cqe_wait_for_idle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cqe_wait_for_idle.i, align 4
  %call.i = tail call i32 %14(ptr noundef %5) #15
  br label %mmc_blk_wait_for_idle.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call fastcc i32 @mmc_blk_rw_wait(ptr noundef %mq, ptr noundef null) #15
  br label %mmc_blk_wait_for_idle.exit

mmc_blk_wait_for_idle.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %mmc_blk_wait_for_idle.exit.cleanup_crit_edge

mmc_blk_wait_for_idle.exit.cleanup_crit_edge:     ; preds = %mmc_blk_wait_for_idle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %mmc_blk_wait_for_idle.exit
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_flags, align 4
  %trunc201 = trunc i32 %16 to i8
  %17 = zext i8 %trunc201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %trunc201, label %land.end [
    i8 34, label %if.end7.sw.bb8_crit_edge
    i8 35, label %if.end7.sw.bb8_crit_edge231
    i8 3, label %sw.bb9
    i8 5, label %sw.bb10
    i8 2, label %sw.bb11
  ]

if.end7.sw.bb8_crit_edge231:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

if.end7.sw.bb8_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end7.sw.bb8_crit_edge, %if.end7.sw.bb8_crit_edge231
  tail call fastcc void @mmc_blk_issue_drv_op(ptr noundef %mq, ptr noundef %req)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_issue_discard_rq(ptr noundef %mq, ptr noundef %req)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_issue_secdiscard_rq(ptr noundef %mq, ptr noundef %req)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_issue_flush(ptr noundef %mq, ptr noundef %req)
  br label %cleanup

land.end:                                         ; preds = %if.end7
  %.b202 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done, align 1
  br i1 %.b202, label %land.end.cleanup_crit_edge, label %if.then17, !prof !254

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2302, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

sw.bb47:                                          ; preds = %if.end.sw.bb47_crit_edge, %if.end.sw.bb47_crit_edge230
  %cmd_flags48 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %cmd_flags48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_flags48, align 4
  %trunc = trunc i32 %19 to i8
  %20 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %trunc, label %land.end68 [
    i8 2, label %sw.bb50
    i8 0, label %sw.bb47.sw.bb55_crit_edge
    i8 1, label %sw.bb47.sw.bb55_crit_edge232
  ]

sw.bb47.sw.bb55_crit_edge232:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb55

sw.bb47.sw.bb55_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb55

sw.bb50:                                          ; preds = %sw.bb47
  %bus_ops.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 45
  %21 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_ops.i, align 4
  %cache_enabled.i = getelementptr inbounds %struct.mmc_bus_ops, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %cache_enabled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache_enabled.i, align 4
  %tobool.not.i204 = icmp eq ptr %24, null
  br i1 %tobool.not.i204, label %sw.bb50.if.then52_crit_edge, label %mmc_cache_enabled.exit

sw.bb50.if.then52_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

mmc_cache_enabled.exit:                           ; preds = %sw.bb50
  %call.i205 = tail call zeroext i1 %24(ptr noundef %5) #15
  br i1 %call.i205, label %if.end53, label %mmc_cache_enabled.exit.if.then52_crit_edge

mmc_cache_enabled.exit.if.then52_crit_edge:       ; preds = %mmc_cache_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

if.then52:                                        ; preds = %mmc_cache_enabled.exit.if.then52_crit_edge, %sw.bb50.if.then52_crit_edge
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 0) #15
  br label %cleanup

if.end53:                                         ; preds = %mmc_cache_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %req, i32 1
  %25 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 356)
  %cmd.i.i = getelementptr %struct.request, ptr %req, i32 2, i32 3
  %cmd2.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 1
  %26 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cmd.i.i, ptr %cmd2.i.i, align 4
  %tag.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %27 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag.i.i, align 4
  %tag4.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 29, i32 0, i32 2
  %29 = ptrtoint ptr %tag4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tag4.i.i, align 4
  %30 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %cmd.i.i, align 4
  %arg.i = getelementptr %struct.request, ptr %req, i32 2, i32 4
  %31 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 52429057, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 29, ptr %flags.i, align 4
  %33 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mq, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %done.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %37 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mmc_blk_cqe_req_done, ptr %done.i.i, align 4
  %recovery_notifier.i.i = getelementptr %struct.request, ptr %req, i32 1, i32 28, i32 0, i32 1
  %38 = ptrtoint ptr %recovery_notifier.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mmc_cqe_recovery_notifier, ptr %recovery_notifier.i.i, align 4
  %call.i.i = tail call i32 @mmc_cqe_start_req(ptr noundef %36, ptr noundef %add.ptr.i.i.i) #15
  br label %sw.epilog110

sw.bb55:                                          ; preds = %sw.bb47.sw.bb55_crit_edge, %sw.bb47.sw.bb55_crit_edge232
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 65
  %39 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cqe_enabled, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool56.not = icmp eq i8 %40, 0
  %add.ptr.i.i.i216 = getelementptr %struct.request, ptr %req, i32 1
  %41 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mq, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %sw.bb55
  %hsq_enabled.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %hsq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hsq_enabled.i, align 16, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i209 = icmp eq i8 %46, 0
  br i1 %tobool.not.i209, label %if.end.i214, label %if.then.i211

if.then.i211:                                     ; preds = %if.then57
  tail call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %add.ptr.i.i.i216, ptr noundef %42, i32 noundef 0, ptr noundef %mq) #15
  %done.i.i210 = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %47 = ptrtoint ptr %done.i.i210 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mmc_blk_hsq_req_done, ptr %done.i.i210, align 4
  %ops.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i.i, align 4
  %pre_req.i.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pre_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pre_req.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.then.i211.mmc_pre_req.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i211.mmc_pre_req.exit.i.i_crit_edge:      ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_pre_req.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %51(ptr noundef %44, ptr noundef %add.ptr.i.i.i216) #15
  br label %mmc_pre_req.exit.i.i

mmc_pre_req.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i211.mmc_pre_req.exit.i.i_crit_edge
  %call7.i.i = tail call i32 @mmc_cqe_start_req(ptr noundef %44, ptr noundef %add.ptr.i.i.i216) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i.i, label %mmc_pre_req.exit.i.i.cleanup_crit_edge, label %if.then.i.i

mmc_pre_req.exit.i.i.cleanup_crit_edge:           ; preds = %mmc_pre_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i:                                      ; preds = %mmc_pre_req.exit.i.i
  %52 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool.not.i21.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i21.i.i, label %if.then.i.i.if.end113_crit_edge, label %if.then.i22.i.i

if.then.i.i.if.end113_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then.i22.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %55(ptr noundef %44, ptr noundef %add.ptr.i.i.i216, i32 noundef %call7.i.i) #15
  br label %if.end113

if.end.i214:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_data_prep(ptr noundef %mq, ptr noundef %add.ptr.i.i.i216, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %56 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mq, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %done.i12.i = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %60 = ptrtoint ptr %done.i12.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @mmc_blk_cqe_req_done, ptr %done.i12.i, align 4
  %recovery_notifier.i.i212 = getelementptr %struct.request, ptr %req, i32 1, i32 28, i32 0, i32 1
  %61 = ptrtoint ptr %recovery_notifier.i.i212 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mmc_cqe_recovery_notifier, ptr %recovery_notifier.i.i212, align 4
  %call.i.i213 = tail call i32 @mmc_cqe_start_req(ptr noundef %59, ptr noundef %add.ptr.i.i.i216) #15
  br label %sw.epilog110

if.else:                                          ; preds = %sw.bb55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_req.i) #15
  %62 = ptrtoint ptr %prev_req.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %prev_req.i, align 4
  tail call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %add.ptr.i.i.i216, ptr noundef %42, i32 noundef 0, ptr noundef %mq) #15
  %done.i = getelementptr %struct.request, ptr %req, i32 1, i32 28
  %63 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mmc_blk_mq_req_done, ptr %done.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 3
  %64 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i, align 4
  %pre_req.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pre_req.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pre_req.i.i, align 4
  %tobool.not.i.i217 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i217, label %if.else.mmc_pre_req.exit.i_crit_edge, label %if.then.i.i218

if.else.mmc_pre_req.exit.i_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_pre_req.exit.i

if.then.i.i218:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %67(ptr noundef %44, ptr noundef %add.ptr.i.i.i216) #15
  br label %mmc_pre_req.exit.i

mmc_pre_req.exit.i:                               ; preds = %if.then.i.i218, %if.else.mmc_pre_req.exit.i_crit_edge
  %call5.i = call fastcc i32 @mmc_blk_rw_wait(ptr noundef %mq, ptr noundef nonnull %prev_req.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i219 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i219, label %if.end.i220, label %mmc_pre_req.exit.i.if.then21.i_crit_edge

mmc_pre_req.exit.i.if.then21.i_crit_edge:         ; preds = %mmc_pre_req.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

if.end.i220:                                      ; preds = %mmc_pre_req.exit.i
  %rw_wait.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 11
  %68 = ptrtoint ptr %rw_wait.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %rw_wait.i, align 1
  %call8.i = call i32 @mmc_start_request(ptr noundef %44, ptr noundef %add.ptr.i.i.i216) #15
  %69 = ptrtoint ptr %prev_req.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev_req.i, align 4
  %tobool9.not.i = icmp eq ptr %70, null
  br i1 %tobool9.not.i, label %if.end.i220.if.end11.i_crit_edge, label %if.then10.i

if.end.i220.if.end11.i_crit_edge:                 ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @mmc_blk_mq_post_req(ptr noundef %mq, ptr noundef nonnull %70, i1 noundef zeroext true) #15
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i220.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool12.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.critedge.i, label %out_post_req.i

lor.lhs.false.critedge.i:                         ; preds = %if.end11.i
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 16
  %71 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %72, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.critedge.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge, label %out_post_req.thread54.i

lor.lhs.false.critedge.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_issue_rw_rq.exit

out_post_req.thread54.i:                          ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @mmc_retune_release(ptr noundef %44) #15
  br label %mmc_blk_mq_issue_rw_rq.exit

out_post_req.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %rw_wait.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %rw_wait.i, align 1
  call void @mmc_retune_release(ptr noundef %44) #15
  br label %if.then21.i

if.then21.i:                                      ; preds = %out_post_req.i, %mmc_pre_req.exit.i.if.then21.i_crit_edge
  %err.053.i = phi i32 [ %call8.i, %out_post_req.i ], [ %call5.i, %mmc_pre_req.exit.i.if.then21.i_crit_edge ]
  %74 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool.not.i45.i = icmp eq ptr %77, null
  br i1 %tobool.not.i45.i, label %if.then21.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge, label %if.then.i46.i

if.then21.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_mq_issue_rw_rq.exit

if.then.i46.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %77(ptr noundef %44, ptr noundef %add.ptr.i.i.i216, i32 noundef %err.053.i) #15
  br label %mmc_blk_mq_issue_rw_rq.exit

mmc_blk_mq_issue_rw_rq.exit:                      ; preds = %if.then.i46.i, %if.then21.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge, %out_post_req.thread54.i, %lor.lhs.false.critedge.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge
  %err.049.i = phi i32 [ 0, %out_post_req.thread54.i ], [ %err.053.i, %if.then21.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge ], [ %err.053.i, %if.then.i46.i ], [ 0, %lor.lhs.false.critedge.i.mmc_blk_mq_issue_rw_rq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_req.i) #15
  br label %sw.epilog110

land.end68:                                       ; preds = %sw.bb47
  %.b198200 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done.5, align 1
  br i1 %.b198200, label %land.end68.cleanup_crit_edge, label %if.then75, !prof !254

land.end68.cleanup_crit_edge:                     ; preds = %land.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then75:                                        ; preds = %land.end68
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2324, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

sw.epilog110:                                     ; preds = %mmc_blk_mq_issue_rw_rq.exit, %if.end.i214, %if.end53
  %ret.0 = phi i32 [ %err.049.i, %mmc_blk_mq_issue_rw_rq.exit ], [ %call.i.i, %if.end53 ], [ %call.i.i213, %if.end.i214 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool111.not = icmp eq i32 %ret.0, 0
  br i1 %tobool111.not, label %sw.epilog110.cleanup_crit_edge, label %sw.epilog110.if.end113_crit_edge

sw.epilog110.if.end113_crit_edge:                 ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

sw.epilog110.cleanup_crit_edge:                   ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end113:                                        ; preds = %sw.epilog110.if.end113_crit_edge, %if.then.i22.i.i, %if.then.i.i.if.end113_crit_edge
  %ret.0224 = phi i32 [ %ret.0, %sw.epilog110.if.end113_crit_edge ], [ %call7.i.i, %if.then.i22.i.i ], [ %call7.i.i, %if.then.i.i.if.end113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %ret.0224)
  %cmp = icmp eq i32 %ret.0224, -16
  %spec.select = select i1 %cmp, i32 1, i32 2
  br label %cleanup

land.end121:                                      ; preds = %if.end
  %.b199203 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done.6, align 1
  br i1 %.b199203, label %land.end121.cleanup_crit_edge, label %if.then128, !prof !254

land.end121.cleanup_crit_edge:                    ; preds = %land.end121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then128:                                       ; preds = %land.end121
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2331, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %land.end121.cleanup_crit_edge, %if.end113, %sw.epilog110.cleanup_crit_edge, %if.then75, %land.end68.cleanup_crit_edge, %mmc_pre_req.exit.i.i.cleanup_crit_edge, %if.then52, %if.then17, %land.end.cleanup_crit_edge, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %mmc_blk_wait_for_idle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then52 ], [ 2, %entry.cleanup_crit_edge ], [ 1, %mmc_blk_wait_for_idle.exit.cleanup_crit_edge ], [ 2, %if.then17 ], [ 2, %land.end.cleanup_crit_edge ], [ 3, %sw.bb11 ], [ 3, %sw.bb10 ], [ 3, %sw.bb9 ], [ 3, %sw.bb8 ], [ 0, %sw.epilog110.cleanup_crit_edge ], [ 2, %if.then128 ], [ 2, %land.end121.cleanup_crit_edge ], [ 0, %mmc_pre_req.exit.i.i.cleanup_crit_edge ], [ 2, %land.end68.cleanup_crit_edge ], [ 2, %if.then75 ], [ %spec.select, %if.end113 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_part_switch(ptr noundef %card, i32 noundef %part_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %part_curr = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %part_curr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %part_curr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %part_type)
  %cmp = icmp eq i32 %3, %part_type
  br i1 %cmp, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup22

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %part_config3 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 6
  %6 = ptrtoint ptr %part_config3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %part_config3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %part_type)
  %cmp.i = icmp eq i32 %part_type, 3
  br i1 %cmp.i, label %if.then.i, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then.i:                                        ; preds = %if.then2
  %cmdq_en.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 40
  %8 = ptrtoint ptr %cmdq_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmdq_en.i, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then1.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 @mmc_cmdq_disable(ptr noundef %card) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then1.i.if.end4.i_crit_edge, label %if.then1.i.cleanup22_crit_edge

if.then1.i.cleanup22_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup22

if.then1.i.if.end4.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i.if.end4.i_crit_edge, %if.then.i.if.end4.i_crit_edge
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  tail call void @mmc_retune_pause(ptr noundef %11) #15
  br label %if.end6

if.end6:                                          ; preds = %if.end4.i, %if.then2.if.end6_crit_edge
  %12 = and i8 %7, -8
  %13 = trunc i32 %part_type to i8
  %conv9 = or i8 %12, %13
  %part_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 12
  %14 = ptrtoint ptr %part_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %part_time, align 4
  %call11 = tail call i32 @mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %conv9, i32 noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end6
  br i1 %cmp.i, label %if.then.i47, label %if.then13.cleanup22_crit_edge

if.then13.cleanup22_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup22

if.then.i47:                                      ; preds = %if.then13
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 8
  tail call void @mmc_retune_unpause(ptr noundef %17) #15
  %reenable_cmdq.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 8
  %18 = ptrtoint ptr %reenable_cmdq.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reenable_cmdq.i, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i46 = icmp eq i8 %19, 0
  br i1 %tobool.not.i46, label %if.then.i47.cleanup22_crit_edge, label %land.lhs.true.i

if.then.i47.cleanup22_crit_edge:                  ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup22

land.lhs.true.i:                                  ; preds = %if.then.i47
  %cmdq_en.i48 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 40
  %20 = ptrtoint ptr %cmdq_en.i48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmdq_en.i48, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %land.lhs.true.i.cleanup22_crit_edge

land.lhs.true.i.cleanup22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup22

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i49 = tail call i32 @mmc_cmdq_enable(ptr noundef %card) #15
  br label %cleanup22

if.end15:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %part_config3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9, ptr %part_config3, align 2
  %23 = ptrtoint ptr %part_curr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %part_curr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i50 = icmp eq i32 %24, 3
  br i1 %cmp.i50, label %if.then.i53, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then.i53:                                      ; preds = %if.end15
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 8
  tail call void @mmc_retune_unpause(ptr noundef %26) #15
  %reenable_cmdq.i51 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 8
  %27 = ptrtoint ptr %reenable_cmdq.i51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reenable_cmdq.i51, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i52 = icmp eq i8 %28, 0
  br i1 %tobool.not.i52, label %if.then.i53.if.end20_crit_edge, label %land.lhs.true.i56

if.then.i53.if.end20_crit_edge:                   ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true.i56:                                ; preds = %if.then.i53
  %cmdq_en.i54 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 40
  %29 = ptrtoint ptr %cmdq_en.i54 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmdq_en.i54, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i55 = icmp eq i8 %30, 0
  br i1 %tobool1.not.i55, label %if.then2.i58, label %land.lhs.true.i56.if.end20_crit_edge

land.lhs.true.i56.if.end20_crit_edge:             ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then2.i58:                                     ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #17
  %call.i57 = tail call i32 @mmc_cmdq_enable(ptr noundef %card) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then2.i58, %land.lhs.true.i56.if.end20_crit_edge, %if.then.i53.if.end20_crit_edge, %if.end15.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ 0, %land.lhs.true.i56.if.end20_crit_edge ], [ %call.i57, %if.then2.i58 ], [ 0, %if.then.i53.if.end20_crit_edge ], [ 0, %if.end15.if.end20_crit_edge ]
  %31 = ptrtoint ptr %part_curr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %part_type, ptr %part_curr, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %if.end20, %if.then2.i, %land.lhs.true.i.cleanup22_crit_edge, %if.then.i47.cleanup22_crit_edge, %if.then13.cleanup22_crit_edge, %if.then1.i.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ %ret.1, %if.end20 ], [ 0, %entry.cleanup22_crit_edge ], [ %call11, %if.then2.i ], [ %call11, %land.lhs.true.i.cleanup22_crit_edge ], [ %call11, %if.then.i47.cleanup22_crit_edge ], [ %call11, %if.then13.cleanup22_crit_edge ], [ %call.i, %if.then1.i.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_issue_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_drv_op(ptr nocapture noundef readonly %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  %sbc.i = alloca %struct.mmc_command, align 4
  %data.i = alloca %struct.mmc_data, align 4
  %mrq.i = alloca %struct.mmc_request, align 4
  %sg.i = alloca %struct.scatterlist, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %2 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blkdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !253
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %drv_op = getelementptr %struct.request, ptr %req, i32 2, i32 31
  %5 = ptrtoint ptr %drv_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %6, label %do.end47 [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb8_crit_edge
    i32 2, label %sw.bb25
    i32 3, label %sw.bb37
    i32 4, label %sw.bb42
  ]

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

sw.bb:                                            ; preds = %entry
  %cmdq_en = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 40
  %8 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmdq_en, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.bb.sw.bb8_crit_edge, label %if.then

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

if.then:                                          ; preds = %sw.bb
  %call4 = tail call i32 @mmc_cmdq_disable(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.sw.bb8_crit_edge, label %if.then.sw.epilog.thread_crit_edge

if.then.sw.epilog.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread

if.then.sw.bb8_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.then.sw.bb8_crit_edge, %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  %drv_op_data = getelementptr %struct.request, ptr %req, i32 2, i32 31, i32 1
  %10 = ptrtoint ptr %drv_op_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_op_data, align 4
  %ioc_count = getelementptr %struct.request, ptr %req, i32 2, i32 31, i32 1, i32 4
  %12 = ptrtoint ptr %ioc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ioc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9100.not = icmp eq i32 %13, 0
  br i1 %cmp9100.not, label %sw.bb8.for.end_crit_edge, label %for.body.lr.ph

sw.bb8.for.end_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb8
  %14 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  %part_type.i = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 8
  %arg10.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %flags12.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %sg15.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 12
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 10
  %blksz17.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 2
  %blocks19.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 6
  %data41.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 2
  %cmd43.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %arg64.i = getelementptr inbounds %struct.mmc_command, ptr %sbc.i, i32 0, i32 1
  %flags65.i = getelementptr inbounds %struct.mmc_command, ptr %sbc.i, i32 0, i32 3
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 5
  %error88.i = getelementptr inbounds %struct.mmc_data, ptr %data.i, i32 0, i32 5
  %cache_ctrl.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 7
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 8
  %part_config.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.0101
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #15
  %18 = call ptr @memset(ptr %14, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sbc.i) #15
  %19 = call ptr @memset(ptr %sbc.i, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data.i) #15
  %20 = call ptr @memset(ptr %data.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #15
  %21 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #15
  %tobool3.not.i = icmp eq ptr %17, null
  %or.cond204.i = or i1 %or.cond.i, %tobool3.not.i
  %22 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  br i1 %or.cond204.i, label %for.body.__mmc_blk_ioctl_cmd.exit.thread_crit_edge, label %if.end.i

for.body.__mmc_blk_ioctl_cmd.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %__mmc_blk_ioctl_cmd.exit.thread

if.end.i:                                         ; preds = %for.body
  %rpmb.i = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %17, i32 0, i32 3
  %23 = ptrtoint ptr %rpmb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rpmb.i, align 8
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %part_index.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %part_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %part_index.i, align 4
  %or.i = or i32 %26, 3
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %part_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %part_type.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i
  %target_part.0.i = phi i32 [ %or.i, %if.then5.i ], [ %28, %if.else.i ]
  %opcode.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 2
  %29 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %opcode.i, align 8
  %31 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cmd.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 3
  %32 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arg.i, align 4
  %34 = ptrtoint ptr %arg10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arg10.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 8
  %37 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flags12.i, align 4
  %buf_bytes.i = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %17, i32 0, i32 2
  %38 = ptrtoint ptr %buf_bytes.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %buf_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool13.not.i = icmp eq i64 %39, 0
  br i1 %tobool13.not.i, label %if.end7.i.if.end42.i_crit_edge, label %if.then14.i

if.end7.i.if.end42.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then14.i:                                      ; preds = %if.end7.i
  %40 = ptrtoint ptr %sg15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sg.i, ptr %sg15.i, align 4
  %41 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %sg_len.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 6
  %42 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blksz.i, align 4
  %44 = ptrtoint ptr %blksz17.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %blksz17.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 7
  %45 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blocks.i, align 8
  %47 = ptrtoint ptr %blocks19.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %blocks19.i, align 4
  %buf.i = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %17, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf.i, align 8
  %conv.i = trunc i64 %39 to i32
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %49, i32 noundef %conv.i) #15
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool23.not.i = icmp eq i32 %51, 0
  %spec.select.i = select i1 %tobool23.not.i, i32 512, i32 256
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i, ptr %15, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %data.i, ptr noundef nonnull %1) #15
  %data_timeout_ns.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 10
  %53 = ptrtoint ptr %data_timeout_ns.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_timeout_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool30.not.i = icmp eq i32 %54, 0
  br i1 %tobool30.not.i, label %if.then14.i.if.end34.i_crit_edge, label %if.then31.i

if.then14.i.if.end34.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %data.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.then14.i.if.end34.i_crit_edge
  %56 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags12.i, align 4
  %and.i = and i32 %57, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 29
  br i1 %cmp.i, label %if.then37.i, label %if.end34.i.if.end40.i_crit_edge

if.end34.i.if.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  %cmd_timeout_ms.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 11
  %58 = ptrtoint ptr %cmd_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_timeout_ms.i, align 8
  %mul.i = mul i32 %59, 1000000
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i, ptr %data.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end40.i_crit_edge
  %61 = ptrtoint ptr %data41.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %data.i, ptr %data41.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end40.i, %if.end7.i.if.end42.i_crit_edge
  %62 = ptrtoint ptr %cmd43.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cmd.i, ptr %cmd43.i, align 4
  %call.i = call fastcc i32 @mmc_blk_part_switch(ptr noundef nonnull %1, i32 noundef %target_part.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end42.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge

if.end42.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__mmc_blk_ioctl_cmd.exit.thread

if.end46.i:                                       ; preds = %if.end42.i
  %is_acmd.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 1
  %63 = ptrtoint ptr %is_acmd.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %is_acmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool48.not.i = icmp eq i32 %64, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end54.i_crit_edge, label %if.then49.i

if.end46.i.if.end54.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.end46.i
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %call50.i = call i32 @mmc_app_cmd(ptr noundef %66, ptr noundef nonnull %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then49.i.if.end54.i_crit_edge, label %if.then49.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge

if.then49.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__mmc_blk_ioctl_cmd.exit.thread

if.then49.i.if.end54.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i.if.end54.i_crit_edge, %if.end46.i.if.end54.i_crit_edge
  %67 = ptrtoint ptr %rpmb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rpmb.i, align 8
  %tobool56.not.i = icmp eq ptr %68, null
  br i1 %tobool56.not.i, label %if.end54.i.if.end67.i_crit_edge, label %if.then57.i

if.end54.i.if.end67.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %sbc.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 23, ptr %sbc.i, align 4
  %70 = ptrtoint ptr %blocks19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blocks19.i, align 4
  %72 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %17, align 8
  %and62.i = and i32 %73, -2147483648
  %or63.i = or i32 %and62.i, %71
  %74 = ptrtoint ptr %arg64.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or63.i, ptr %arg64.i, align 4
  %75 = ptrtoint ptr %flags65.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 21, ptr %flags65.i, align 4
  %76 = ptrtoint ptr %mrq.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %sbc.i, ptr %mrq.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end67.i_crit_edge
  %77 = ptrtoint ptr %arg10.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arg10.i, align 4
  %79 = and i32 %78, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 10813440, i32 %79)
  %cmp70.i = icmp eq i32 %79, 10813440
  br i1 %cmp70.i, label %land.lhs.true.i, label %if.end67.i.if.end79.i_crit_edge

if.end67.i.if.end79.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %80 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %81)
  %cmp73.i = icmp eq i32 %81, 6
  br i1 %cmp73.i, label %if.then75.i, label %land.lhs.true.i.if.end79.i_crit_edge

land.lhs.true.i.if.end79.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79.i

if.then75.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %cmd_timeout_ms77.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 11
  %82 = ptrtoint ptr %cmd_timeout_ms77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd_timeout_ms77.i, align 8
  %call78.i = call i32 @mmc_sanitize(ptr noundef nonnull %1, i32 noundef %83) #15
  br label %__mmc_blk_ioctl_cmd.exit

if.end79.i:                                       ; preds = %land.lhs.true.i.if.end79.i_crit_edge, %if.end67.i.if.end79.i_crit_edge
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  call void @mmc_wait_for_req(ptr noundef %85, ptr noundef nonnull %mrq.i) #15
  %response.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 4
  %86 = call ptr @memcpy(ptr %response.i, ptr %14, i32 16)
  %87 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool82.not.i = icmp eq i32 %88, 0
  br i1 %tobool82.not.i, label %if.end87.i, label %do.end.i

do.end.i:                                         ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %88) #19
  %93 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %error.i, align 4
  br label %__mmc_blk_ioctl_cmd.exit

if.end87.i:                                       ; preds = %if.end79.i
  %95 = ptrtoint ptr %error88.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %error88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool89.not.i = icmp eq i32 %96, 0
  br i1 %tobool89.not.i, label %if.end98.i, label %do.end93.i

do.end93.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %96) #19
  %101 = ptrtoint ptr %error88.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %error88.i, align 4
  br label %__mmc_blk_ioctl_cmd.exit

if.end98.i:                                       ; preds = %if.end87.i
  %103 = ptrtoint ptr %arg10.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arg10.i, align 4
  %105 = and i32 %104, 16711680
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %105, label %if.end98.i.if.end134.i_crit_edge [
    i32 11730944, label %land.lhs.true104.i
    i32 2162688, label %land.lhs.true122.i
  ]

if.end98.i.if.end134.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i

land.lhs.true104.i:                               ; preds = %if.end98.i
  %107 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %cmp106.i = icmp eq i32 %108, 6
  br i1 %cmp106.i, label %if.then108.i, label %land.lhs.true104.i.if.end134.i_crit_edge

land.lhs.true104.i.if.end134.i_crit_edge:         ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i

if.then108.i:                                     ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i, align 4
  %and111.i = lshr i32 %104, 8
  %conv113.i = trunc i32 %and111.i to i8
  %111 = ptrtoint ptr %part_config.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv113.i, ptr %part_config.i, align 2
  %and115.i = and i32 %and111.i, 7
  %part_curr.i = getelementptr inbounds %struct.mmc_blk_data, ptr %110, i32 0, i32 10
  %112 = ptrtoint ptr %part_curr.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and115.i, ptr %part_curr.i, align 4
  br label %if.end134.i

land.lhs.true122.i:                               ; preds = %if.end98.i
  %113 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %114)
  %cmp124.i = icmp eq i32 %114, 6
  br i1 %cmp124.i, label %if.then126.i, label %land.lhs.true122.i.if.end134.i_crit_edge

land.lhs.true122.i.if.end134.i_crit_edge:         ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i

if.then126.i:                                     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #17
  %and129.i = lshr i32 %104, 8
  %115 = trunc i32 %and129.i to i8
  %conv132.i = and i8 %115, 1
  %116 = ptrtoint ptr %cache_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv132.i, ptr %cache_ctrl.i, align 1
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then126.i, %land.lhs.true122.i.if.end134.i_crit_edge, %if.then108.i, %land.lhs.true104.i.if.end134.i_crit_edge, %if.end98.i.if.end134.i_crit_edge
  %postsleep_min_us.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 8
  %117 = ptrtoint ptr %postsleep_min_us.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %postsleep_min_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool136.not.i = icmp eq i32 %118, 0
  br i1 %tobool136.not.i, label %if.end134.i.if.end141.i_crit_edge, label %if.then137.i

if.end134.i.if.end141.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141.i

if.then137.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  %postsleep_max_us.i = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %17, i32 0, i32 9
  %119 = ptrtoint ptr %postsleep_max_us.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %postsleep_max_us.i, align 8
  call void @usleep_range_state(i32 noundef %118, i32 noundef %120, i32 noundef 2) #15
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then137.i, %if.end134.i.if.end141.i_crit_edge
  %121 = ptrtoint ptr %rpmb.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rpmb.i, align 8
  %tobool143.not.i = icmp eq ptr %122, null
  br i1 %tobool143.not.i, label %lor.lhs.false144.i, label %if.end141.i.if.then149.i_crit_edge

if.end141.i.if.then149.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then149.i

lor.lhs.false144.i:                               ; preds = %if.end141.i
  %123 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags12.i, align 4
  %and146.i = and i32 %124, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and146.i)
  %cmp147.i = icmp eq i32 %and146.i, 29
  br i1 %cmp147.i, label %lor.lhs.false144.i.if.then149.i_crit_edge, label %__mmc_blk_ioctl_cmd.exit.thread90

lor.lhs.false144.i.if.then149.i_crit_edge:        ; preds = %lor.lhs.false144.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then149.i

__mmc_blk_ioctl_cmd.exit.thread90:                ; preds = %lor.lhs.false144.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sbc.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  br label %for.inc

if.then149.i:                                     ; preds = %lor.lhs.false144.i.if.then149.i_crit_edge, %if.end141.i.if.then149.i_crit_edge
  %call150.i = call i32 @mmc_poll_for_busy(ptr noundef nonnull %1, i32 noundef 10000, i1 noundef zeroext false, i32 noundef 4) #15
  br label %__mmc_blk_ioctl_cmd.exit

__mmc_blk_ioctl_cmd.exit.thread:                  ; preds = %if.then49.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge, %if.end42.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge, %for.body.__mmc_blk_ioctl_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call50.i, %if.then49.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge ], [ %call.i, %if.end42.i.__mmc_blk_ioctl_cmd.exit.thread_crit_edge ], [ -22, %for.body.__mmc_blk_ioctl_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sbc.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  br label %for.end

__mmc_blk_ioctl_cmd.exit:                         ; preds = %if.then149.i, %do.end93.i, %do.end.i, %if.then75.i
  %retval.0.i = phi i32 [ %call78.i, %if.then75.i ], [ %94, %do.end.i ], [ %102, %do.end93.i ], [ %call150.i, %if.then149.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sbc.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %__mmc_blk_ioctl_cmd.exit.for.inc_crit_edge, label %__mmc_blk_ioctl_cmd.exit.for.end_crit_edge

__mmc_blk_ioctl_cmd.exit.for.end_crit_edge:       ; preds = %__mmc_blk_ioctl_cmd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

__mmc_blk_ioctl_cmd.exit.for.inc_crit_edge:       ; preds = %__mmc_blk_ioctl_cmd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %__mmc_blk_ioctl_cmd.exit.for.inc_crit_edge, %__mmc_blk_ioctl_cmd.exit.thread90
  %inc = add nuw i32 %i.0101, 1
  %125 = ptrtoint ptr %ioc_count to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ioc_count, align 4
  %cmp9 = icmp ult i32 %inc, %126
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__mmc_blk_ioctl_cmd.exit.for.end_crit_edge, %__mmc_blk_ioctl_cmd.exit.thread, %sw.bb8.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i.ph, %__mmc_blk_ioctl_cmd.exit.thread ], [ 0, %sw.bb8.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %retval.0.i, %__mmc_blk_ioctl_cmd.exit.for.end_crit_edge ]
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.end
  %driver_data.i.i84 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 8
  %127 = ptrtoint ptr %driver_data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %driver_data.i.i84, align 4
  %part_curr.i85 = getelementptr inbounds %struct.mmc_blk_data, ptr %128, i32 0, i32 10
  %129 = ptrtoint ptr %part_curr.i85 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %part_curr.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i86 = icmp eq i32 %130, 0
  br i1 %cmp.i86, label %if.then15.sw.epilog_crit_edge, label %if.end.i87

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i87:                                       ; preds = %if.then15
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 4
  %131 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp1.i = icmp eq i32 %132, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i87.if.end20.i_crit_edge

if.end.i87.if.end20.i_crit_edge:                  ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then2.i:                                       ; preds = %if.end.i87
  %part_config3.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 6
  %133 = ptrtoint ptr %part_config3.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %part_config3.i, align 2
  %135 = and i8 %134, -8
  %part_time.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 12
  %136 = ptrtoint ptr %part_time.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %part_time.i, align 4
  %call11.i = call i32 @mmc_switch(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %135, i32 noundef %137) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %if.then2.i.sw.epilog_crit_edge

if.then2.i.sw.epilog_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.then2.i
  %138 = ptrtoint ptr %part_config3.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %135, ptr %part_config3.i, align 2
  %139 = ptrtoint ptr %part_curr.i85 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %part_curr.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp.i50.i = icmp eq i32 %140, 3
  br i1 %cmp.i50.i, label %if.then.i53.i, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then.i53.i:                                    ; preds = %if.end15.i
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  call void @mmc_retune_unpause(ptr noundef %142) #15
  %reenable_cmdq.i51.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 8
  %143 = ptrtoint ptr %reenable_cmdq.i51.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %reenable_cmdq.i51.i, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i52.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i52.i, label %if.then.i53.i.if.end20.i_crit_edge, label %land.lhs.true.i56.i

if.then.i53.i.if.end20.i_crit_edge:               ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i56.i:                              ; preds = %if.then.i53.i
  %cmdq_en.i54.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 40
  %145 = ptrtoint ptr %cmdq_en.i54.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %cmdq_en.i54.i, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool1.not.i55.i = icmp eq i8 %146, 0
  br i1 %tobool1.not.i55.i, label %if.then2.i58.i, label %land.lhs.true.i56.i.if.end20.i_crit_edge

land.lhs.true.i56.i.if.end20.i_crit_edge:         ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then2.i58.i:                                   ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i57.i = call i32 @mmc_cmdq_enable(ptr noundef %1) #15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then2.i58.i, %land.lhs.true.i56.i.if.end20.i_crit_edge, %if.then.i53.i.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge, %if.end.i87.if.end20.i_crit_edge
  %147 = ptrtoint ptr %part_curr.i85 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %part_curr.i85, align 4
  br label %sw.epilog

if.else:                                          ; preds = %for.end
  %reenable_cmdq = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 8
  %148 = ptrtoint ptr %reenable_cmdq to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %reenable_cmdq, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool17.not = icmp eq i8 %149, 0
  br i1 %tobool17.not, label %if.else.sw.epilog_crit_edge, label %land.lhs.true

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.else
  %cmdq_en19 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 40
  %150 = ptrtoint ptr %cmdq_en19 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %cmdq_en19, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool20.not = icmp eq i8 %151, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = call i32 @mmc_cmdq_enable(ptr noundef %1) #15
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %boot_ro_lock = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 37
  %152 = ptrtoint ptr %boot_ro_lock to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %boot_ro_lock, align 4
  %154 = trunc i32 %153 to i8
  %conv = or i8 %154, 1
  %part_time = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 12
  %155 = ptrtoint ptr %part_time to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %part_time, align 4
  %call28 = tail call i32 @mmc_switch(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -83, i8 noundef zeroext %conv, i32 noundef %156) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %sw.epilog.thread96, label %do.end

do.end:                                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #17
  %disk = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 1
  %157 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %158, i32 0, i32 3
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %disk_name, i32 noundef %call28) #19
  br label %sw.epilog.thread

sw.epilog.thread96:                               ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %boot_ro_lock to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %boot_ro_lock, align 4
  %or35 = or i32 %160, 1
  store i32 %or35, ptr %boot_ro_lock, align 4
  %drv_op_result98 = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %161 = ptrtoint ptr %drv_op_result98 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %drv_op_result98, align 4
  br label %170

sw.bb37:                                          ; preds = %entry
  %call38 = call i32 @mmc_send_status(ptr noundef %1, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %sw.bb37.sw.epilog.thread_crit_edge

sw.bb37.sw.epilog.thread_crit_edge:               ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  %162 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %status, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %drv_op_data43 = getelementptr %struct.request, ptr %req, i32 2, i32 31, i32 1
  %164 = ptrtoint ptr %drv_op_data43 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %drv_op_data43, align 4
  %call44 = tail call i32 @mmc_get_ext_csd(ptr noundef %1, ptr noundef %165) #15
  br label %sw.epilog

do.end47:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %disk49 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 1
  %166 = ptrtoint ptr %disk49 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %disk49, align 4
  %disk_name50 = getelementptr inbounds %struct.gendisk, ptr %167, i32 0, i32 3
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %disk_name50) #19
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end47, %sw.bb37.sw.epilog.thread_crit_edge, %do.end, %if.then.sw.epilog.thread_crit_edge
  %ret.2.ph = phi i32 [ %call4, %if.then.sw.epilog.thread_crit_edge ], [ %call28, %do.end ], [ %call38, %sw.bb37.sw.epilog.thread_crit_edge ], [ -22, %do.end47 ]
  %drv_op_result94 = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %168 = ptrtoint ptr %drv_op_result94 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %ret.2.ph, ptr %drv_op_result94, align 4
  br label %171

sw.epilog:                                        ; preds = %sw.bb42, %if.then40, %if.then21, %land.lhs.true.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.end20.i, %if.then2.i.sw.epilog_crit_edge, %if.then15.sw.epilog_crit_edge
  %ret.2 = phi i32 [ %call44, %sw.bb42 ], [ %163, %if.then40 ], [ %ret.1, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.1, %if.then21 ], [ %ret.1, %if.else.sw.epilog_crit_edge ], [ %ret.1, %if.then2.i.sw.epilog_crit_edge ], [ %ret.1, %if.then15.sw.epilog_crit_edge ], [ %ret.1, %if.end20.i ]
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %169 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %ret.2, ptr %drv_op_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool53.not = icmp eq i32 %ret.2, 0
  br i1 %tobool53.not, label %sw.epilog._crit_edge, label %sw.epilog._crit_edge103

sw.epilog._crit_edge103:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %171

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %170

170:                                              ; preds = %sw.epilog._crit_edge, %sw.epilog.thread96
  br label %171

171:                                              ; preds = %170, %sw.epilog._crit_edge103, %sw.epilog.thread
  %172 = phi i8 [ 0, %170 ], [ 10, %sw.epilog._crit_edge103 ], [ 10, %sw.epilog.thread ]
  call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %172) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_discard_rq(ptr nocapture noundef readonly %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %call = tail call i32 @mmc_can_erase(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %entry
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %4 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %5 to i32
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %7, 9
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 6
  %erase_arg = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 13
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 14
  %reset_done.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %if.end
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 8
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.if.then11_crit_edge, label %if.end9

do.body.if.then11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.end9:                                          ; preds = %do.body
  %10 = ptrtoint ptr %erase_arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erase_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %conv7 = zext i1 %cmp to i8
  %12 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generic_cmd6_time, align 4
  %call8 = tail call i32 @mmc_switch(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext %conv7, i32 noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end9.if.then11_crit_edge, label %if.end9.do.cond_crit_edge

if.end9.do.cond_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %do.body.if.then11_crit_edge
  %14 = ptrtoint ptr %erase_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erase_arg, align 4
  %call13 = tail call i32 @mmc_erase(ptr noundef %3, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %15) #15
  br label %do.cond

do.cond:                                          ; preds = %if.then11, %if.end9.do.cond_crit_edge
  %err.1 = phi i32 [ %call8, %if.end9.do.cond_crit_edge ], [ %call13, %if.then11 ]
  %16 = zext i32 %err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %err.1, label %do.cond.fail_crit_edge [
    i32 -5, label %land.rhs
    i32 0, label %if.else
  ]

do.cond.fail_crit_edge:                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

land.rhs:                                         ; preds = %do.cond
  %17 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_done.i, align 4
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.fail_crit_edge

land.rhs.fail_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end.i:                                         ; preds = %land.rhs
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %or.i = or i32 %18, 4
  %21 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %reset_done.i, align 4
  %call.i = tail call i32 @mmc_hw_reset(ptr noundef %20) #15
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.then3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 37
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %23, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %part_type.i = getelementptr inbounds %struct.mmc_blk_data, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %part_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %part_type.i, align 4
  %part_curr.i = getelementptr inbounds %struct.mmc_blk_data, ptr %25, i32 0, i32 10
  %28 = ptrtoint ptr %part_curr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %part_curr.i, align 4
  %29 = load ptr, ptr %card.i, align 4
  %part_type6.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %part_type6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %part_type6.i, align 4
  %call7.i = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %29, i32 noundef %31) #15
  br label %fail

if.else:                                          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reset_done.i, align 4
  %and.i37 = and i32 %33, -5
  store i32 %and.i37, ptr %reset_done.i, align 4
  br label %fail

fail:                                             ; preds = %if.else, %if.then3.i, %land.rhs.fail_crit_edge, %do.cond.fail_crit_edge, %entry.fail_crit_edge
  %status.0 = phi i8 [ 0, %if.else ], [ 1, %entry.fail_crit_edge ], [ 10, %if.then3.i ], [ 10, %do.cond.fail_crit_edge ], [ 10, %land.rhs.fail_crit_edge ]
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %status.0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_secdiscard_rq(ptr nocapture noundef readonly %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %call = tail call i32 @mmc_can_secure_erase_trim(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %4 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %5 to i32
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %7, 9
  %call4 = tail call i32 @mmc_can_trim(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 @mmc_erase_group_aligned(ptr noundef %3, i32 noundef %conv, i32 noundef %shr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

8:                                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %8, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %arg.0101 = phi i32 [ -2147483647, %8 ], [ -2147483648, %if.end.if.end9_crit_edge ], [ -2147483648, %land.lhs.true.if.end9_crit_edge ]
  %cmp2799 = phi i1 [ true, %8 ], [ false, %if.end.if.end9_crit_edge ], [ false, %land.lhs.true.if.end9_crit_edge ]
  %9 = phi i8 [ -127, %8 ], [ -128, %if.end.if.end9_crit_edge ], [ -128, %land.lhs.true.if.end9_crit_edge ]
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 6
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 14
  %reset_done.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 9
  br label %retry

retry:                                            ; preds = %if.end.i.retry_crit_edge, %if.end9
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 8
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %retry.if.end18_crit_edge, label %if.then11

retry.if.end18_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then11:                                        ; preds = %retry
  %12 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generic_cmd6_time, align 4
  %call14 = tail call i32 @mmc_switch(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext %9, i32 noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.if.end18_crit_edge, label %if.then11.land.lhs.true51_crit_edge

if.then11.land.lhs.true51_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true51

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %retry.if.end18_crit_edge
  %call19 = tail call i32 @mmc_erase(ptr noundef %3, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %arg.0101) #15
  %14 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call19, label %if.end18.out_crit_edge [
    i32 -5, label %if.end18.land.lhs.true51_crit_edge
    i32 0, label %if.end26
  ]

if.end18.land.lhs.true51_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true51

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end26:                                         ; preds = %if.end18
  br i1 %cmp2799, label %if.then29, label %if.end26.if.then57.critedge_crit_edge

if.end26.if.then57.critedge_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then57.critedge

if.then29:                                        ; preds = %if.end26
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 8
  %and31 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then29.if.end40_crit_edge, label %if.then33

if.then29.if.end40_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then33:                                        ; preds = %if.then29
  %17 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generic_cmd6_time, align 4
  %call36 = tail call i32 @mmc_switch(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext -120, i32 noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then33.if.end40_crit_edge, label %if.then33.land.lhs.true51_crit_edge

if.then33.land.lhs.true51_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true51

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.end40:                                         ; preds = %if.then33.if.end40_crit_edge, %if.then29.if.end40_crit_edge
  %call41 = tail call i32 @mmc_erase(ptr noundef %3, i32 noundef %conv, i32 noundef %shr.i, i32 noundef -2147450880) #15
  %19 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call41, label %if.end40.out_crit_edge [
    i32 -5, label %if.end40.land.lhs.true51_crit_edge
    i32 0, label %if.end40.if.then57.critedge_crit_edge
  ]

if.end40.if.then57.critedge_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then57.critedge

if.end40.land.lhs.true51_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true51

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true51:                                  ; preds = %if.end40.land.lhs.true51_crit_edge, %if.then33.land.lhs.true51_crit_edge, %if.end18.land.lhs.true51_crit_edge, %if.then11.land.lhs.true51_crit_edge
  %20 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reset_done.i, align 4
  %and.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true51.out_crit_edge

land.lhs.true51.out_crit_edge:                    ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %land.lhs.true51
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %or.i = or i32 %21, 8
  %24 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %reset_done.i, align 4
  %call.i = tail call i32 @mmc_hw_reset(ptr noundef %23) #15
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.retry_crit_edge, label %if.then3.i

if.end.i.retry_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 37
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %26, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  %part_type.i = getelementptr inbounds %struct.mmc_blk_data, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %part_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %part_type.i, align 4
  %part_curr.i = getelementptr inbounds %struct.mmc_blk_data, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %part_curr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %part_curr.i, align 4
  %32 = load ptr, ptr %card.i, align 4
  %part_type6.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %part_type6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %part_type6.i, align 4
  %call7.i = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %32, i32 noundef %34) #15
  br label %out

if.then57.critedge:                               ; preds = %if.end40.if.then57.critedge_crit_edge, %if.end26.if.then57.critedge_crit_edge
  %35 = ptrtoint ptr %reset_done.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reset_done.i, align 4
  %and.i89 = and i32 %36, -9
  store i32 %and.i89, ptr %reset_done.i, align 4
  br label %out

out:                                              ; preds = %if.then57.critedge, %if.then3.i, %land.lhs.true51.out_crit_edge, %if.end40.out_crit_edge, %if.end18.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i8 [ 0, %if.then57.critedge ], [ 1, %entry.out_crit_edge ], [ 0, %if.then3.i ], [ 0, %land.lhs.true51.out_crit_edge ], [ 10, %if.end40.out_crit_edge ], [ 10, %if.end18.out_crit_edge ]
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %status.0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_flush(ptr nocapture noundef readonly %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %bus_ops.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %flush_cache.i = getelementptr inbounds %struct.mmc_bus_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %flush_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush_cache.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.mmc_flush_cache.exit.thread_crit_edge, label %mmc_flush_cache.exit

entry.mmc_flush_cache.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_flush_cache.exit.thread

mmc_flush_cache.exit:                             ; preds = %entry
  %call.i = tail call i32 %9(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mmc_flush_cache.exit.mmc_flush_cache.exit.thread_crit_edge, label %mmc_flush_cache.exit._crit_edge

mmc_flush_cache.exit._crit_edge:                  ; preds = %mmc_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %10

mmc_flush_cache.exit.mmc_flush_cache.exit.thread_crit_edge: ; preds = %mmc_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_flush_cache.exit.thread

mmc_flush_cache.exit.thread:                      ; preds = %mmc_flush_cache.exit.mmc_flush_cache.exit.thread_crit_edge, %entry.mmc_flush_cache.exit.thread_crit_edge
  br label %10

10:                                               ; preds = %mmc_flush_cache.exit.thread, %mmc_flush_cache.exit._crit_edge
  %11 = phi i8 [ 0, %mmc_flush_cache.exit.thread ], [ 10, %mmc_flush_cache.exit._crit_edge ]
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %11) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mmc_unregister_driver(ptr noundef nonnull @mmc_driver) #15
  tail call void @unregister_blkdev(i32 noundef 179, ptr noundef nonnull @.str.7) #15
  %0 = load i32, ptr @mmc_rpmb_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 256) #15
  tail call void @bus_unregister(ptr noundef nonnull @mmc_rpmb_bus_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @mmc_rpmb_bus_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mmc_rpmb_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.91) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #19
  br label %out_bus_unreg

if.end10:                                         ; preds = %if.end
  %0 = load i32, ptr @perdev_minors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %cmp11.not = icmp eq i32 %0, 8
  br i1 %cmp11.not, label %if.end10.if.end18_crit_edge, label %do.end15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %0) #19
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end10.if.end18_crit_edge
  %1 = load i32, ptr @perdev_minors, align 4
  %div = sdiv i32 1048576, %1
  %2 = tail call i32 @llvm.smin.i32(i32 %div, i32 256)
  store i32 %2, ptr @max_devices, align 4
  %call21 = tail call i32 @__register_blkdev(i32 noundef 179, ptr noundef nonnull @.str.7, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %if.end18.out_chrdev_unreg_crit_edge

if.end18.out_chrdev_unreg_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_chrdev_unreg

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @mmc_register_driver(ptr noundef nonnull @mmc_driver) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %out_blkdev_unreg

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_blkdev_unreg:                                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_blkdev(i32 noundef 179, ptr noundef nonnull @.str.7) #15
  br label %out_chrdev_unreg

out_chrdev_unreg:                                 ; preds = %out_blkdev_unreg, %if.end18.out_chrdev_unreg_crit_edge
  %res.0 = phi i32 [ %call21, %if.end18.out_chrdev_unreg_crit_edge ], [ %call24, %out_blkdev_unreg ]
  %3 = load i32, ptr @mmc_rpmb_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 256) #15
  br label %out_bus_unreg

out_bus_unreg:                                    ; preds = %out_chrdev_unreg, %do.end7
  %res.1 = phi i32 [ %call2, %do.end7 ], [ %res.0, %out_chrdev_unreg ]
  tail call void @bus_unregister(ptr noundef nonnull @mmc_rpmb_bus_type) #15
  br label %cleanup

cleanup:                                          ; preds = %out_bus_unreg, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %res.1, %out_bus_unreg ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_post_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_check_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_send_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_fix_state(ptr noundef %card, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %data = getelementptr %struct.request, ptr %req, i32 2, i32 22
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %sub.i = add i32 %3, 999999
  %div.i = udiv i32 %sub.i, 1000000
  %timeout_clks.i = getelementptr %struct.request, ptr %req, i32 2, i32 23
  %4 = ptrtoint ptr %timeout_clks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.mmc_blk_data_timeout_ms.exit_crit_edge, label %if.then.i

entry.mmc_blk_data_timeout_ms.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_data_timeout_ms.exit

if.then.i:                                        ; preds = %entry
  %actual_clock.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %6 = ptrtoint ptr %actual_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_clock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %div.i.i = udiv i32 %7, 1000
  br label %mmc_blk_clock_khz.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %ios.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %ios.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i.i, label %land.end.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %div6.i.i = udiv i32 %9, 2000
  br label %mmc_blk_clock_khz.exit.i

land.end.i.i:                                     ; preds = %if.end.i.i
  %.b49.i.i = load i1, ptr @mmc_blk_clock_khz.__already_done, align 1
  br i1 %.b49.i.i, label %land.end.i.i.mmc_blk_clock_khz.exit.i_crit_edge, label %if.then13.i.i, !prof !254

land.end.i.i.mmc_blk_clock_khz.exit.i_crit_edge:  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_clock_khz.exit.i

if.then13.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mmc_blk_clock_khz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 969, i32 noundef 9, ptr noundef null) #15
  br label %mmc_blk_clock_khz.exit.i

mmc_blk_clock_khz.exit.i:                         ; preds = %if.then13.i.i, %land.end.i.i.mmc_blk_clock_khz.exit.i_crit_edge, %if.then3.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ %div6.i.i, %if.then3.i.i ], [ 100, %if.then13.i.i ], [ 100, %land.end.i.i.mmc_blk_clock_khz.exit.i_crit_edge ]
  %10 = ptrtoint ptr %timeout_clks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout_clks.i, align 4
  %add2.i = add nsw i32 %retval.0.i.i, -1
  %sub3.i = add i32 %add2.i, %11
  %div4.i = udiv i32 %sub3.i, %retval.0.i.i
  %add5.i = add i32 %div4.i, %div.i
  br label %mmc_blk_data_timeout_ms.exit

mmc_blk_data_timeout_ms.exit:                     ; preds = %mmc_blk_clock_khz.exit.i, %entry.mmc_blk_data_timeout_ms.exit_crit_edge
  %ms.0.i = phi i32 [ %add5.i, %mmc_blk_clock_khz.exit.i ], [ %div.i, %entry.mmc_blk_data_timeout_ms.exit_crit_edge ]
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 8
  %retune_now.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %retune_now.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1025
  store i16 %bf.clear.i, ptr %retune_now.i, align 8
  %hold_retune.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 33
  %15 = ptrtoint ptr %hold_retune.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hold_retune.i, align 8
  %add.i = add i32 %16, 1
  store i32 %add.i, ptr %hold_retune.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #15
  %17 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 44)
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %cmd.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 149, ptr %flags.i, align 4
  %busy_timeout.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 6
  %21 = ptrtoint ptr %busy_timeout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %ms.0.i, ptr %busy_timeout.i, align 4
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 8
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %23, ptr noundef nonnull %cmd.i, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #15
  %call5 = call i32 @mmc_poll_for_busy(ptr noundef %card, i32 noundef %ms.0.i, i1 noundef zeroext false, i32 noundef 4) #15
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 8
  call void @mmc_retune_release(ptr noundef %25) #15
  ret i32 %call5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_read_single(ptr noundef %mq, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %cmd = getelementptr %struct.request, ptr %req, i32 1, i32 1
  %data = getelementptr %struct.request, ptr %req, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !253
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef 1, ptr noundef %mq)
  call void @mmc_wait_for_req(ptr noundef %3, ptr noundef %add.ptr.i.i) #15
  %call4 = call i32 @mmc_send_status(ptr noundef %1, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.body.error_exit_crit_edge

do.body.error_exit_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.end:                                           ; preds = %do.body
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 32
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = and i32 %8, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %9)
  %10 = icmp eq i32 %9, 2304
  br i1 %10, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %1, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.error_exit_crit_edge

if.then7.error_exit_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %error13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.end12.while.end_crit_edge, label %while.cond.1

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.cond.1:                                     ; preds = %if.end12
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef 1, ptr noundef %mq)
  call void @mmc_wait_for_req(ptr noundef %3, ptr noundef %add.ptr.i.i) #15
  %call4.1 = call i32 @mmc_send_status(ptr noundef %1, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %while.cond.1.error_exit_crit_edge

while.cond.1.error_exit_crit_edge:                ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.end.1:                                         ; preds = %while.cond.1
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps, align 32
  %and.1 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool5.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool5.not.1, label %land.lhs.true.1, label %if.end.1.if.end12.1_crit_edge

if.end.1.if.end12.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %19 = and i32 %18, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %19)
  %20 = icmp eq i32 %19, 2304
  br i1 %20, label %land.lhs.true.1.if.end12.1_crit_edge, label %if.then7.1

land.lhs.true.1.if.end12.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.1

if.then7.1:                                       ; preds = %land.lhs.true.1
  %call8.1 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %1, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.then7.1.if.end12.1_crit_edge, label %if.then7.1.error_exit_crit_edge

if.then7.1.error_exit_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.then7.1.if.end12.1_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.1

if.end12.1:                                       ; preds = %if.then7.1.if.end12.1_crit_edge, %land.lhs.true.1.if.end12.1_crit_edge, %if.end.1.if.end12.1_crit_edge
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd, align 4
  %error13.1 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error13.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error13.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not.1 = icmp eq i32 %24, 0
  br i1 %tobool14.not.1, label %if.end12.1.while.end_crit_edge, label %while.cond.2

if.end12.1.while.end_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.cond.2:                                     ; preds = %if.end12.1
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef 1, ptr noundef %mq)
  call void @mmc_wait_for_req(ptr noundef %3, ptr noundef %add.ptr.i.i) #15
  %call4.2 = call i32 @mmc_send_status(ptr noundef %1, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %while.cond.2.error_exit_crit_edge

while.cond.2.error_exit_crit_edge:                ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.end.2:                                         ; preds = %while.cond.2
  %25 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps, align 32
  %and.2 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool5.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool5.not.2, label %land.lhs.true.2, label %if.end.2.while.end_crit_edge

if.end.2.while.end_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.lhs.true.2:                                  ; preds = %if.end.2
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %29 = and i32 %28, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %29)
  %30 = icmp eq i32 %29, 2304
  br i1 %30, label %land.lhs.true.2.while.end_crit_edge, label %if.then7.2

land.lhs.true.2.while.end_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then7.2:                                       ; preds = %land.lhs.true.2
  %call8.2 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %1, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.then7.2.while.end_crit_edge, label %if.then7.2.error_exit_crit_edge

if.then7.2.error_exit_crit_edge:                  ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_exit

if.then7.2.while.end_crit_edge:                   ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.then7.2.while.end_crit_edge, %land.lhs.true.2.while.end_crit_edge, %if.end.2.while.end_crit_edge, %if.end12.1.while.end_crit_edge, %if.end12.while.end_crit_edge
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd, align 4
  %error18 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %error18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool19.not = icmp eq i32 %34, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %while.end.do.cond_crit_edge

while.end.do.cond_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

lor.lhs.false:                                    ; preds = %while.end
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %error20 = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %error20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool21.not = icmp eq i32 %38, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false.do.cond_crit_edge

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps, align 32
  %and24 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %lor.lhs.false22.if.else_crit_edge

lor.lhs.false22.if.else_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true26:                                  ; preds = %lor.lhs.false22
  %resp = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %resp, align 4
  %and28 = and i32 %42, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %land.lhs.true26.do.cond_crit_edge

land.lhs.true26.do.cond_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

lor.lhs.false30:                                  ; preds = %land.lhs.true26
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status, align 4
  %and31 = and i32 %44, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.lhs.false30.if.else_crit_edge, label %lor.lhs.false30.do.cond_crit_edge

lor.lhs.false30.do.cond_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

lor.lhs.false30.if.else_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %lor.lhs.false30.if.else_crit_edge, %lor.lhs.false22.if.else_crit_edge
  br label %do.cond

do.cond:                                          ; preds = %if.else, %lor.lhs.false30.do.cond_crit_edge, %land.lhs.true26.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge, %while.end.do.cond_crit_edge
  %error.2.ph = phi i8 [ 10, %while.end.do.cond_crit_edge ], [ 10, %lor.lhs.false.do.cond_crit_edge ], [ 10, %land.lhs.true26.do.cond_crit_edge ], [ 10, %lor.lhs.false30.do.cond_crit_edge ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  %call37 = call zeroext i1 @blk_update_request(ptr noundef %req, i8 noundef zeroext %error.2.ph, i32 noundef 512) #15
  br i1 %call37, label %do.cond.do.body_crit_edge, label %do.cond.cleanup45_crit_edge

do.cond.cleanup45_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

error_exit:                                       ; preds = %if.then7.2.error_exit_crit_edge, %while.cond.2.error_exit_crit_edge, %if.then7.1.error_exit_crit_edge, %while.cond.1.error_exit_crit_edge, %if.then7.error_exit_crit_edge, %do.body.error_exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bytes_xfered, align 4
  %call39 = call zeroext i1 @blk_update_request(ptr noundef %req, i8 noundef zeroext 10, i32 noundef 512) #15
  %retries40 = getelementptr %struct.request, ptr %req, i32 2, i32 32
  %48 = ptrtoint ptr %retries40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retries40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp41 = icmp sgt i32 %49, 4
  br i1 %cmp41, label %if.then42, label %error_exit.cleanup45_crit_edge

error_exit.cleanup45_crit_edge:                   ; preds = %error_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

if.then42:                                        ; preds = %error_exit
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %retries40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %retries40, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %if.then42, %error_exit.cleanup45_crit_edge, %do.cond.cleanup45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_rw_rq_prep(ptr noundef %mqrq, ptr nocapture noundef readonly %card, i32 noundef %disable_multi, ptr noundef %mq) unnamed_addr #0 align 64 {
entry:
  %do_rel_wr = alloca i8, align 1
  %do_data_tag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %do_rel_wr) #15
  %2 = ptrtoint ptr %do_rel_wr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %do_rel_wr, align 1, !annotation !253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %do_data_tag) #15
  %3 = ptrtoint ptr %do_data_tag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %do_data_tag, align 1, !annotation !253
  call fastcc void @mmc_blk_data_prep(ptr noundef %mq, ptr noundef %mqrq, i32 noundef %disable_multi, ptr noundef nonnull %do_rel_wr, ptr noundef nonnull %do_data_tag)
  %cmd = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 2
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %mqrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %cmd2, align 4
  %__sector.i = getelementptr i8, ptr %mqrq, i32 -152
  %5 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %6 to i32
  %arg = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arg, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shl = shl i32 %conv, 9
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %arg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 181, ptr %flags, align 4
  %blocks = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %do_rel_wr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %do_rel_wr, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end26.sink.split_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

lor.lhs.false.if.end26.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.sink.split

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps, align 32
  %and12 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.then20_crit_edge, label %lor.lhs.false14

if.then11.if.then20_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

lor.lhs.false14:                                  ; preds = %if.then11
  %cmd_flags = getelementptr i8, ptr %mqrq, i32 -180
  %20 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false14.if.then20_crit_edge, label %lor.lhs.false14.if.end26_crit_edge

lor.lhs.false14.if.end26_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

lor.lhs.false14.if.then20_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false14.if.then20_crit_edge, %if.then11.if.then20_crit_edge
  %stop = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 3
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then20, %lor.lhs.false.if.end26.sink.split_crit_edge
  %stop.sink = phi ptr [ %stop, %if.then20 ], [ null, %lor.lhs.false.if.end26.sink.split_crit_edge ]
  %readcmd.0.ph = phi i32 [ 18, %if.then20 ], [ 17, %lor.lhs.false.if.end26.sink.split_crit_edge ]
  %writecmd.0.ph = phi i32 [ 25, %if.then20 ], [ 24, %lor.lhs.false.if.end26.sink.split_crit_edge ]
  %stop22 = getelementptr inbounds %struct.mmc_request, ptr %mqrq, i32 0, i32 3
  %22 = ptrtoint ptr %stop22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %stop.sink, ptr %stop22, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %lor.lhs.false14.if.end26_crit_edge
  %readcmd.0 = phi i32 [ 18, %lor.lhs.false14.if.end26_crit_edge ], [ %readcmd.0.ph, %if.end26.sink.split ]
  %writecmd.0 = phi i32 [ 25, %lor.lhs.false14.if.end26_crit_edge ], [ %writecmd.0.ph, %if.end26.sink.split ]
  %cmd_flags27 = getelementptr i8, ptr %mqrq, i32 -180
  %23 = ptrtoint ptr %cmd_flags27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_flags27, align 4
  %and.i94 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.i95.not = icmp eq i32 %and.i94, 0
  %writecmd.0.readcmd.0 = select i1 %tobool.i95.not, i32 %readcmd.0, i32 %writecmd.0
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %writecmd.0.readcmd.0, ptr %cmd, align 4
  %flags36 = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags36, align 4
  %and37 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end26.if.end70_crit_edge, label %land.lhs.true

if.end26.if.end70_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end26
  %28 = zext i32 %writecmd.0.readcmd.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %writecmd.0.readcmd.0, label %land.lhs.true.if.end70_crit_edge [
    i32 25, label %land.lhs.true.land.lhs.true43_crit_edge
    i32 18, label %land.lhs.true.land.lhs.true43_crit_edge96
  ]

land.lhs.true.land.lhs.true43_crit_edge96:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true43

land.lhs.true.land.lhs.true43_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true43

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

land.lhs.true43:                                  ; preds = %land.lhs.true.land.lhs.true43_crit_edge, %land.lhs.true.land.lhs.true43_crit_edge96
  %29 = ptrtoint ptr %do_rel_wr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %do_rel_wr, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  br i1 %tobool44.not, label %lor.lhs.false46, label %land.lhs.true43.if.then52_crit_edge

land.lhs.true43.if.then52_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

lor.lhs.false46:                                  ; preds = %land.lhs.true43
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %31 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks, align 8
  %and47 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %lor.lhs.false46.if.then52_crit_edge, label %lor.lhs.false49

lor.lhs.false46.if.then52_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %33 = ptrtoint ptr %do_data_tag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %do_data_tag, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool50.not = icmp eq i8 %34, 0
  br i1 %tobool50.not, label %lor.lhs.false49.if.end70_crit_edge, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

lor.lhs.false49.if.end70_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %lor.lhs.false46.if.then52_crit_edge, %land.lhs.true43.if.then52_crit_edge
  %cond58 = phi i32 [ 0, %lor.lhs.false49.if.then52_crit_edge ], [ 0, %lor.lhs.false46.if.then52_crit_edge ], [ -2147483648, %land.lhs.true43.if.then52_crit_edge ]
  %sbc = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 1
  %35 = ptrtoint ptr %sbc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 23, ptr %sbc, align 4
  %or = or i32 %cond58, %13
  %36 = ptrtoint ptr %do_data_tag to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %do_data_tag, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool59.not = icmp eq i8 %37, 0
  %cond61 = select i1 %tobool59.not, i32 0, i32 536870912
  %or62 = or i32 %or, %cond61
  %arg64 = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arg64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or62, ptr %arg64, align 4
  %flags66 = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %flags66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 21, ptr %flags66, align 4
  %40 = ptrtoint ptr %mqrq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sbc, ptr %mqrq, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then52, %lor.lhs.false49.if.end70_crit_edge, %land.lhs.true.if.end70_crit_edge, %if.end26.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %do_data_tag) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %do_rel_wr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_data_prep(ptr noundef %mq, ptr noundef %mqrq, i32 noundef %disable_multi, ptr noundef writeonly %do_rel_wr_p, ptr noundef writeonly %do_data_tag_p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdata = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 3
  %0 = ptrtoint ptr %blkdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdata, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %cmd_flags = getelementptr i8, ptr %mqrq, i32 -180
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  %6 = and i32 %5, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %6)
  %.not = icmp eq i32 %6, 131073
  br i1 %.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and8 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp ne i32 %and8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool9, %land.rhs ]
  %frombool = zext i1 %9 to i8
  %10 = call ptr @memset(ptr %mqrq, i32 0, i32 356)
  tail call void @mmc_crypto_prepare_req(ptr noundef %mqrq) #15
  %data = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4
  %data10 = getelementptr inbounds %struct.mmc_request, ptr %mqrq, i32 0, i32 2
  %11 = ptrtoint ptr %data10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %data10, align 4
  %tag = getelementptr i8, ptr %mqrq, i32 -172
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  %tag12 = getelementptr inbounds %struct.mmc_request, ptr %mqrq, i32 0, i32 10
  %14 = ptrtoint ptr %tag12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tag12, align 4
  %stop = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 3
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %stop, align 4
  %arg = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arg, align 4
  %17 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_flags, align 4
  %and.i248 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i248)
  %tobool.i249 = icmp ne i32 %and.i248, 0
  %spec.select = select i1 %tobool.i249, i32 256, i32 512
  %spec.select278 = select i1 %tobool.i249, i32 1181, i32 149
  %19 = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select278, ptr %21, align 4
  %blksz = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %blksz, align 4
  %__data_len.i.i = getelementptr i8, ptr %mqrq, i32 -160
  %24 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %25, 9
  %blocks = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %blocks, align 4
  %__sector.i = getelementptr i8, ptr %mqrq, i32 -152
  %27 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %__sector.i, align 8
  %conv33 = trunc i64 %28 to i32
  %blk_addr = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %blk_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv33, ptr %blk_addr, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %33)
  %cmp37 = icmp ugt i32 %shr.i, %33
  br i1 %cmp37, label %if.then39, label %if.end44thread-pre-split

if.then39:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %blocks, align 4
  br label %if.end44

if.end44thread-pre-split:                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %blocks, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.then39
  %36 = phi i32 [ %.pr, %if.end44thread-pre-split ], [ %33, %if.then39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp47 = icmp ugt i32 %36, 1
  br i1 %cmp47, label %if.then49, label %if.end44.if.end97_crit_edge

if.end44.if.end97_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then49:                                        ; preds = %if.end44
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps, align 32
  %and51 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %brmerge = select i1 %tobool52.not, i1 true, i1 %tobool.i249
  br i1 %brmerge, label %if.then49.if.end71_crit_edge, label %land.lhs.true61

if.then49.if.end71_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

land.lhs.true61:                                  ; preds = %if.then49
  %41 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %__sector.i, align 8
  %43 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_len.i.i, align 8
  %shr.i254 = lshr i32 %44, 9
  %conv64 = zext i32 %shr.i254 to i64
  %add = add i64 %42, %conv64
  %disk = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %50)
  %cmp66 = icmp eq i64 %add, %50
  br i1 %cmp66, label %if.then68, label %land.lhs.true61.if.end71_crit_edge

land.lhs.true61.if.end71_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then68:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %36, -1
  %51 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dec, ptr %blocks, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true61.if.end71_crit_edge, %if.then49.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_multi)
  %tobool72.not = icmp eq i32 %disable_multi, 0
  br i1 %tobool72.not, label %if.end71.if.end76_crit_edge, label %if.then73

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %blocks, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end71.if.end76_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 8
  %ops = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %multi_io_quirk = getelementptr inbounds %struct.mmc_host_ops, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %multi_io_quirk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %multi_io_quirk, align 4
  %tobool78.not = icmp eq ptr %58, null
  br i1 %tobool78.not, label %if.end76.if.end97_crit_edge, label %if.then79

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %cond90 = select i1 %tobool.i249, i32 256, i32 512
  %59 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blocks, align 4
  %call93 = tail call i32 %58(ptr noundef %3, i32 noundef %cond90, i32 noundef %60) #15
  %61 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call93, ptr %blocks, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then79, %if.end76.if.end97_crit_edge, %if.end44.if.end97_crit_edge
  br i1 %9, label %if.then99, label %if.end97.if.end102_crit_edge

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then99:                                        ; preds = %if.end97
  %rel_param.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 4
  %62 = ptrtoint ptr %rel_param.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rel_param.i, align 4
  %64 = and i8 %63, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then99.mmc_apply_rel_rw.exit_crit_edge

if.then99.mmc_apply_rel_rw.exit_crit_edge:        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_apply_rel_rw.exit

if.then.i:                                        ; preds = %if.then99
  %65 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %__sector.i, align 8
  %rel_sectors.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 3
  %67 = ptrtoint ptr %rel_sectors.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rel_sectors.i, align 1
  %conv2.i = zext i8 %68 to i64
  %sub.i = add nsw i64 %conv2.i, -1
  %and3.i = and i64 %sub.i, %66
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %cmp.i = icmp eq i64 %and3.i, 0
  br i1 %cmp.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %blocks, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %70 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blocks, align 4
  %72 = ptrtoint ptr %rel_sectors.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rel_sectors.i, align 1
  %conv10.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv10.i)
  %cmp11.i = icmp ugt i32 %71, %conv10.i
  br i1 %cmp11.i, label %if.end.i.if.end31.sink.split.i_crit_edge, label %if.else.i

if.end.i.if.end31.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv10.i)
  %cmp24.i = icmp ult i32 %71, %conv10.i
  br i1 %cmp24.i, label %if.else.i.if.end31.sink.split.i_crit_edge, label %if.else.i.mmc_apply_rel_rw.exit_crit_edge

if.else.i.mmc_apply_rel_rw.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_apply_rel_rw.exit

if.else.i.if.end31.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.else.i.if.end31.sink.split.i_crit_edge, %if.end.i.if.end31.sink.split.i_crit_edge
  %conv10.sink.i = phi i32 [ %conv10.i, %if.end.i.if.end31.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end31.sink.split.i_crit_edge ]
  %74 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv10.sink.i, ptr %blocks, align 4
  br label %mmc_apply_rel_rw.exit

mmc_apply_rel_rw.exit:                            ; preds = %if.end31.sink.split.i, %if.else.i.mmc_apply_rel_rw.exit_crit_edge, %if.then99.mmc_apply_rel_rw.exit_crit_edge
  %75 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %19, align 4
  %or = or i32 %76, 4096
  store i32 %or, ptr %19, align 4
  br label %if.end102

if.end102:                                        ; preds = %mmc_apply_rel_rw.exit, %if.end97.if.end102_crit_edge
  %data_tag_unit_size = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 36
  %77 = ptrtoint ptr %data_tag_unit_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_tag_unit_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool103.not = icmp eq i32 %78, 0
  br i1 %tobool103.not, label %if.end102.if.end133_crit_edge, label %land.lhs.true104

if.end102.if.end133_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

land.lhs.true104:                                 ; preds = %if.end102
  %79 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmd_flags, align 4
  %81 = and i32 %80, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %81)
  %.not270 = icmp eq i32 %81, 4097
  br i1 %.not270, label %land.end126, label %land.lhs.true104.if.end133_crit_edge

land.lhs.true104.if.end133_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

land.end126:                                      ; preds = %land.lhs.true104
  %82 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %blocks, align 4
  %84 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %blksz, align 4
  %mul = mul i32 %85, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %78)
  %cmp124.not = icmp ult i32 %mul, %78
  br i1 %cmp124.not, label %land.end126.if.end133_crit_edge, label %if.then129

land.end126.if.end133_crit_edge:                  ; preds = %land.end126
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.then129:                                       ; preds = %land.end126
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %19, align 4
  %or132 = or i32 %87, 8192
  store i32 %or132, ptr %19, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %land.end126.if.end133_crit_edge, %land.lhs.true104.if.end133_crit_edge, %if.end102.if.end133_crit_edge
  %frombool127262 = phi i8 [ 1, %if.then129 ], [ 0, %land.end126.if.end133_crit_edge ], [ 0, %land.lhs.true104.if.end133_crit_edge ], [ 0, %if.end102.if.end133_crit_edge ]
  tail call void @mmc_set_data_timeout(ptr noundef %data, ptr noundef %3) #15
  %sg = getelementptr inbounds %struct.mmc_queue_req, ptr %mqrq, i32 0, i32 1
  %88 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sg, align 4
  %sg136 = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 12
  %90 = ptrtoint ptr %sg136 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %sg136, align 4
  %call137 = tail call i32 @mmc_queue_map_sg(ptr noundef %mq, ptr noundef %mqrq) #15
  %sg_len = getelementptr inbounds %struct.mmc_blk_request, ptr %mqrq, i32 0, i32 4, i32 10
  %91 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call137, ptr %sg_len, align 4
  %92 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blocks, align 4
  %94 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %__data_len.i.i, align 8
  %shr.i260 = lshr i32 %95, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %shr.i260)
  %cmp142.not = icmp eq i32 %93, %shr.i260
  br i1 %cmp142.not, label %if.end133.if.end164_crit_edge, label %if.then144

if.end133.if.end164_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end164

if.then144:                                       ; preds = %if.end133
  %96 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp152266.not = icmp eq i32 %97, 0
  br i1 %cmp152266.not, label %if.then144.for.end_crit_edge, label %for.body.preheader

if.then144.for.end_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %if.then144
  %98 = ptrtoint ptr %sg136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sg136, align 4
  %shl = shl i32 %93, 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sg147.0269 = phi ptr [ %call161, %for.inc.for.body_crit_edge ], [ %99, %for.body.preheader ]
  %data_size.0268 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %shl, %for.body.preheader ]
  %i.0267 = phi i32 [ %inc160, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg147.0269, i32 0, i32 2
  %100 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length, align 4
  %sub = sub i32 %data_size.0268, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp154 = icmp slt i32 %sub, 1
  br i1 %cmp154, label %if.then156, label %for.inc

if.then156:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %length.le = getelementptr inbounds %struct.scatterlist, ptr %sg147.0269, i32 0, i32 2
  %102 = ptrtoint ptr %length.le to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %data_size.0268, ptr %length.le, align 4
  %inc = add nuw i32 %i.0267, 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc160 = add nuw i32 %i.0267, 1
  %call161 = tail call ptr @sg_next(ptr noundef %sg147.0269) #15
  %103 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sg_len, align 4
  %cmp152 = icmp ult i32 %inc160, %104
  br i1 %cmp152, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then156, %if.then144.for.end_crit_edge
  %i.1 = phi i32 [ %inc, %if.then156 ], [ 0, %if.then144.for.end_crit_edge ], [ %inc160, %for.inc.for.end_crit_edge ]
  %105 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %i.1, ptr %sg_len, align 4
  br label %if.end164

if.end164:                                        ; preds = %for.end, %if.end133.if.end164_crit_edge
  %tobool165.not = icmp eq ptr %do_rel_wr_p, null
  br i1 %tobool165.not, label %if.end164.if.end169_crit_edge, label %if.then166

if.end164.if.end169_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

if.then166:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %do_rel_wr_p to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool, ptr %do_rel_wr_p, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.end164.if.end169_crit_edge
  %tobool170.not = icmp eq ptr %do_data_tag_p, null
  br i1 %tobool170.not, label %if.end169.if.end174_crit_edge, label %if.then171

if.end169.if.end174_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end174

if.then171:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %do_data_tag_p to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %frombool127262, ptr %do_data_tag_p, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end169.if.end174_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_crypto_prepare_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_queue_map_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_run_bkops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_busy_cb(ptr nocapture noundef %cb_data, ptr nocapture noundef writeonly %busy) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb_data, align 4
  %call = call i32 @mmc_send_status(ptr noundef %2, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %status1 = getelementptr inbounds %struct.mmc_blk_busy_data, ptr %cb_data, i32 0, i32 1
  %5 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status1, align 4
  %or = or i32 %6, %4
  store i32 %or, ptr %status1, align 4
  %7 = and i32 %4, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %7)
  %8 = icmp ne i32 %7, 2304
  %frombool = zext i1 %8 to i8
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %busy, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_rw_wait(ptr noundef %mq, ptr noundef %prev_req) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2216) #15
  %lock.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %recovery_needed.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 9
  %0 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %recovery_needed.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.mmc_blk_rw_wait_cond.exit_crit_edge

entry.mmc_blk_rw_wait_cond.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_rw_wait_cond.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rw_wait.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 11
  %2 = ptrtoint ptr %rw_wait.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rw_wait.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %extract.t.i = icmp ne i8 %3, 1
  br label %mmc_blk_rw_wait_cond.exit

mmc_blk_rw_wait_cond.exit:                        ; preds = %if.else.i, %entry.mmc_blk_rw_wait_cond.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.else.i ], [ -16, %entry.mmc_blk_rw_wait_cond.exit_crit_edge ]
  %done.0.off0.i = phi i1 [ %extract.t.i, %if.else.i ], [ true, %entry.mmc_blk_rw_wait_cond.exit_crit_edge ]
  %lnot7.i = xor i1 %done.0.off0.i, true
  %waiting.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 12
  %frombool8.i = zext i1 %lnot7.i to i8
  %4 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool8.i, ptr %waiting.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  br i1 %done.0.off0.i, label %mmc_blk_rw_wait_cond.exit.do.end11_crit_edge, label %if.end

mmc_blk_rw_wait_cond.exit.do.end11_crit_edge:     ; preds = %mmc_blk_rw_wait_cond.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

if.end:                                           ; preds = %mmc_blk_rw_wait_cond.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 14
  %rw_wait.i22 = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %err.1 = phi i32 [ %err.0, %if.end ], [ %err.2, %cleanup ]
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call2.i18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %6 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_needed.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i20 = icmp eq i8 %7, 0
  br i1 %tobool.not.i20, label %if.else.i24, label %for.cond.mmc_blk_rw_wait_cond.exit29_crit_edge

for.cond.mmc_blk_rw_wait_cond.exit29_crit_edge:   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_rw_wait_cond.exit29

if.else.i24:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %rw_wait.i22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rw_wait.i22, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %extract.t.i23 = icmp ne i8 %9, 1
  br label %mmc_blk_rw_wait_cond.exit29

mmc_blk_rw_wait_cond.exit29:                      ; preds = %if.else.i24, %for.cond.mmc_blk_rw_wait_cond.exit29_crit_edge
  %err.2 = phi i32 [ %err.1, %if.else.i24 ], [ -16, %for.cond.mmc_blk_rw_wait_cond.exit29_crit_edge ]
  %done.0.off0.i25 = phi i1 [ %extract.t.i23, %if.else.i24 ], [ true, %for.cond.mmc_blk_rw_wait_cond.exit29_crit_edge ]
  %lnot7.i26 = xor i1 %done.0.off0.i25, true
  %frombool8.i28 = zext i1 %lnot7.i26 to i8
  %10 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool8.i28, ptr %waiting.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i18) #15
  br i1 %done.0.off0.i25, label %for.end, label %cleanup

cleanup:                                          ; preds = %mmc_blk_rw_wait_cond.exit29
  call void @__sanitizer_cov_trace_pc() #17
  call void @schedule() #15
  br label %for.cond

for.end:                                          ; preds = %mmc_blk_rw_wait_cond.exit29
  call void @__sanitizer_cov_trace_pc() #17
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end11

do.end11:                                         ; preds = %for.end, %mmc_blk_rw_wait_cond.exit.do.end11_crit_edge
  %err.3 = phi i32 [ %err.0, %mmc_blk_rw_wait_cond.exit.do.end11_crit_edge ], [ %err.2, %for.end ]
  call fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %mq, ptr noundef %prev_req)
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_get_ext_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sanitize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_erase(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_erase(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_secure_erase_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_erase_group_aligned(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_cqe_req_done(ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %mrq, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %in_recovery = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %in_recovery to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_recovery, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %3, ptr noundef %add.ptr.i.i)
  br label %if.end8

if.else:                                          ; preds = %entry
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.if.then7_crit_edge, label %blk_should_fake_timeout.exit

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

blk_should_fake_timeout.exit:                     ; preds = %if.else
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %1) #15
  br i1 %call1.i, label %blk_should_fake_timeout.exit.if.end8_crit_edge, label %blk_should_fake_timeout.exit.if.then7_crit_edge, !prof !252

blk_should_fake_timeout.exit.if.then7_crit_edge:  ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

blk_should_fake_timeout.exit.if.end8_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %blk_should_fake_timeout.exit.if.then7_crit_edge, %if.else.if.then7_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %add.ptr.i.i) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %blk_should_fake_timeout.exit.if.end8_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_recovery_notifier(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cqe_start_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_hsq_req_done(ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %mrq, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %error.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.mmc_blk_eval_resp_error.exit.i_crit_edge

entry.mmc_blk_eval_resp_error.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then.i.i:                                      ; preds = %entry
  %resp.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp.i.i, align 4
  %and.i.i = and i32 %11, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool3.not.i.i = icmp sgt i32 %11, -1
  br i1 %tobool3.not.i.i, label %if.then.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

if.then.i.i.land.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrq, align 4
  %tobool4.not.i.i = icmp eq ptr %13, null
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then.i.i.land.end.i.i_crit_edge
  %14 = phi i1 [ false, %if.then.i.i.land.end.i.i_crit_edge ], [ %tobool4.not.i.i, %land.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %brmerge.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %14
  br i1 %brmerge.i.i, label %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, label %if.then7.i.i

land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %error.i.i, align 4
  br label %mmc_blk_eval_resp_error.exit.i

mmc_blk_eval_resp_error.exit.i:                   ; preds = %if.then7.i.i, %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, %entry.mmc_blk_eval_resp_error.exit.i_crit_edge
  %error.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %mmc_blk_eval_resp_error.exit.i.do.body5_crit_edge

mmc_blk_eval_resp_error.exit.i.do.body5_crit_edge: ; preds = %mmc_blk_eval_resp_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.lhs.false.i:                                  ; preds = %mmc_blk_eval_resp_error.exit.i
  %error1.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %error1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.body5_crit_edge

lor.lhs.false.i.do.body5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.i = icmp eq i32 %21, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.do.body5_crit_edge

lor.lhs.false3.i.do.body5_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %error7.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 4, i32 5
  %22 = ptrtoint ptr %error7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i, label %mmc_blk_rq_error.exit, label %lor.lhs.false6.i.do.body5_crit_edge

lor.lhs.false6.i.do.body5_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

mmc_blk_rq_error.exit:                            ; preds = %lor.lhs.false6.i
  %resp.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resp.i, align 4
  %and.i = and i32 %25, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.i.not, label %lor.lhs.false, label %mmc_blk_rq_error.exit.do.body5_crit_edge

mmc_blk_rq_error.exit.do.body5_crit_edge:         ; preds = %mmc_blk_rq_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.lhs.false:                                    ; preds = %mmc_blk_rq_error.exit
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps.i, align 32
  %and.i44 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %land.rhs.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resp.i, align 4
  %and2.i = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %mmc_blk_urgent_bkops_needed.exit, label %land.rhs.i.do.body5_crit_edge

land.rhs.i.do.body5_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

mmc_blk_urgent_bkops_needed.exit:                 ; preds = %land.rhs.i
  %resp5.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %resp5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp5.i, align 4
  %and7.i = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i.not = icmp eq i32 %and7.i, 0
  br i1 %tobool8.i.not, label %mmc_blk_urgent_bkops_needed.exit.if.end_crit_edge, label %mmc_blk_urgent_bkops_needed.exit.do.body5_crit_edge

mmc_blk_urgent_bkops_needed.exit.do.body5_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

mmc_blk_urgent_bkops_needed.exit.if.end_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body5:                                         ; preds = %mmc_blk_urgent_bkops_needed.exit.do.body5_crit_edge, %land.rhs.i.do.body5_crit_edge, %mmc_blk_rq_error.exit.do.body5_crit_edge, %lor.lhs.false6.i.do.body5_crit_edge, %lor.lhs.false3.i.do.body5_crit_edge, %lor.lhs.false.i.do.body5_crit_edge, %mmc_blk_eval_resp_error.exit.i.do.body5_crit_edge
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %recovery_needed = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %recovery_needed, align 1
  %recovery_req = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 15
  %39 = ptrtoint ptr %recovery_req to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i, ptr %recovery_req, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #15
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 62
  %40 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cqe_ops, align 8
  %cqe_recovery_start = getelementptr inbounds %struct.mmc_cqe_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %cqe_recovery_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cqe_recovery_start, align 4
  tail call void %43(ptr noundef %7) #15
  %recovery_work = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %recovery_work) #15
  br label %cleanup

if.end:                                           ; preds = %mmc_blk_urgent_bkops_needed.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %cmd_flags.i = getelementptr i8, ptr %mrq, i32 -180
  %45 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i48 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.i.not.i = icmp eq i32 %and.i.i48, 0
  %blkdata.i = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %blkdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %blkdata.i, align 4
  %neg.i.i = select i1 %tobool.i.not.i, i32 -2, i32 -3
  %reset_done.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %reset_done.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reset_done.i.i, align 4
  %and.i2.i = and i32 %neg.i.i, %50
  store i32 %and.i2.i, ptr %reset_done.i.i, align 4
  %in_recovery = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %in_recovery to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %in_recovery, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %3, ptr noundef %add.ptr.i.i)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %queue_flags.i, align 4
  %57 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i49 = icmp eq i32 %57, 0
  br i1 %tobool.not.i49, label %if.else.if.then19_crit_edge, label %blk_should_fake_timeout.exit

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

blk_should_fake_timeout.exit:                     ; preds = %if.else
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %54) #15
  br i1 %call1.i, label %blk_should_fake_timeout.exit.cleanup_crit_edge, label %blk_should_fake_timeout.exit.if.then19_crit_edge, !prof !252

blk_should_fake_timeout.exit.if.then19_crit_edge: ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

blk_should_fake_timeout.exit.cleanup_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then19:                                        ; preds = %blk_should_fake_timeout.exit.if.then19_crit_edge, %if.else.if.then19_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %add.ptr.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %blk_should_fake_timeout.exit.cleanup_crit_edge, %if.then13, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_mq_req_done(ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %mrq, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %complete_req = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %complete_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i, ptr %complete_req, align 4
  %rw_wait = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %rw_wait to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rw_wait, align 1
  %waiting10 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %waiting10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %waiting10, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #15
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %wait = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %complete_wq = getelementptr inbounds %struct.mmc_card, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %complete_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete_wq, align 4
  %complete_work = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %complete_work) #15
  br label %cleanup

if.end16:                                         ; preds = %entry
  %error.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end16.mmc_blk_eval_resp_error.exit.i_crit_edge

if.end16.mmc_blk_eval_resp_error.exit.i_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then.i.i:                                      ; preds = %if.end16
  %resp.i.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp.i.i, align 4
  %and.i.i = and i32 %21, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool3.not.i.i = icmp sgt i32 %21, -1
  br i1 %tobool3.not.i.i, label %if.then.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

if.then.i.i.land.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq, align 4
  %tobool4.not.i.i = icmp eq ptr %23, null
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then.i.i.land.end.i.i_crit_edge
  %24 = phi i1 [ false, %if.then.i.i.land.end.i.i_crit_edge ], [ %tobool4.not.i.i, %land.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %brmerge.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %24
  br i1 %brmerge.i.i, label %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, label %if.then7.i.i

land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_eval_resp_error.exit.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -5, ptr %error.i.i, align 4
  br label %mmc_blk_eval_resp_error.exit.i

mmc_blk_eval_resp_error.exit.i:                   ; preds = %if.then7.i.i, %land.end.i.i.mmc_blk_eval_resp_error.exit.i_crit_edge, %if.end16.mmc_blk_eval_resp_error.exit.i_crit_edge
  %error.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %mmc_blk_eval_resp_error.exit.i.do.body23_crit_edge

mmc_blk_eval_resp_error.exit.i.do.body23_crit_edge: ; preds = %mmc_blk_eval_resp_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

lor.lhs.false.i:                                  ; preds = %mmc_blk_eval_resp_error.exit.i
  %error1.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %error1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.body23_crit_edge

lor.lhs.false.i.do.body23_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not.i = icmp eq i32 %31, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.do.body23_crit_edge

lor.lhs.false3.i.do.body23_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %error7.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %error7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool8.not.i = icmp eq i32 %33, 0
  br i1 %tobool8.not.i, label %mmc_blk_rq_error.exit, label %lor.lhs.false6.i.do.body23_crit_edge

lor.lhs.false6.i.do.body23_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

mmc_blk_rq_error.exit:                            ; preds = %lor.lhs.false6.i
  %resp.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resp.i, align 4
  %and.i73 = and i32 %35, -466092032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool10.i.not = icmp eq i32 %and.i73, 0
  br i1 %tobool10.i.not, label %lor.lhs.false, label %mmc_blk_rq_error.exit.do.body23_crit_edge

mmc_blk_rq_error.exit.do.body23_crit_edge:        ; preds = %mmc_blk_rq_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

lor.lhs.false:                                    ; preds = %mmc_blk_rq_error.exit
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 8
  %caps.i74 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %caps.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps.i74, align 32
  %and.i75 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %land.rhs.i, label %land.lhs.true.i.if.end39_crit_edge

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %44 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resp.i, align 4
  %and2.i = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %mmc_blk_urgent_bkops_needed.exit, label %land.rhs.i.do.body23_crit_edge

land.rhs.i.do.body23_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

mmc_blk_urgent_bkops_needed.exit:                 ; preds = %land.rhs.i
  %resp5.i = getelementptr inbounds %struct.mmc_blk_request, ptr %mrq, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %resp5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %resp5.i, align 4
  %and7.i = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i.not = icmp eq i32 %and7.i, 0
  br i1 %tobool8.i.not, label %mmc_blk_urgent_bkops_needed.exit.if.end39_crit_edge, label %mmc_blk_urgent_bkops_needed.exit.do.body23_crit_edge

mmc_blk_urgent_bkops_needed.exit.do.body23_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

mmc_blk_urgent_bkops_needed.exit.if.end39_crit_edge: ; preds = %mmc_blk_urgent_bkops_needed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

do.body23:                                        ; preds = %mmc_blk_urgent_bkops_needed.exit.do.body23_crit_edge, %land.rhs.i.do.body23_crit_edge, %mmc_blk_rq_error.exit.do.body23_crit_edge, %lor.lhs.false6.i.do.body23_crit_edge, %lor.lhs.false3.i.do.body23_crit_edge, %lor.lhs.false.i.do.body23_crit_edge, %mmc_blk_eval_resp_error.exit.i.do.body23_crit_edge
  %lock29 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 5
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock29) #15
  %recovery_needed = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 9
  %48 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %recovery_needed, align 1
  %recovery_req = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 15
  %49 = ptrtoint ptr %recovery_req to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i.i, ptr %recovery_req, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29, i32 noundef %call31) #15
  %wait37 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait37, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %recovery_work = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %recovery_work) #15
  br label %cleanup

if.end39:                                         ; preds = %mmc_blk_urgent_bkops_needed.exit.if.end39_crit_edge, %land.lhs.true.i.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %cmd_flags.i = getelementptr i8, ptr %mrq, i32 -180
  %51 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i79 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.i.not.i = icmp eq i32 %and.i.i79, 0
  %blkdata.i = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %blkdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blkdata.i, align 4
  %neg.i.i = select i1 %tobool.i.not.i, i32 -2, i32 -3
  %reset_done.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %reset_done.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reset_done.i.i, align 4
  %and.i2.i = and i32 %neg.i.i, %56
  store i32 %and.i2.i, ptr %reset_done.i.i, align 4
  %rw_wait40 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 11
  %57 = ptrtoint ptr %rw_wait40 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %rw_wait40, align 1
  %wait41 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait41, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  tail call fastcc void @mmc_blk_mq_post_req(ptr noundef %3, ptr noundef %add.ptr.i.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.body23, %if.else, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_start_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_probe(ptr noundef %card) #0 align 64 {
entry:
  %rpmb_name.i.i = alloca [32 x i8], align 1
  %cap_str.i.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdclass, align 2
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @mmc_fixup_device(ptr noundef %card)
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 24, i32 noundef 0) #15
  %complete_wq = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 44
  %3 = ptrtoint ptr %complete_wq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %complete_wq, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end5.if.else.i_crit_edge, label %land.lhs.true.i

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sectors.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 19
  %8 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sectors.i, align 8
  %conv.i = zext i32 %9 to i64
  br label %mmc_blk_alloc.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %10 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity.i, align 4
  %conv1.i = zext i32 %11 to i64
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 9
  %12 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_blkbits.i, align 4
  %sub.i = add i32 %13, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i
  br label %mmc_blk_alloc.exit

mmc_blk_alloc.exit:                               ; preds = %if.else.i, %if.then.i
  %size.0.i = phi i64 [ %shl.i, %if.else.i ], [ %conv.i, %if.then.i ]
  %dev.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %call.i = tail call fastcc ptr @mmc_blk_alloc_req(ptr noundef %card, ptr noundef %dev.i, i64 noundef %size.0.i, i1 noundef zeroext false, ptr noundef null, i32 noundef 1, i32 noundef 0) #15
  %cmp.i44 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then8, label %if.end10

if.then8:                                         ; preds = %mmc_blk_alloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %call.i to i32
  br label %out_free

if.end10:                                         ; preds = %mmc_blk_alloc.exit
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i46 = icmp eq i32 %16, 0
  br i1 %cmp.i46, label %for.cond.preheader.i, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

for.cond.preheader.i:                             ; preds = %if.end10
  %nr_parts.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 43
  %17 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_parts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp183.not.i = icmp eq i32 %18, 0
  br i1 %cmp183.not.i, label %for.cond.preheader.i.if.end14_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end14_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rpmbs.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 4
  %init_name.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 3
  %prod_name.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %disk.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 1
  %part3.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i
  %area_type.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 4
  %19 = ptrtoint ptr %area_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %area_type.i, align 4
  %and.i47 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %if.else.i49, label %if.then2.i

if.then2.i:                                       ; preds = %for.body.i
  %part_cfg.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 1
  %21 = ptrtoint ptr %part_cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %part_cfg.i, align 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %shr.i = lshr i64 %24, 9
  %name.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpmb_name.i.i) #15
  %25 = call ptr @memset(ptr %rpmb_name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str.i.i) #15
  %26 = call ptr @memset(ptr %cap_str.i.i, i32 255, i32 10)
  %27 = load i32, ptr @max_devices, align 4
  %sub.i.i = add i32 %27, -1
  %call.i.i = call i32 @ida_alloc_range(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef 0, i32 noundef %sub.i.i, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then2.i.mmc_blk_alloc_parts.exit.thread56_crit_edge, label %if.end.i.i

if.then2.i.mmc_blk_alloc_parts.exit.thread56_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_alloc_parts.exit.thread56

if.end.i.i:                                       ; preds = %if.then2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 1112) #18
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @ida_free(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef %call.i.i) #15
  br label %mmc_blk_alloc_parts.exit.thread56

if.end3.i.i:                                      ; preds = %if.end.i.i
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 8
  %index.i.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %name.i, null
  %spec.select.i.i = select i1 %tobool4.not.i.i, ptr @.str.55, ptr %name.i
  %call5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %rpmb_name.i.i, i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %32, ptr noundef nonnull %spec.select.i.i) #15
  %id.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i.i, ptr %id.i.i, align 8
  %part_index6.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %part_index6.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %22, ptr %part_index6.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rpmb_name.i.i, ptr %init_name.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mmc_rpmb_bus_type, ptr %bus.i.i, align 8
  %37 = load i32, ptr @mmc_rpmb_devt, align 4
  %shr.i.i = and i32 %37, -1048576
  %or.i.i = or i32 %shr.i.i, %call.i.i
  %devt.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 29
  %38 = ptrtoint ptr %devt.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i, ptr %devt.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev.i, ptr %parent.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 35
  %40 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mmc_blk_rpmb_device_release, ptr %release.i.i, align 4
  call void @device_initialize(ptr noundef nonnull %call7.i.i.i.i) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i.i, ptr %driver_data.i.i.i, align 4
  %md16.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %md16.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %md16.i.i, align 8
  %chrdev.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 1
  call void @cdev_init(ptr noundef %chrdev.i.i, ptr noundef nonnull @mmc_rpmb_fileops) #15
  %owner.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %owner.i.i, align 8
  %call20.i.i = call i32 @cdev_device_add(ptr noundef %chrdev.i.i, ptr noundef nonnull %call7.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end25.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %rpmb_name.i.i) #19
  call void @put_device(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %mmc_blk_alloc_parts.exit.thread56

if.end25.i.i:                                     ; preds = %if.end3.i.i
  %node.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %rpmbs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rpmbs.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %rpmbs.i.i, ptr noundef %45) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end25.i.i.list_add.exit.i.i_crit_edge

if.end25.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %node.i.i, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mmc_rpmb_data, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rpmbs.i.i, ptr %prev3.i.i.i.i, align 8
  %49 = ptrtoint ptr %rpmbs.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %node.i.i, ptr %rpmbs.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end25.i.i.list_add.exit.i.i_crit_edge
  call void @string_get_size(i64 noundef %shr.i, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %cap_str.i.i, i32 noundef 10) #15
  %50 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %list_add.exit.i.i.mmc_blk_alloc_rpmb_part.exit.i_crit_edge

list_add.exit.i.i.mmc_blk_alloc_rpmb_part.exit.i_crit_edge: ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_alloc_rpmb_part.exit.i

if.end.i.i.i:                                     ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  br label %mmc_blk_alloc_rpmb_part.exit.i

mmc_blk_alloc_parts.exit.thread56:                ; preds = %do.end.i.i, %if.then2.i.i, %if.then2.i.mmc_blk_alloc_parts.exit.thread56_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.then2.i.i ], [ %call20.i.i, %do.end.i.i ], [ %call.i.i, %if.then2.i.mmc_blk_alloc_parts.exit.thread56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str.i.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpmb_name.i.i) #15
  br label %out

mmc_blk_alloc_rpmb_part.exit.i:                   ; preds = %if.end.i.i.i, %list_add.exit.i.i.mmc_blk_alloc_rpmb_part.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %53, %if.end.i.i.i ], [ %51, %list_add.exit.i.i.mmc_blk_alloc_rpmb_part.exit.i_crit_edge ]
  %54 = load i32, ptr @mmc_rpmb_devt, align 4
  %shr36.i.i = lshr i32 %54, 20
  %55 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.i.i, align 8
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %rpmb_name.i.i, ptr noundef %retval.0.i.i.i, ptr noundef %prod_name.i.i, ptr noundef nonnull %cap_str.i.i, i32 noundef %shr36.i.i, i32 noundef %56) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str.i.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpmb_name.i.i) #15
  br label %for.inc.i

if.else.i49:                                      ; preds = %for.body.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool15.not.i = icmp eq i64 %58, 0
  br i1 %tobool15.not.i, label %if.else.i49.for.inc.i_crit_edge, label %if.then16.i

if.else.i49.for.inc.i_crit_edge:                  ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.else.i49
  %part_cfg19.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 1
  %59 = ptrtoint ptr %part_cfg19.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %part_cfg19.i, align 8
  %shr23.i = lshr i64 %58, 9
  %force_ro.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 3
  %61 = ptrtoint ptr %force_ro.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %force_ro.i, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool26.i = icmp ne i8 %62, 0
  %name29.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %idx.084.i, i32 2
  %63 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disk.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 10
  %call.i69.i = call fastcc ptr @mmc_blk_alloc_req(ptr noundef %card, ptr noundef %bd_device.i.i, i64 noundef %shr23.i, i1 noundef zeroext %tobool26.i, ptr noundef %name29.i, i32 noundef %20, i32 noundef %60) #15
  %cmp.i.i.i = icmp ugt ptr %call.i69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mmc_blk_alloc_parts.exit, label %if.end.i71.i

if.end.i71.i:                                     ; preds = %if.then16.i
  %part.i.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i69.i, i32 0, i32 3
  %67 = ptrtoint ptr %part3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %part3.i.i, align 4
  %call.i.i.i70.i = call zeroext i1 @__list_add_valid(ptr noundef %part.i.i, ptr noundef %part3.i.i, ptr noundef %68) #15
  br i1 %call.i.i.i70.i, label %if.end.i.i.i74.i, label %if.end.i71.i.for.inc.i_crit_edge

if.end.i71.i.for.inc.i_crit_edge:                 ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i.i.i74.i:                                 ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i72.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %part.i.i, ptr %prev1.i.i.i72.i, align 4
  %70 = ptrtoint ptr %part.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %part.i.i, align 4
  %prev3.i.i.i73.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i69.i, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %part3.i.i, ptr %prev3.i.i.i73.i, align 4
  %72 = ptrtoint ptr %part3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %part.i.i, ptr %part3.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i74.i, %if.end.i71.i.for.inc.i_crit_edge, %if.else.i49.for.inc.i_crit_edge, %mmc_blk_alloc_rpmb_part.exit.i
  %inc.i = add nuw i32 %idx.084.i, 1
  %73 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_parts.i, align 8
  %cmp1.i = icmp ult i32 %inc.i, %74
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end14_crit_edge

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

mmc_blk_alloc_parts.exit:                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %call.i69.i to i32
  br label %out

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %for.cond.preheader.i.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %debugfs_root.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 41
  %76 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %debugfs_root.i, align 4
  %tobool.not.i50 = icmp eq ptr %77, null
  br i1 %tobool.not.i50, label %if.end14.mmc_blk_add_debugfs.exit_crit_edge, label %if.end.i

if.end14.mmc_blk_add_debugfs.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_add_debugfs.exit

if.end.i:                                         ; preds = %if.end14
  %78 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %switch.i = icmp ult i32 %79, 2
  br i1 %switch.i, label %if.then4.i, label %if.end.i.mmc_blk_add_debugfs.exit_crit_edge

if.end.i.mmc_blk_add_debugfs.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_add_debugfs.exit

if.then4.i:                                       ; preds = %if.end.i
  %call.i52 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.81, i16 noundef zeroext 256, ptr noundef nonnull %77, ptr noundef %card, ptr noundef nonnull @mmc_dbg_card_status_fops) #15
  %status_dentry.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 12
  %80 = ptrtoint ptr %status_dentry.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i52, ptr %status_dentry.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i52, null
  br i1 %tobool6.not.i, label %if.then4.i.mmc_blk_add_debugfs.exit_crit_edge, label %if.end9.i

if.then4.i.mmc_blk_add_debugfs.exit_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_add_debugfs.exit

if.end9.i:                                        ; preds = %if.then4.i
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr.i = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp11.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end9.i.mmc_blk_add_debugfs.exit_crit_edge

if.end9.i.mmc_blk_add_debugfs.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_add_debugfs.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %call13.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 256, ptr noundef nonnull %77, ptr noundef %card, ptr noundef nonnull @mmc_dbg_ext_csd_fops) #15
  %ext_csd_dentry.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 13
  %82 = ptrtoint ptr %ext_csd_dentry.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call13.i, ptr %ext_csd_dentry.i, align 4
  br label %mmc_blk_add_debugfs.exit

mmc_blk_add_debugfs.exit:                         ; preds = %if.then12.i, %if.end9.i.mmc_blk_add_debugfs.exit_crit_edge, %if.then4.i.mmc_blk_add_debugfs.exit_crit_edge, %if.end.i.mmc_blk_add_debugfs.exit_crit_edge, %if.end14.mmc_blk_add_debugfs.exit_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev.i, i32 noundef 3000) #15
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev.i, i1 noundef zeroext true) #15
  %83 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp.not = icmp eq i32 %84, 3
  br i1 %cmp.not, label %mmc_blk_add_debugfs.exit.cleanup_crit_edge, label %if.then18

mmc_blk_add_debugfs.exit.cleanup_crit_edge:       ; preds = %mmc_blk_add_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then18:                                        ; preds = %mmc_blk_add_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i53 = call i32 @__pm_runtime_set_status(ptr noundef %dev.i, i32 noundef 0) #15
  call void @pm_runtime_enable(ptr noundef %dev.i) #15
  br label %cleanup

out:                                              ; preds = %mmc_blk_alloc_parts.exit, %mmc_blk_alloc_parts.exit.thread56
  %retval.0.i59 = phi i32 [ %retval.0.i.ph.i, %mmc_blk_alloc_parts.exit.thread56 ], [ %75, %mmc_blk_alloc_parts.exit ]
  call fastcc void @mmc_blk_remove_parts(ptr noundef %call.i)
  %85 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %disk.i.i, align 4
  call void @del_gendisk(ptr noundef %86) #15
  %queue.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call.i, i32 0, i32 2
  call void @mmc_cleanup_queue(ptr noundef %queue.i) #15
  call fastcc void @mmc_blk_put(ptr noundef %call.i) #15
  br label %out_free

out_free:                                         ; preds = %out, %if.then8
  %ret.0 = phi i32 [ %14, %if.then8 ], [ %retval.0.i59, %out ]
  %87 = ptrtoint ptr %complete_wq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %complete_wq, align 4
  call void @destroy_workqueue(ptr noundef %88) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then18, %mmc_blk_add_debugfs.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %mmc_blk_add_debugfs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_remove(ptr noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 41
  %2 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mmc_blk_remove_debugfs.exit_crit_edge, label %if.end.i

entry.mmc_blk_remove_debugfs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_remove_debugfs.exit

if.end.i:                                         ; preds = %entry
  %status_dentry.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status_dentry.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debugfs_remove(ptr noundef nonnull %5) #15
  %6 = ptrtoint ptr %status_dentry.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %status_dentry.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  %ext_csd_dentry.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %ext_csd_dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_csd_dentry.i, align 4
  %tobool.not.i15.i = icmp eq ptr %8, null
  %cmp.i16.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i17.i = or i1 %tobool.not.i15.i, %cmp.i16.i
  br i1 %spec.select.i17.i, label %if.end4.i.mmc_blk_remove_debugfs.exit_crit_edge, label %if.then6.i

if.end4.i.mmc_blk_remove_debugfs.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_remove_debugfs.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debugfs_remove(ptr noundef nonnull %8) #15
  %9 = ptrtoint ptr %ext_csd_dentry.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ext_csd_dentry.i, align 4
  br label %mmc_blk_remove_debugfs.exit

mmc_blk_remove_debugfs.exit:                      ; preds = %if.then6.i, %if.end4.i.mmc_blk_remove_debugfs.exit_crit_edge, %entry.mmc_blk_remove_debugfs.exit_crit_edge
  tail call fastcc void @mmc_blk_remove_parts(ptr noundef %1)
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #15
  %part_curr = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %part_curr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %part_curr, align 4
  %part_type = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %part_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %part_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %mmc_blk_remove_debugfs.exit.if.end_crit_edge, label %if.then

mmc_blk_remove_debugfs.exit.if.end_crit_edge:     ; preds = %mmc_blk_remove_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %mmc_blk_remove_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 8
  %call.i28 = tail call i32 @__mmc_claim_host(ptr noundef %15, ptr noundef null, ptr noundef null) #15
  %16 = ptrtoint ptr %part_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %part_type, align 4
  %call4 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %card, i32 noundef %17)
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 8
  tail call void @mmc_release_host(ptr noundef %19) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %mmc_blk_remove_debugfs.exit.if.end_crit_edge
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp6.not = icmp eq i32 %21, 3
  br i1 %cmp6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %usage_count.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !255
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #15, !srcloc !256
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end9.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end9.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !257
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end9.pm_runtime_put_noidle.exit_crit_edge
  %disk.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disk.i, align 4
  tail call void @del_gendisk(ptr noundef %24) #15
  %queue.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  tail call void @mmc_cleanup_queue(ptr noundef %queue.i) #15
  tail call fastcc void @mmc_blk_put(ptr noundef %1) #15
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %driver_data.i, align 4
  %complete_wq = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 44
  %26 = ptrtoint ptr %complete_wq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %complete_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %27) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_shutdown(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._mmc_blk_suspend.exit_crit_edge, label %if.then.i

entry._mmc_blk_suspend.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

if.then.i:                                        ; preds = %entry
  %queue.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  tail call void @mmc_queue_suspend(ptr noundef %queue.i) #15
  %part.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %part.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn1.i = load ptr, ptr %part.i, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %part.i
  br i1 %cmp.not2.i, label %if.then.i._mmc_blk_suspend.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i._mmc_blk_suspend.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %if.then.i.for.body.i_crit_edge ]
  %queue3.i = getelementptr i8, ptr %.pn3.i, i32 -508
  tail call void @mmc_queue_suspend(ptr noundef %queue3.i) #15
  %3 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %part.i
  br i1 %cmp.not.i, label %for.body.i._mmc_blk_suspend.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i._mmc_blk_suspend.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

_mmc_blk_suspend.exit:                            ; preds = %for.body.i._mmc_blk_suspend.exit_crit_edge, %if.then.i._mmc_blk_suspend.exit_crit_edge, %entry._mmc_blk_suspend.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._mmc_blk_suspend.exit_crit_edge, label %if.then.i

entry._mmc_blk_suspend.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

if.then.i:                                        ; preds = %entry
  %queue.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  tail call void @mmc_queue_suspend(ptr noundef %queue.i) #15
  %part.i = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %part.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn1.i = load ptr, ptr %part.i, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %part.i
  br i1 %cmp.not2.i, label %if.then.i._mmc_blk_suspend.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i._mmc_blk_suspend.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %if.then.i.for.body.i_crit_edge ]
  %queue3.i = getelementptr i8, ptr %.pn3.i, i32 -508
  tail call void @mmc_queue_suspend(ptr noundef %queue3.i) #15
  %3 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %part.i
  br i1 %cmp.not.i, label %for.body.i._mmc_blk_suspend.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i._mmc_blk_suspend.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_mmc_blk_suspend.exit

_mmc_blk_suspend.exit:                            ; preds = %for.body.i._mmc_blk_suspend.exit_crit_edge, %if.then.i._mmc_blk_suspend.exit_crit_edge, %entry._mmc_blk_suspend.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %part_type = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %part_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %part_type, align 4
  %part_curr = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %part_curr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %part_curr, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2
  tail call void @mmc_queue_resume(ptr noundef %queue) #15
  %part = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn16 = load ptr, ptr %part, align 4
  %cmp.not17 = icmp eq ptr %.pn16, %part
  br i1 %cmp.not17, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn16, %if.then.for.body_crit_edge ]
  %queue3 = getelementptr i8, ptr %.pn18, i32 -508
  tail call void @mmc_queue_resume(ptr noundef %queue3) #15
  %6 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %part
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_queue_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_queue_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_fixup_device(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %hwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 6
  %0 = ptrtoint ptr %hwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwrev, align 4
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 7
  %2 = ptrtoint ptr %fwrev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fwrev, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl nuw nsw i64 %conv2, 32
  %or = or i64 %shl3, %shl
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %4 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %year, align 2
  %conv5 = zext i16 %5 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %month = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %6 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %month, align 2
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  %oemid24 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 4
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %cis = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30
  %device = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 1
  %ext_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %vendor_fixup7 = phi ptr [ getelementptr inbounds ([25 x %struct.mmc_fixup], ptr @mmc_blk_fixups, i32 0, i32 0, i32 9), %entry ], [ %vendor_fixup, %for.inc.for.body_crit_edge ]
  %f.05 = phi ptr [ @mmc_blk_fixups, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %manfid = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 3
  %8 = ptrtoint ptr %manfid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %manfid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15.not = icmp eq i32 %9, %11
  br i1 %cmp15.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %oemid = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 4
  %12 = ptrtoint ptr %oemid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %oemid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp18.not = icmp eq i16 %13, -1
  br i1 %cmp18.not, label %if.end.if.end29_crit_edge, label %land.lhs.true20

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.end
  %14 = ptrtoint ptr %oemid24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oemid24, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp26.not = icmp eq i16 %13, %15
  br i1 %cmp26.not, label %land.lhs.true20.if.end29_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true20.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %16 = ptrtoint ptr %f.05 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f.05, align 8
  %cmp30.not = icmp eq ptr %17, null
  br i1 %cmp30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end29
  %call = tail call i32 @strncmp(ptr noundef nonnull %17, ptr noundef %prod_name, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %cis_vendor = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 5
  %18 = ptrtoint ptr %cis_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cis_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp39.not = icmp eq i16 %19, -1
  br i1 %cmp39.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true41

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true41:                                  ; preds = %if.end37
  %20 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cis, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp45.not = icmp eq i16 %19, %21
  br i1 %cmp45.not, label %land.lhs.true41.if.end48_crit_edge, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true41.if.end48_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true41.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %cis_device = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 6
  %22 = ptrtoint ptr %cis_device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cis_device, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp50.not = icmp eq i16 %23, -1
  br i1 %cmp50.not, label %if.end48.if.end60_crit_edge, label %land.lhs.true52

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

land.lhs.true52:                                  ; preds = %if.end48
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp57.not = icmp eq i16 %23, %25
  br i1 %cmp57.not, label %land.lhs.true52.if.end60_crit_edge, label %land.lhs.true52.for.inc_crit_edge

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true52.if.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true52.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %ext_csd_rev = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 7
  %26 = ptrtoint ptr %ext_csd_rev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_csd_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp61.not = icmp eq i32 %27, -1
  br i1 %cmp61.not, label %if.end60.if.end70_crit_edge, label %land.lhs.true63

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

land.lhs.true63:                                  ; preds = %if.end60
  %28 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ext_csd, align 8
  %conv66 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv66)
  %cmp67.not = icmp eq i32 %27, %conv66
  br i1 %cmp67.not, label %land.lhs.true63.if.end70_crit_edge, label %land.lhs.true63.for.inc_crit_edge

land.lhs.true63.for.inc_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true63.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  %rev_start = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 1
  %30 = ptrtoint ptr %rev_start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rev_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %31)
  %cmp71 = icmp ult i64 %or10, %31
  br i1 %cmp71, label %if.end70.for.inc_crit_edge, label %lor.lhs.false

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end70
  %rev_end = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 2
  %32 = ptrtoint ptr %rev_end to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rev_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %33)
  %cmp73 = icmp ugt i64 %or10, %33
  br i1 %cmp73, label %lor.lhs.false.for.inc_crit_edge, label %if.end76

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end76:                                         ; preds = %lor.lhs.false
  %of_compatible = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 8
  %34 = ptrtoint ptr %of_compatible to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_compatible, align 8
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %if.end76.do.body_crit_edge, label %land.lhs.true78

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

land.lhs.true78:                                  ; preds = %if.end76
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  %of_node.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %41, ptr noundef null) #15
  %cmp.not9.i = icmp eq ptr %call.i, null
  br i1 %cmp.not9.i, label %land.lhs.true78.for.inc_crit_edge, label %land.lhs.true78.for.body.i_crit_edge

land.lhs.true78.for.body.i_crit_edge:             ; preds = %land.lhs.true78
  br label %for.body.i

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true78.for.body.i_crit_edge
  %np.010.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %land.lhs.true78.for.body.i_crit_edge ]
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.010.i, ptr noundef nonnull %35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.do.body_crit_edge

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.inc.i:                                        ; preds = %for.body.i
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  %of_node4.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node4.i, align 8
  %call5.i = tail call ptr @of_get_next_child(ptr noundef %47, ptr noundef nonnull %np.010.i) #15
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body:                                          ; preds = %for.body.i.do.body_crit_edge, %if.end76.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_fixup_device.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_fixup_device, %if.then87)) #15
          to label %do.end [label %if.then87], !srcloc !250

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %vendor_fixup7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vendor_fixup7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_fixup_device.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %49) #15
  br label %do.end

do.end:                                           ; preds = %if.then87, %do.body
  %50 = ptrtoint ptr %vendor_fixup7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vendor_fixup7, align 4
  %data = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 10
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data, align 8
  tail call void %51(ptr noundef %card, i32 noundef %53) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.inc.i.for.inc_crit_edge, %land.lhs.true78.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end70.for.inc_crit_edge, %land.lhs.true63.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.mmc_fixup, ptr %f.05, i32 1
  %vendor_fixup = getelementptr %struct.mmc_fixup, ptr %f.05, i32 1, i32 9
  %54 = ptrtoint ptr %vendor_fixup to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vendor_fixup, align 4
  %tobool.not = icmp eq ptr %55, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_remove_parts(ptr noundef readonly %md) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rpmbs = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %rpmbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpmbs, align 4
  %cmp.i.not10 = icmp eq ptr %1, %rpmbs
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.011 = phi ptr [ %q.012, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos.011 to i32
  call void @__asan_load4_noabort(i32 %2)
  %q.012 = load ptr, ptr %pos.011, align 4
  %add.ptr = getelementptr i8, ptr %pos.011, i32 -1100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.011) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.011, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pos.011 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos.011, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %pos.011 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.011, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.011, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chrdev.i = getelementptr i8, ptr %pos.011, i32 -172
  tail call void @cdev_device_del(ptr noundef %chrdev.i, ptr noundef %add.ptr) #15
  tail call void @put_device(ptr noundef %add.ptr) #15
  %cmp.i.not = icmp eq ptr %q.012, %rpmbs
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %part = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 3
  %11 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part, align 4
  %cmp.i1.not14 = icmp eq ptr %12, %part
  br i1 %cmp.i1.not14, label %for.end.for.end17_crit_edge, label %for.end.for.body11_crit_edge

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end17

for.body11:                                       ; preds = %list_del.exit8.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %pos.115 = phi ptr [ %q.116, %list_del.exit8.for.body11_crit_edge ], [ %12, %for.end.for.body11_crit_edge ]
  %13 = ptrtoint ptr %pos.115 to i32
  call void @__asan_load4_noabort(i32 %13)
  %q.116 = load ptr, ptr %pos.115, align 4
  %add.ptr14 = getelementptr i8, ptr %pos.115, i32 -516
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.115) #15
  br i1 %call.i.i3, label %if.end.i.i6, label %for.body11.list_del.exit8_crit_edge

for.body11.list_del.exit8_crit_edge:              ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit8

if.end.i.i6:                                      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i4 = getelementptr inbounds %struct.list_head, ptr %pos.115, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i4, align 4
  %16 = ptrtoint ptr %pos.115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pos.115, align 4
  %prev1.i.i.i5 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i5, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit8

list_del.exit8:                                   ; preds = %if.end.i.i6, %for.body11.list_del.exit8_crit_edge
  %20 = ptrtoint ptr %pos.115 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.115, align 4
  %prev.i7 = getelementptr inbounds %struct.list_head, ptr %pos.115, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7, align 4
  %disk.i = getelementptr i8, ptr %pos.115, i32 -512
  %22 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk.i, align 4
  tail call void @del_gendisk(ptr noundef %23) #15
  %queue.i = getelementptr i8, ptr %pos.115, i32 -508
  tail call void @mmc_cleanup_queue(ptr noundef %queue.i) #15
  tail call fastcc void @mmc_blk_put(ptr noundef %add.ptr14) #15
  %cmp.i1.not = icmp eq ptr %q.116, %part
  br i1 %cmp.i1.not, label %list_del.exit8.for.end17_crit_edge, label %list_del.exit8.for.body11_crit_edge

list_del.exit8.for.body11_crit_edge:              ; preds = %list_del.exit8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

list_del.exit8.for.end17_crit_edge:               ; preds = %list_del.exit8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end17

for.end17:                                        ; preds = %list_del.exit8.for.end17_crit_edge, %for.end.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %card, i32 noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, %data
  store i32 %or, ptr %quirks, align 8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @add_quirk_mmc(ptr nocapture noundef %card, i32 noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, %data
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @add_quirk_sd(ptr nocapture noundef %card, i32 noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, %data
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mmc_blk_alloc_req(ptr noundef %card, ptr noundef %parent, i64 noundef %size, i1 noundef zeroext %default_ro, ptr noundef %subname, i32 noundef %area_type, i32 noundef %part_type) unnamed_addr #0 align 64 {
entry:
  %cap_str = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str) #15
  %0 = call ptr @memset(ptr %cap_str, i32 255, i32 10)
  %1 = load i32, ptr @max_devices, align 4
  %sub = add i32 %1, -1
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @mmc_blk_ida, i32 noundef 0, i32 noundef %sub, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp1 = icmp eq i32 %call, -28
  br i1 %cmp1, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = inttoptr i32 %call to ptr
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 568) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end5
  %area_type9 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %area_type9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %area_type, ptr %area_type9, align 4
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end8.mmc_blk_readonly.exit_crit_edge

if.end8.mmc_blk_readonly.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_blk_readonly.exit

lor.rhs.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %cmdclass.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %11 = ptrtoint ptr %cmdclass.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmdclass.i, align 2
  %13 = lshr i16 %12, 4
  %.lobit.i = and i16 %13, 1
  %14 = xor i16 %.lobit.i, 1
  %15 = zext i16 %14 to i32
  br label %mmc_blk_readonly.exit

mmc_blk_readonly.exit:                            ; preds = %lor.rhs.i, %if.end8.mmc_blk_readonly.exit_crit_edge
  %16 = phi i32 [ 1, %if.end8.mmc_blk_readonly.exit_crit_edge ], [ %15, %lor.rhs.i ]
  %read_only = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %read_only to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %read_only, align 4
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 2
  %call11 = tail call ptr @mmc_init_queue(ptr noundef %queue, ptr noundef %card) #15
  %disk = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %disk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %mmc_blk_readonly.exit
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call11 to i32
  br label %err_kfree

if.end17:                                         ; preds = %mmc_blk_readonly.exit
  %part = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %part, ptr %part, align 4
  %prev.i = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %part, ptr %prev.i, align 8
  %rpmbs = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %rpmbs to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rpmbs, ptr %rpmbs, align 4
  %prev.i172 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rpmbs, ptr %prev.i172, align 8
  %kref = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  %24 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %kref, align 8
  %blkdata = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %blkdata to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %blkdata, align 8
  %part_type19 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %part_type19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %part_type, ptr %part_type19, align 8
  %27 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 179, ptr %28, align 8
  %30 = load i32, ptr @perdev_minors, align 4
  %31 = load ptr, ptr %disk, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %minors, align 8
  %mul = mul i32 %30, %call
  %33 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %first_minor, align 4
  %35 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mmc_bdops, ptr %fops, align 8
  %37 = load ptr, ptr %disk, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %private_data, align 8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %parent, ptr %call7.i.i, align 8
  %40 = load ptr, ptr %disk, align 4
  %41 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool28.not = icmp ne i32 %42, 0
  %spec.select = or i1 %tobool28.not, %default_ro
  tail call void @set_disk_ro(ptr noundef %40, i1 noundef zeroext %spec.select) #15
  %and = and i32 %area_type, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end17.if.end33_crit_edge, label %if.then31

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disk, align 4
  %flags = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %or = or i32 %46, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end17.if.end33_crit_edge
  %47 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card, align 8
  %index = getelementptr inbounds %struct.mmc_host, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index, align 8
  %tobool36.not = icmp eq ptr %subname, null
  %spec.select171 = select i1 %tobool36.not, ptr @.str.55, ptr %subname
  %call37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %52, ptr noundef nonnull %spec.select171)
  %53 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disk, align 4
  tail call void @set_capacity(ptr noundef %54, i64 noundef %size) #15
  %55 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps.i, align 32
  %and.i173 = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool41.not = icmp eq i32 %and.i173, 0
  br i1 %tobool41.not, label %if.end33.if.end57_crit_edge, label %if.then42

if.end33.if.end57_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then42:                                        ; preds = %if.end33
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type, align 8
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %60, label %if.then42.if.end57_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true49
  ]

if.then42.if.end57_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then42
  %mmca_vsn = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 1
  %62 = ptrtoint ptr %mmca_vsn to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mmca_vsn, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp44 = icmp ugt i8 %63, 2
  br i1 %cmp44, label %land.lhs.true.if.then53_crit_edge, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

land.lhs.true.if.then53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

land.lhs.true49:                                  ; preds = %if.then42
  %cmds = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 5
  %64 = ptrtoint ptr %cmds to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cmds, align 1
  %66 = and i8 %65, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool52.not = icmp eq i8 %66, 0
  br i1 %tobool52.not, label %land.lhs.true49.if.end57_crit_edge, label %land.lhs.true49.if.then53_crit_edge

land.lhs.true49.if.then53_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

land.lhs.true49.if.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true49.if.then53_crit_edge, %land.lhs.true.if.then53_crit_edge
  %flags54 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags54, align 4
  %or55 = or i32 %68, 1
  store i32 %or55, ptr %flags54, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true49.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.then42.if.end57_crit_edge, %if.end33.if.end57_crit_edge
  %type58 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %69 = ptrtoint ptr %type58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp59 = icmp eq i32 %70, 0
  br i1 %cmp59, label %land.lhs.true61, label %if.end57.if.end78_crit_edge

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

land.lhs.true61:                                  ; preds = %if.end57
  %flags62 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags62, align 4
  %and63 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end78_crit_edge, label %land.lhs.true65

land.lhs.true61.if.end78_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %rel_param = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 4
  %73 = ptrtoint ptr %rel_param to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rel_param, align 4
  %75 = and i8 %74, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool68.not = icmp eq i8 %75, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %land.lhs.true65.if.then73_crit_edge

land.lhs.true65.if.then73_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then73

lor.lhs.false69:                                  ; preds = %land.lhs.true65
  %rel_sectors = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 3
  %76 = ptrtoint ptr %rel_sectors to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rel_sectors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool72.not = icmp eq i8 %77, 0
  br i1 %tobool72.not, label %lor.lhs.false69.if.end78_crit_edge, label %lor.lhs.false69.if.then73_crit_edge

lor.lhs.false69.if.then73_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then73

lor.lhs.false69.if.end78_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then73:                                        ; preds = %lor.lhs.false69.if.then73_crit_edge, %land.lhs.true65.if.then73_crit_edge
  %or75 = or i32 %72, 2
  %78 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or75, ptr %flags62, align 4
  %queue77 = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 2, i32 4
  %79 = ptrtoint ptr %queue77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %queue77, align 4
  tail call void @blk_queue_write_cache(ptr noundef %80, i1 noundef zeroext true, i1 noundef zeroext true) #15
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %lor.lhs.false69.if.end78_crit_edge, %land.lhs.true61.if.end78_crit_edge, %if.end57.if.end78_crit_edge
  call void @string_get_size(i64 noundef %size, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %cap_str, i32 noundef 10) #15
  %81 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %disk, align 4
  %disk_name84 = getelementptr inbounds %struct.gendisk, ptr %82, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i174 = icmp eq ptr %84, null
  br i1 %tobool.not.i174, label %if.end.i, label %if.end78.dev_name.exit_crit_edge

if.end78.dev_name.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end78.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %86, %if.end.i ], [ %84, %if.end78.dev_name.exit_crit_edge ]
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %87 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool90.not = icmp eq i32 %88, 0
  %cond91 = select i1 %tobool90.not, ptr @.str.55, ptr @.str.59
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %disk_name84, ptr noundef %retval.0.i, ptr noundef %prod_name, ptr noundef nonnull %cap_str, ptr noundef nonnull %cond91) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %area_type)
  %cmp93 = icmp eq i32 %area_type, 1
  br i1 %cmp93, label %if.then95, label %dev_name.exit.if.end97_crit_edge

dev_name.exit.if.end97_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then95:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 8
  %89 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %dev_name.exit.if.end97_crit_edge
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  %92 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %disk, align 4
  %call100 = call i32 @device_add_disk(ptr noundef %91, ptr noundef %93, ptr noundef nonnull @mmc_disk_attr_groups) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end97.cleanup_crit_edge, label %err_cleanup_queue

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err_cleanup_queue:                                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %disk, align 4
  %queue105 = getelementptr inbounds %struct.gendisk, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %queue105 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %queue105, align 4
  call void @blk_cleanup_queue(ptr noundef %97) #15
  %tag_set = getelementptr inbounds %struct.mmc_blk_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  call void @blk_mq_free_tag_set(ptr noundef %tag_set) #15
  br label %err_kfree

err_kfree:                                        ; preds = %err_cleanup_queue, %if.then14
  %ret.0 = phi i32 [ %19, %if.then14 ], [ %call100, %err_cleanup_queue ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %out

out:                                              ; preds = %err_kfree, %if.end5.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %if.end5.out_crit_edge ]
  call void @ida_free(ptr noundef nonnull @mmc_blk_ida, i32 noundef %call) #15
  %98 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end97.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ %6, %if.end ], [ %98, %out ], [ %call7.i.i, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_init_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %1)
  tail call void @mutex_lock_nested(ptr noundef nonnull @block_mutex, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %land.lhs.true

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true:                                    ; preds = %if.then
  %read_only = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %call)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ -30, %if.then3 ], [ 0, %land.lhs.true.if.end4_crit_edge ], [ 0, %if.then.if.end4_crit_edge ], [ -6, %entry.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @block_mutex) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @block_mutex, i32 noundef 0) #15
  tail call fastcc void @mmc_blk_put(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @block_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1068977408, label %sw.bb
    i32 -1073171711, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %call.i, label %mmc_blk_check_blkdev.exit, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

mmc_blk_check_blkdev.exit:                        ; preds = %sw.bb
  %bd_partno.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15
  %1 = ptrtoint ptr %bd_partno.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bd_partno.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.not, label %if.end, label %mmc_blk_check_blkdev.exit.cleanup_crit_edge

mmc_blk_check_blkdev.exit.cleanup_crit_edge:      ; preds = %mmc_blk_check_blkdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %mmc_blk_check_blkdev.exit
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %call1 = tail call fastcc ptr @mmc_blk_get(ptr noundef %4)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = inttoptr i32 %arg to ptr
  %call5 = tail call fastcc i32 @mmc_blk_ioctl_cmd(ptr noundef nonnull %call1, ptr noundef %5, ptr noundef null)
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %call.i32 = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %call.i32, label %mmc_blk_check_blkdev.exit38, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

mmc_blk_check_blkdev.exit38:                      ; preds = %sw.bb6
  %bd_partno.i.i33 = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15
  %6 = ptrtoint ptr %bd_partno.i.i33 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bd_partno.i.i33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i34.not = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i34.not, label %if.end10, label %mmc_blk_check_blkdev.exit38.cleanup_crit_edge

mmc_blk_check_blkdev.exit38.cleanup_crit_edge:    ; preds = %mmc_blk_check_blkdev.exit38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %mmc_blk_check_blkdev.exit38
  %bd_disk11 = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk11, align 8
  %call12 = tail call fastcc ptr @mmc_blk_get(ptr noundef %9)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %10 = inttoptr i32 %arg to ptr
  %call16 = tail call fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr noundef nonnull %call12, ptr noundef %10, ptr noundef null)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %if.end4
  %call12.sink = phi ptr [ %call12, %if.end15 ], [ %call1, %if.end4 ]
  %retval.0.ph = phi i32 [ %call16, %if.end15 ], [ %call5, %if.end4 ]
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %call12.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %mmc_blk_check_blkdev.exit38.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mmc_blk_check_blkdev.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %mmc_blk_check_blkdev.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %mmc_blk_check_blkdev.exit38.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmc_blk_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %div3 = lshr i64 %5, 6
  %conv = trunc i64 %div3 to i16
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %6 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %cylinders, align 2
  %7 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %8 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %sectors, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_blk_alternative_gpt_sector(ptr nocapture noundef readonly %disk, ptr noundef %sector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %disk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @mmc_card_alternative_gpt_sector(ptr noundef nonnull %1, ptr noundef %sector) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then2 ], [ -19, %if.end.if.end6_crit_edge ]
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mmc_blk_get(ptr nocapture noundef readonly %disk) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @open_lock, i32 noundef 0) #15
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %kref = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #15
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %4 = phi i32 [ %3, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #15, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !254

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !254

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #15
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %1
  br label %if.end

if.end:                                           ; preds = %kref_get_unless_zero.exit, %entry.if.end_crit_edge
  %md.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  call void @mutex_unlock(ptr noundef nonnull @open_lock) #15
  ret ptr %md.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_put(ptr noundef %md) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !259
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !260
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !254

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %disk.i.i = getelementptr %struct.mmc_blk_data, ptr %md, i32 0, i32 1
  %1 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disk.i.i, align 4
  %first_minor.i.i.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %first_minor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_minor.i.i.i, align 4
  %5 = load i32, ptr @perdev_minors, align 4
  %div.i.i.i = sdiv i32 %4, %5
  tail call void @ida_free(ptr noundef nonnull @mmc_blk_ida, i32 noundef %div.i.i.i) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @open_lock, i32 noundef 0) #15
  %6 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private_data.i.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #15
  %9 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk.i.i, align 4
  tail call void @put_disk(ptr noundef %10) #15
  tail call void @kfree(ptr noundef %md) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_cmd(ptr nocapture noundef readonly %md, ptr noundef %ic_ptr, ptr noundef %rpmb) unnamed_addr #0 align 64 {
entry:
  %idatas = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idatas) #15
  %0 = ptrtoint ptr %idatas to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %idatas, align 4, !annotation !253
  %call = tail call fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %ic_ptr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %rpmb3 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %rpmb3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rpmb, ptr %rpmb3, align 8
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 2
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %cmp.i51 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %4 to i32
  br label %cmd_done

if.end8:                                          ; preds = %if.end
  %queue10 = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %queue10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue10, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 34, i32 35
  %call11 = tail call ptr @blk_mq_alloc_request(ptr noundef %7, i32 noundef %cond, i32 noundef 0) #15
  %cmp.i52 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call11 to i32
  br label %cmd_done

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %idatas to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %idatas, align 4
  %tobool16.not = icmp ne ptr %rpmb, null
  %cond17 = zext i1 %tobool16.not to i32
  %add.ptr.i.i = getelementptr %struct.request, ptr %call11, i32 1
  %drv_op = getelementptr %struct.request, ptr %call11, i32 2, i32 31
  %12 = ptrtoint ptr %drv_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond17, ptr %drv_op, align 4
  %drv_op_data = getelementptr %struct.request, ptr %call11, i32 2, i32 31, i32 1
  %13 = ptrtoint ptr %drv_op_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %idatas, ptr %drv_op_data, align 4
  %ioc_count = getelementptr %struct.request, ptr %call11, i32 2, i32 31, i32 1, i32 4
  %14 = ptrtoint ptr %ioc_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ioc_count, align 4
  %call21 = call zeroext i8 @blk_execute_rq(ptr noundef %call11, i1 noundef zeroext false) #15
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drv_op_result, align 4
  %call23 = call fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %ic_ptr, ptr noundef %call)
  call void @blk_mq_free_request(ptr noundef %call11) #15
  br label %cmd_done

cmd_done:                                         ; preds = %if.end15, %if.then13, %if.then6
  %err.0 = phi i32 [ %5, %if.then6 ], [ %10, %if.then13 ], [ %call23, %if.end15 ]
  %ioc_err.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then13 ], [ %16, %if.end15 ]
  %buf = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 8
  call void @kfree(ptr noundef %18) #15
  call void @kfree(ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioc_err.0)
  %tobool24.not = icmp eq i32 %ioc_err.0, 0
  %spec.select = select i1 %tobool24.not, i32 %err.0, i32 %ioc_err.0
  br label %cleanup

cleanup:                                          ; preds = %cmd_done, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %spec.select, %cmd_done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idatas) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr nocapture noundef readonly %md, ptr noundef %user, ptr noundef %rpmb) unnamed_addr #0 align 64 {
entry:
  %num_of_cmds = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmds1 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, ptr %user, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num_of_cmds) #15
  %0 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %num_of_cmds, align 8, !annotation !253
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 8, i32 -1226833920) #20, !srcloc !262
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !254

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %num_of_cmds, i32 noundef 8) #15
  %2 = call i32 @llvm.read_register.i32(metadata !240) #15
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !263
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !265
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %num_of_cmds, ptr noundef %user, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #15, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !254

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i128 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i128
  %add.ptr.i.i = getelementptr i8, ptr %num_of_cmds, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i128)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %num_of_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %7)
  %cmp = icmp ugt i64 %7, 255
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7.i.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end5
  %conv = trunc i64 %7 to i32
  %8 = shl nuw nsw i32 %conv, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #21
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_of_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp13135.not = icmp eq i64 %10, 0
  br i1 %cmp13135.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv12137 = phi i64 [ %conv12, %if.end23.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %indvars = trunc i64 %conv12137 to i32
  %arrayidx = getelementptr %struct.mmc_ioc_cmd, ptr %cmds1, i32 %indvars
  %call15 = call fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %arrayidx)
  %arrayidx16 = getelementptr ptr, ptr %call8.i.i, i32 %indvars
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %arrayidx16, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %call15 to i32
  %13 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv12137, ptr %num_of_cmds, align 8
  br label %cmd_err

if.end23:                                         ; preds = %for.body
  %rpmb25 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call15, i32 0, i32 3
  %14 = ptrtoint ptr %rpmb25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rpmb, ptr %rpmb25, align 8
  %inc = add i32 %indvars, 1
  %conv12 = sext i32 %inc to i64
  %15 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_of_cmds, align 8
  %cmp13 = icmp ugt i64 %16, %conv12
  br i1 %cmp13, label %if.end23.for.body_crit_edge, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 2
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %cmp.i120 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %18 to i32
  br label %cmd_errthread-pre-split

if.end30:                                         ; preds = %for.end
  %queue32 = getelementptr inbounds %struct.mmc_blk_data, ptr %md, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %queue32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue32, align 4
  %22 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call8.i.i, align 128
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool34.not, i32 34, i32 35
  %call35 = call ptr @blk_mq_alloc_request(ptr noundef %21, i32 noundef %cond, i32 noundef 0) #15
  %cmp.i121 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %call35 to i32
  br label %cmd_errthread-pre-split

if.end39:                                         ; preds = %if.end30
  %tobool40.not = icmp ne ptr %rpmb, null
  %cond41 = zext i1 %tobool40.not to i32
  %add.ptr.i.i122 = getelementptr %struct.request, ptr %call35, i32 1
  %drv_op = getelementptr %struct.request, ptr %call35, i32 2, i32 31
  %27 = ptrtoint ptr %drv_op to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond41, ptr %drv_op, align 4
  %drv_op_data = getelementptr %struct.request, ptr %call35, i32 2, i32 31, i32 1
  %28 = ptrtoint ptr %drv_op_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %drv_op_data, align 4
  %29 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %num_of_cmds, align 8
  %conv44 = trunc i64 %30 to i32
  %ioc_count = getelementptr %struct.request, ptr %call35, i32 2, i32 31, i32 1, i32 4
  %31 = ptrtoint ptr %ioc_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv44, ptr %ioc_count, align 4
  %call46 = call zeroext i8 @blk_execute_rq(ptr noundef %call35, i1 noundef zeroext false) #15
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i122, i32 0, i32 3
  %32 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %drv_op_result, align 4
  %34 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %num_of_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp50138.not = icmp eq i64 %35, 0
  br i1 %cmp50138.not, label %if.end39.for.end59_crit_edge, label %if.end39.for.body53_crit_edge

if.end39.for.body53_crit_edge:                    ; preds = %if.end39
  br label %for.body53

if.end39.for.end59_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end59

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %if.end39.for.body53_crit_edge
  %i.1139 = phi i32 [ %inc58, %for.body53.for.body53_crit_edge ], [ 0, %if.end39.for.body53_crit_edge ]
  %arrayidx54 = getelementptr %struct.mmc_ioc_cmd, ptr %cmds1, i32 %i.1139
  %arrayidx55 = getelementptr ptr, ptr %call8.i.i, i32 %i.1139
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx55, align 4
  %call56 = call fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %arrayidx54, ptr noundef %37)
  %inc58 = add i32 %i.1139, 1
  %conv49 = sext i32 %inc58 to i64
  %38 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %num_of_cmds, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv49)
  %cmp50 = icmp ugt i64 %39, %conv49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool52.not = icmp eq i32 %call56, 0
  %or.cond = select i1 %cmp50, i1 %tobool52.not, i1 false
  br i1 %or.cond, label %for.body53.for.body53_crit_edge, label %for.body53.for.end59_crit_edge

for.body53.for.end59_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end59

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

for.end59:                                        ; preds = %for.body53.for.end59_crit_edge, %if.end39.for.end59_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end39.for.end59_crit_edge ], [ %call56, %for.body53.for.end59_crit_edge ]
  call void @blk_mq_free_request(ptr noundef %call35) #15
  br label %cmd_errthread-pre-split

cmd_errthread-pre-split:                          ; preds = %for.end59, %if.then37, %if.then28
  %err.1.ph = phi i32 [ %err.0.lcssa, %for.end59 ], [ %26, %if.then37 ], [ %19, %if.then28 ]
  %ioc_err.0.ph = phi i32 [ %33, %for.end59 ], [ 0, %if.then37 ], [ 0, %if.then28 ]
  %40 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %40)
  %.pr = load i64, ptr %num_of_cmds, align 8
  br label %cmd_err

cmd_err:                                          ; preds = %cmd_errthread-pre-split, %if.then19
  %41 = phi i64 [ %.pr, %cmd_errthread-pre-split ], [ %conv12137, %if.then19 ]
  %err.1 = phi i32 [ %err.1.ph, %cmd_errthread-pre-split ], [ %12, %if.then19 ]
  %ioc_err.0 = phi i32 [ %ioc_err.0.ph, %cmd_errthread-pre-split ], [ 0, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp62140.not = icmp eq i64 %41, 0
  br i1 %cmp62140.not, label %cmd_err.for.end69_crit_edge, label %cmd_err.for.body64_crit_edge

cmd_err.for.body64_crit_edge:                     ; preds = %cmd_err
  br label %for.body64

cmd_err.for.end69_crit_edge:                      ; preds = %cmd_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end69

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %cmd_err.for.body64_crit_edge
  %i.2141 = phi i32 [ %inc68, %for.body64.for.body64_crit_edge ], [ 0, %cmd_err.for.body64_crit_edge ]
  %arrayidx65 = getelementptr ptr, ptr %call8.i.i, i32 %i.2141
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx65, align 4
  %buf = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 8
  call void @kfree(ptr noundef %45) #15
  %46 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx65, align 4
  call void @kfree(ptr noundef %47) #15
  %inc68 = add i32 %i.2141, 1
  %conv61 = sext i32 %inc68 to i64
  %48 = ptrtoint ptr %num_of_cmds to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %num_of_cmds, align 8
  %cmp62 = icmp ugt i64 %49, %conv61
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.body64.for.end69_crit_edge

for.body64.for.end69_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end69

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body64

for.end69:                                        ; preds = %for.body64.for.end69_crit_edge, %cmd_err.for.end69_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioc_err.0)
  %tobool70.not = icmp eq i32 %ioc_err.0, 0
  %err.1.ioc_err.0 = select i1 %tobool70.not, i32 %err.1, i32 %ioc_err.0
  br label %cleanup

cleanup:                                          ; preds = %for.end69, %if.end7.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %err.1.ioc_err.0, %for.end69 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num_of_cmds) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %user) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 96) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end8.i.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 72, i32 -1226833920) #20, !srcloc !262
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !254

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 72) #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !240) #15
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !263
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !265
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %user, i32 noundef 72) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #15, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !254

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i47 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 72, %res.0.i.i47
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i47)
  br label %idata_err

if.end4:                                          ; preds = %if.end.i.i
  %blksz = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %call7.i, i32 0, i32 6
  %6 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz, align 4
  %conv = zext i32 %7 to i64
  %blocks = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %call7.i, i32 0, i32 7
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks, align 8
  %conv7 = zext i32 %9 to i64
  %mul = mul nuw i64 %conv7, %conv
  %buf_bytes = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul, ptr %buf_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 524288, i64 %mul)
  %cmp = icmp ugt i64 %mul, 524288
  br i1 %cmp, label %if.end4.idata_err_crit_edge, label %if.end11

if.end4.idata_err_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %idata_err

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %tobool13.not = icmp eq i64 %mul, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %buf = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %buf, align 8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %data_ptr = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %call7.i, i32 0, i32 13
  %12 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_ptr, align 8
  %conv17 = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv17 to ptr
  %conv19 = trunc i64 %mul to i32
  %call20 = tail call ptr @memdup_user(ptr noundef %14, i32 noundef %conv19) #15
  %buf21 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %buf21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %buf21, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %call20 to i32
  br label %idata_err

idata_err:                                        ; preds = %if.then24, %if.end4.idata_err_crit_edge, %if.then11.i.i
  %err.0 = phi i32 [ %16, %if.then24 ], [ -75, %if.end4.idata_err_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %out

out:                                              ; preds = %idata_err, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %idata_err ], [ -12, %entry.out_crit_edge ]
  %17 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end15.cleanup_crit_edge, %if.then14
  %retval.0 = phi ptr [ %17, %out ], [ %call7.i, %if.then14 ], [ %call7.i, %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %ic_ptr, ptr noundef %idata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %response = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %ic_ptr, i32 0, i32 4
  %response2 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %idata, i32 0, i32 4
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %response, i32 16, i32 -1226833920) #20, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %response2, i32 noundef 16) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %response, ptr noundef %response2, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  %1 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %data_ptr = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %idata, i32 0, i32 13
  %3 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data_ptr, align 8
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  %buf = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %idata, i32 0, i32 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 8
  %buf_bytes = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %idata, i32 0, i32 2
  %8 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buf_bytes, align 8
  %conv6 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %cmp9.i.i = icmp slt i32 %conv6, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then5
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !254

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then5
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %conv6, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #15
  %call.i.i20 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i20, label %if.then.i.i.i.copy_to_user.exit28_crit_edge, label %if.end.i.i23

if.then.i.i.i.copy_to_user.exit28_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit28

if.end.i.i23:                                     ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %conv6, i32 -1226833920) #20, !srcloc !266
  %asmresult.i.i21 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i21)
  %cmp.i6.i22 = icmp eq i32 %asmresult.i.i21, 0
  br i1 %cmp.i6.i22, label %if.then2.i.i26, label %if.end.i.i23.copy_to_user.exit28_crit_edge

if.end.i.i23.copy_to_user.exit28_crit_edge:       ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit28

if.then2.i.i26:                                   ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef %conv6) #15
  %call.i12.i.i25 = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %7, i32 noundef %conv6) #15
  br label %copy_to_user.exit28

copy_to_user.exit28:                              ; preds = %if.then2.i.i26, %if.end.i.i23.copy_to_user.exit28_crit_edge, %if.then.i.i.i.copy_to_user.exit28_crit_edge
  %n.addr.0.i27 = phi i32 [ %conv6, %if.then.i.i.i.copy_to_user.exit28_crit_edge ], [ %call.i12.i.i25, %if.then2.i.i26 ], [ %conv6, %if.end.i.i23.copy_to_user.exit28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i27)
  %tobool8.not = icmp eq i32 %n.addr.0.i27, 0
  br i1 %tobool8.not, label %copy_to_user.exit28.if.end11_crit_edge, label %copy_to_user.exit28.cleanup_crit_edge

copy_to_user.exit28.cleanup_crit_edge:            ; preds = %copy_to_user.exit28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

copy_to_user.exit28.if.end11_crit_edge:           ; preds = %copy_to_user.exit28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %copy_to_user.exit28.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %copy_to_user.exit28.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit28.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_card_alternative_gpt_sector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mmc_disk_attrs_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %kobj, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %1)
  %mode4 = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode4, align 4
  %cmp = icmp eq ptr %a, @dev_attr_ro_lock_until_next_power_on
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %area_type = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %area_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %area_type, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true5

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true5:                                   ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %boot_ro_lockable = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 21, i32 38
  %8 = ptrtoint ptr %boot_ro_lockable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %boot_ro_lockable, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end14_crit_edge, label %if.then

land.lhs.true5.if.end14_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  %boot_ro_lock = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 21, i32 37
  %10 = ptrtoint ptr %boot_ro_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boot_ro_lock, align 4
  %and10 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select = select i1 %tobool11.not, i16 420, i16 292
  br label %if.end14

if.end14:                                         ; preds = %if.then, %land.lhs.true5.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %mode.0 = phi i16 [ %3, %land.lhs.true5.if.end14_crit_edge ], [ %3, %land.lhs.true.if.end14_crit_edge ], [ %3, %entry.if.end14_crit_edge ], [ %spec.select, %if.then ]
  tail call fastcc void @mmc_blk_put(ptr noundef %call)
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_ro_lock_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %1)
  %queue = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %boot_ro_lock = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 37
  %4 = ptrtoint ptr %boot_ro_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boot_ro_lock, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %5, 1
  %locked.0 = select i1 %tobool.not, i32 %and4, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %locked.0)
  tail call fastcc void @mmc_blk_put(ptr noundef %call)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_ro_lock_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #15
  %0 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %set, align 4, !annotation !253
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %call3 = call fastcc ptr @mmc_blk_get(ptr noundef %4)
  %queue4 = getelementptr inbounds %struct.mmc_blk_data, ptr %call3, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %queue4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue4, align 4
  %call5 = call ptr @blk_mq_alloc_request(ptr noundef %6, i32 noundef 35, i32 noundef 0) #15
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call5 to i32
  br label %out_put

if.end9:                                          ; preds = %if.end2
  %add.ptr.i.i = getelementptr %struct.request, ptr %call5, i32 1
  %drv_op = getelementptr %struct.request, ptr %call5, i32 2, i32 31
  %8 = ptrtoint ptr %drv_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %drv_op, align 4
  %call11 = call zeroext i8 @blk_execute_rq(ptr noundef %call5, i1 noundef zeroext false) #15
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drv_op_result, align 4
  call void @blk_mq_free_request(ptr noundef %call5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %do.end, label %if.end9.out_put_crit_edge

if.end9.out_put_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

do.end:                                           ; preds = %if.end9
  %disk = getelementptr inbounds %struct.mmc_blk_data, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 3
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %disk_name) #19
  %13 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk, align 4
  call void @set_disk_ro(ptr noundef %14, i1 noundef zeroext true) #15
  %part = getelementptr inbounds %struct.mmc_blk_data, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn63 = load ptr, ptr %part, align 4
  %cmp23.not64 = icmp eq ptr %.pn63, %part
  br i1 %cmp23.not64, label %do.end.out_put_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_put_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn65 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn63, %do.end.for.body_crit_edge ]
  %area_type = getelementptr i8, ptr %.pn65, i32 40
  %16 = ptrtoint ptr %area_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %area_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp24 = icmp eq i32 %17, 2
  br i1 %cmp24, label %do.end28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %disk30 = getelementptr i8, ptr %.pn65, i32 -512
  %18 = ptrtoint ptr %disk30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk30, align 4
  %disk_name31 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %disk_name31) #19
  %20 = ptrtoint ptr %disk30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk30, align 4
  call void @set_disk_ro(ptr noundef %21, i1 noundef zeroext true) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end28, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn65, align 4
  %cmp23.not = icmp eq ptr %.pn, %part
  br i1 %cmp23.not, label %for.inc.out_put_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.out_put_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

out_put:                                          ; preds = %for.inc.out_put_crit_edge, %do.end.out_put_crit_edge, %if.end9.out_put_crit_edge, %if.then7
  %count.addr.0 = phi i32 [ %7, %if.then7 ], [ %count, %if.end9.out_put_crit_edge ], [ %count, %do.end.out_put_crit_edge ], [ %count, %for.inc.out_put_crit_edge ]
  call fastcc void @mmc_blk_put(ptr noundef %call3)
  br label %cleanup

cleanup:                                          ; preds = %out_put, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %out_put ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_ro_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %1)
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bd_read_only.i, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.get_disk_ro.exit_crit_edge

entry.get_disk_ro.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_disk_ro.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %state.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = lshr i32 %9, 1
  %.lobit.i = and i32 %10, 1
  br label %get_disk_ro.exit

get_disk_ro.exit:                                 ; preds = %lor.rhs.i, %entry.get_disk_ro.exit_crit_edge
  %11 = phi i32 [ 1, %entry.get_disk_ro.exit_crit_edge ], [ %.lobit.i, %lor.rhs.i ]
  %read_only = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_only, align 4
  %xor = xor i32 %13, %11
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %xor)
  tail call fastcc void @mmc_blk_put(ptr noundef %call)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_ro_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #15
  %0 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !253
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %call = tail call fastcc ptr @mmc_blk_get(ptr noundef %2)
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %end, i32 noundef 0) #15
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end, align 4
  %cmp = icmp eq ptr %4, %buf
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %read_only = getelementptr inbounds %struct.mmc_blk_data, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6 = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %9 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %tobool6, %lor.rhs ]
  call void @set_disk_ro(ptr noundef %6, i1 noundef zeroext %9) #15
  br label %out

out:                                              ; preds = %lor.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %count, %lor.end ], [ -22, %entry.out_crit_edge ]
  call fastcc void @mmc_blk_put(ptr noundef %call)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_blk_rpmb_device_release(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.mmc_rpmb_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef %3) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -1068977408, label %sw.bb
    i32 -1073171711, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %md = getelementptr inbounds %struct.mmc_rpmb_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %md, align 8
  %5 = inttoptr i32 %arg to ptr
  %call = tail call fastcc i32 @mmc_blk_ioctl_cmd(ptr noundef %4, ptr noundef %5, ptr noundef %1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %md2 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %md2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md2, align 8
  %8 = inttoptr i32 %arg to ptr
  %call3 = tail call fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr noundef %7, ptr noundef %8, ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_chrdev_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %call = tail call ptr @get_device(ptr noundef %add.ptr) #15
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  %md = getelementptr i8, ptr %2, i32 168
  %4 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md, align 8
  %disk = getelementptr inbounds %struct.mmc_blk_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk, align 4
  %call1 = tail call fastcc ptr @mmc_blk_get(ptr noundef %7)
  %call2 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_chrdev_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %md = getelementptr i8, ptr %2, i32 168
  %3 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %md, align 8
  tail call fastcc void @mmc_blk_put(ptr noundef %4)
  tail call void @put_device(ptr noundef %add.ptr) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_dbg_card_status_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mmc_dbg_card_status_get, ptr noundef null, ptr noundef nonnull @.str.83) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_dbg_card_status_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mmc_card, ptr %data, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %queue1 = getelementptr inbounds %struct.mmc_blk_data, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue1, align 4
  %call2 = tail call ptr @blk_mq_alloc_request(ptr noundef %3, i32 noundef 34, i32 noundef 0) #15
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.request, ptr %call2, i32 1
  %drv_op = getelementptr %struct.request, ptr %call2, i32 2, i32 31
  %5 = ptrtoint ptr %drv_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %drv_op, align 4
  %call6 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call2, i1 noundef zeroext false) #15
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv_op_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv22 = zext i32 %7 to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv22, ptr %val, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ 0, %if.then8 ], [ %7, %if.end.if.end9_crit_edge ]
  tail call void @blk_mq_free_request(ptr noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %cnt, ptr noundef %ppos, ptr noundef %1, i32 noundef 1025) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  %ext_csd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %driver_data.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_csd) #15
  %4 = ptrtoint ptr %ext_csd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ext_csd, align 4, !annotation !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1026) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue2 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue2, align 4
  %call3 = tail call ptr @blk_mq_alloc_request(ptr noundef %7, i32 noundef 34, i32 noundef 0) #15
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call3 to i32
  br label %out_free

if.end7:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.request, ptr %call3, i32 1
  %drv_op = getelementptr %struct.request, ptr %call3, i32 2, i32 31
  %9 = ptrtoint ptr %drv_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %drv_op, align 4
  %drv_op_data = getelementptr %struct.request, ptr %call3, i32 2, i32 31, i32 1
  %10 = ptrtoint ptr %drv_op_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ext_csd, ptr %drv_op_data, align 4
  %call10 = call zeroext i8 @blk_execute_rq(ptr noundef %call3, i1 noundef zeroext false) #15
  %drv_op_result = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %drv_op_result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_op_result, align 4
  call void @blk_mq_free_request(ptr noundef %call3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end7.for.body_crit_edge, label %do.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %12) #19
  br label %out_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %n.052 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %n.052
  %13 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext_csd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %i.053
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.86, i32 noundef %conv)
  %add = add i32 %call16, %n.052
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr17 = getelementptr i8, ptr %call7.i, i32 %add
  %17 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %add.ptr17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add)
  %cmp20.not = icmp eq i32 %add, 1024
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext_csd, align 4
  call void @kfree(ptr noundef %19) #15
  br label %out_free

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %private_data, align 4
  %21 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ext_csd, align 4
  call void @kfree(ptr noundef %22) #15
  br label %cleanup

out_free:                                         ; preds = %if.then22, %do.end, %if.then5
  %err.0 = phi i32 [ %8, %if.then5 ], [ %12, %do.end ], [ -22, %if.then22 ]
  call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_csd) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !142, !143, !144, !145, !147, !148, !150, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !167, !169, !171, !173, !174, !176, !178, !179, !180, !181, !183, !184, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !203, !205, !207, !209, !210, !212, !214, !215, !216, !217, !219, !221, !223, !225, !227, !228, !229, !230, !232, !234, !235, !236, !238, !239}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__UNIQUE_ID_alias280, !1, !"__UNIQUE_ID_alias280", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/block.c", i32 63, i32 1}
!2 = !{ptr @__param_perdev_minors, !3, !"__param_perdev_minors", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/block.c", i32 171, i32 1}
!4 = !{ptr @__UNIQUE_ID_perdev_minorstype281, !3, !"__UNIQUE_ID_perdev_minorstype281", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_perdev_minors282, !6, !"__UNIQUE_ID_perdev_minors282", i1 false, i1 false}
!6 = !{!"../drivers/mmc/core/block.c", i32 172, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mmc/core/block.c", i32 1480, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug283, !8, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/block.c", i32 1488, i32 2}
!15 = !{ptr @mmc_blk_cqe_recovery.__UNIQUE_ID_ddebug284, !14, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/block.c", i32 2302, i32 4}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/mmc/core/block.c", i32 2324, i32 4}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/mmc/core/block.c", i32 2331, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/core/block.c", i32 3070, i32 37}
!24 = !{ptr @__initcall__kmod_mmc_block__287_3075_mmc_blk_init6, !25, !"__initcall__kmod_mmc_block__287_3075_mmc_blk_init6", i1 false, i1 false}
!25 = !{!"../drivers/mmc/core/block.c", i32 3075, i32 1}
!26 = !{ptr @__exitcall_mmc_blk_exit, !27, !"__exitcall_mmc_blk_exit", i1 false, i1 false}
!27 = !{!"../drivers/mmc/core/block.c", i32 3076, i32 1}
!28 = !{ptr @__UNIQUE_ID_file288, !29, !"__UNIQUE_ID_file288", i1 false, i1 false}
!29 = !{!"../drivers/mmc/core/block.c", i32 3078, i32 1}
!30 = !{ptr @__UNIQUE_ID_license289, !29, !"__UNIQUE_ID_license289", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_description290, !32, !"__UNIQUE_ID_description290", i1 false, i1 false}
!32 = !{!"../drivers/mmc/core/block.c", i32 3079, i32 1}
!33 = !{ptr @mmc_rpmb_devt, !34, !"mmc_rpmb_devt", i1 false, i1 false}
!34 = !{!"../drivers/mmc/core/block.c", i32 144, i32 14}
!35 = !{ptr @__param_str_perdev_minors, !3, !"__param_str_perdev_minors", i1 false, i1 false}
!36 = !{ptr @perdev_minors, !37, !"perdev_minors", i1 false, i1 false}
!37 = !{!"../drivers/mmc/core/block.c", i32 87, i32 12}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/core/block.c", i32 1840, i32 3}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mmc_blk_mq_rw_recovery._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mmc_blk_mq_rw_recovery._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/mmc/core/block.c", i32 969, i32 2}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/core/block.c", i32 1068, i32 4}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mmc_blk_issue_drv_op._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mmc_blk_issue_drv_op._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/core/block.c", i32 1084, i32 3}
!52 = !{ptr @mmc_blk_issue_drv_op._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mmc_blk_issue_drv_op._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/core/block.c", i32 563, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__mmc_blk_ioctl_cmd._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @__mmc_blk_ioctl_cmd._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/core/block.c", i32 568, i32 3}
!63 = !{ptr @__mmc_blk_ioctl_cmd._entry.19, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__mmc_blk_ioctl_cmd._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/core/block.c", i32 3020, i32 11}
!67 = !{ptr @mmc_driver, !68, !"mmc_driver", i1 false, i1 false}
!68 = !{!"../drivers/mmc/core/block.c", i32 3018, i32 26}
!69 = !{ptr @mmc_blk_pm_ops, !70, !"mmc_blk_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/mmc/core/block.c", i32 3016, i32 8}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/core/block.c", i32 2907, i32 38}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/core/block.c", i32 2910, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mmc_blk_probe._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mmc_blk_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/core/quirks.h", i32 200, i32 3}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mmc_fixup_device.__UNIQUE_ID_ddebug279, !79, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/core/quirks.h", i32 26, i32 2}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/core/quirks.h", i32 28, i32 2}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/core/quirks.h", i32 30, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/core/quirks.h", i32 32, i32 2}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/core/quirks.h", i32 34, i32 2}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/core/quirks.h", i32 45, i32 2}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/core/quirks.h", i32 47, i32 2}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/core/quirks.h", i32 49, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/core/quirks.h", i32 51, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/core/quirks.h", i32 53, i32 2}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/core/quirks.h", i32 59, i32 2}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/core/quirks.h", i32 61, i32 2}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/core/quirks.h", i32 69, i32 2}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/core/quirks.h", i32 77, i32 2}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/core/quirks.h", i32 79, i32 2}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/core/quirks.h", i32 81, i32 2}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/core/quirks.h", i32 83, i32 2}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/core/quirks.h", i32 85, i32 2}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/core/quirks.h", i32 87, i32 2}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/core/quirks.h", i32 89, i32 2}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/core/quirks.h", i32 91, i32 2}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/core/quirks.h", i32 98, i32 2}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/core/quirks.h", i32 100, i32 2}
!129 = !{ptr @mmc_blk_fixups, !130, !"mmc_blk_fixups", i1 false, i1 false}
!130 = !{!"../drivers/mmc/core/quirks.h", i32 18, i32 46}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/core/block.c", i32 2364, i32 4}
!133 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mmc_blk_alloc_req._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mmc_blk_alloc_req._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/core/block.c", i32 2420, i32 4}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/core/block.c", i32 2420, i32 57}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/core/block.c", i32 2442, i32 2}
!142 = !{ptr @mmc_blk_alloc_req._entry.56, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mmc_blk_alloc_req._entry_ptr.58, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/core/block.c", i32 98, i32 8}
!147 = !{ptr @mmc_blk_ida, !146, !"mmc_blk_ida", i1 false, i1 false}
!148 = !{ptr @max_devices, !149, !"max_devices", i1 false, i1 false}
!149 = !{!"../drivers/mmc/core/block.c", i32 94, i32 12}
!150 = !{ptr @mmc_bdops, !151, !"mmc_bdops", i1 false, i1 false}
!151 = !{!"../drivers/mmc/core/block.c", i32 823, i32 45}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/core/block.c", i32 169, i32 8}
!154 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @open_lock, !153, !"open_lock", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/core/block.c", i32 81, i32 8}
!158 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @block_mutex, !157, !"block_mutex", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!162 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!167 = !{ptr @mmc_disk_attr_groups, !168, !"mmc_disk_attr_groups", i1 false, i1 false}
!168 = !{!"../drivers/mmc/core/block.c", i32 355, i32 38}
!169 = !{ptr @mmc_disk_attr_group, !170, !"mmc_disk_attr_group", i1 false, i1 false}
!170 = !{!"../drivers/mmc/core/block.c", i32 350, i32 37}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mmc/core/block.c", i32 287, i32 8}
!173 = !{ptr @dev_attr_ro_lock_until_next_power_on, !172, !"dev_attr_ro_lock_until_next_power_on", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mmc/core/block.c", i32 235, i32 33}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/core/block.c", i32 272, i32 3}
!178 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @power_ro_lock_store._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @power_ro_lock_store._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @power_ro_lock_store._entry.72, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/mmc/core/block.c", i32 278, i32 5}
!183 = !{ptr @power_ro_lock_store._entry_ptr.73, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @mmc_disk_attrs, !185, !"mmc_disk_attrs", i1 false, i1 false}
!185 = !{!"../drivers/mmc/core/block.c", i32 324, i32 26}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/core/block.c", i32 322, i32 8}
!188 = !{ptr @dev_attr_force_ro, !187, !"dev_attr_force_ro", i1 false, i1 false}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/core/block.c", i32 2630, i32 3}
!191 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mmc_blk_alloc_rpmb_part._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mmc_blk_alloc_rpmb_part._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mmc/core/block.c", i32 2639, i32 2}
!196 = !{ptr @mmc_blk_alloc_rpmb_part._entry.77, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @mmc_blk_alloc_rpmb_part._entry_ptr.79, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mmc/core/block.c", i32 99, i32 8}
!200 = !{ptr @mmc_rpmb_ida, !199, !"mmc_rpmb_ida", i1 false, i1 false}
!201 = !{ptr @mmc_rpmb_fileops, !202, !"mmc_rpmb_fileops", i1 false, i1 false}
!202 = !{!"../drivers/mmc/core/block.c", i32 2571, i32 37}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mmc/core/block.c", i32 2845, i32 31}
!205 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/core/block.c", i32 2854, i32 24}
!207 = !{ptr @mmc_dbg_card_status_fops, !208, !"mmc_dbg_card_status_fops", i1 false, i1 false}
!208 = !{!"../drivers/mmc/core/block.c", i32 2756, i32 1}
!209 = !{ptr @.str.83, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @mmc_dbg_ext_csd_fops, !211, !"mmc_dbg_ext_csd_fops", i1 false, i1 false}
!211 = !{!"../drivers/mmc/core/block.c", i32 2827, i32 37}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/core/block.c", i32 2789, i32 3}
!214 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @mmc_ext_csd_open._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @mmc_ext_csd_open._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mmc/core/block.c", i32 2794, i32 25}
!219 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/core/block.c", i32 2795, i32 24}
!221 = !{ptr @.str.88, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mmc/core/block.c", i32 148, i32 10}
!223 = !{ptr @mmc_rpmb_bus_type, !224, !"mmc_rpmb_bus_type", i1 false, i1 false}
!224 = !{!"../drivers/mmc/core/block.c", i32 147, i32 24}
!225 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mmc/core/block.c", i32 3034, i32 3}
!227 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @mmc_blk_init._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @mmc_blk_init._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.91, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mmc/core/block.c", i32 3037, i32 60}
!232 = !{ptr @.str.93, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mmc/core/block.c", i32 3039, i32 3}
!234 = !{ptr @mmc_blk_init._entry.92, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @mmc_blk_init._entry_ptr.94, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mmc/core/block.c", i32 3044, i32 3}
!238 = !{ptr @mmc_blk_init._entry.95, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @mmc_blk_init._entry_ptr.97, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{i64 2148789803, i64 2148789808, i64 2148789821, i64 2148789865, i64 2148789899, i64 2148789920}
!251 = !{i8 0, i8 2}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{!"auto-init"}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{i64 2148319891}
!256 = !{i64 804714, i64 804739, i64 804761, i64 804777, i64 804789, i64 804809, i64 804833, i64 804849, i64 804861}
!257 = !{i64 2148320079}
!258 = !{i64 804208, i64 804232, i64 804253, i64 804270, i64 804287}
!259 = !{i64 2148410003}
!260 = !{i64 2148324467, i64 2148324499, i64 2148324528, i64 2148324562, i64 2148324593, i64 2148324616}
!261 = !{i64 2149403967}
!262 = !{i64 2152480035, i64 2152480060}
!263 = !{i64 4975590}
!264 = !{i64 4975787}
!265 = !{i64 2152461020}
!266 = !{i64 2152480716, i64 2152480741}
