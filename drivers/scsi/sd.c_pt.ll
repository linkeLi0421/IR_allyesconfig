; ModuleID = '/llk/IR_all_yes/drivers/scsi/sd.c_pt.bc'
source_filename = "../drivers/scsi/sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.scsi_disk = type <{ ptr, ptr, %struct.device, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.spinlock, ptr, %struct.mutex, %struct.work_struct, ptr, %struct.atomic_t, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i24, [2 x i8] }>
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.blk_independent_access_ranges = type { %struct.kobject, i8, i32, [0 x %struct.blk_independent_access_range] }
%struct.blk_independent_access_range = type { %struct.kobject, ptr, i64, i64 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }

@__UNIQUE_ID_author286 = internal constant [29 x i8] c"sd_mod.author=Eric Youngdale\00", section ".modinfo", align 1
@__UNIQUE_ID_description287 = internal constant [41 x i8] c"sd_mod.description=SCSI disk (sd) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [32 x i8] c"sd_mod.file=drivers/scsi/sd_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [19 x i8] c"sd_mod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [29 x i8] c"sd_mod.alias=block-major-8-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [30 x i8] c"sd_mod.alias=block-major-65-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [30 x i8] c"sd_mod.alias=block-major-66-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [30 x i8] c"sd_mod.alias=block-major-67-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [30 x i8] c"sd_mod.alias=block-major-68-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [30 x i8] c"sd_mod.alias=block-major-69-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [30 x i8] c"sd_mod.alias=block-major-70-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [30 x i8] c"sd_mod.alias=block-major-71-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [31 x i8] c"sd_mod.alias=block-major-128-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [31 x i8] c"sd_mod.alias=block-major-129-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [31 x i8] c"sd_mod.alias=block-major-130-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [31 x i8] c"sd_mod.alias=block-major-131-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [31 x i8] c"sd_mod.alias=block-major-132-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [31 x i8] c"sd_mod.alias=block-major-133-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [31 x i8] c"sd_mod.alias=block-major-134-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [31 x i8] c"sd_mod.alias=block-major-135-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x00*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x07*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x0e*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x14*\00", section ".modinfo", align 1
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@exit_sd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exit_sd: exiting sd driver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exit_sd\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/scsi/sd.c\00", [46 x i8] zeroinitializer }, align 32
@exit_sd._entry_ptr = internal global ptr @exit_sd._entry, section ".printk_index", align 4
@sd_template = internal global { %struct.scsi_driver, [60 x i8] } { %struct.scsi_driver { %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr @sd_probe, ptr null, ptr @sd_remove, ptr @sd_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @sd_pm_ops, ptr null, ptr null }, ptr @sd_rescan, ptr @sd_init_command, ptr @sd_uninit_command, ptr @sd_done, ptr @sd_eh_action, ptr @sd_eh_reset }, [60 x i8] zeroinitializer }, align 32
@sd_cdb_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sd_page_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sd_cdb_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sd_disk_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.115, ptr null, ptr null, ptr @sd_disk_groups, ptr null, ptr null, ptr null, ptr null, ptr @scsi_disk_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sd\00", [29 x i8] zeroinitializer }, align 32
@__initcall__kmod_sd_mod__346_3942_init_sd6 = internal global ptr @init_sd, section ".initcall6.init", align 4
@__exitcall_exit_sd = internal global ptr @exit_sd, section ".exitcall.exit", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Result: hostbyte=%s driverbyte=%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DRIVER_OK\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Result: hostbyte=0x%02x driverbyte=%s\0A\00", [53 x i8] zeroinitializer }, align 32
@sd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sd_suspend_system, ptr @sd_resume_system, ptr null, ptr null, ptr @sd_suspend_system, ptr @sd_resume_system, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_suspend_runtime, ptr @sd_resume_runtime, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_probe\0A\00", [22 x i8] zeroinitializer }, align 32
@sd_bio_compl_lkclass = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sd_index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sd_probe: memory exhausted.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SCSI disk (sd) name length exceeded.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sd_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @sd_open, ptr @sd_release, ptr null, ptr @sd_ioctl, ptr null, ptr @sd_check_events, ptr @sd_unlock_native_capacity, ptr @sd_getgeo, ptr null, ptr null, ptr @sd_zbc_report_zones, ptr null, ptr @sd_get_unique_id, ptr null, ptr @sd_pr_ops, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"supports TCG Opal\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Attached SCSI %sdisk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"removable \00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_index_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@sd_pr_ops = internal constant { %struct.pr_ops, [44 x i8] } { %struct.pr_ops { ptr @sd_pr_register, ptr @sd_pr_reserve, ptr @sd_pr_release, ptr @sd_pr_preempt, ptr @sd_pr_clear }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_open\0A\00", [23 x i8] zeroinitializer }, align 32
@sd_ref_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sd_ref_mutex, i64 52), ptr getelementptr (i8, ptr @sd_ref_mutex, i64 52) }, ptr @sd_ref_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sd_ref_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_ref_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_release\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sd_ioctl: disk=%s, cmd=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_check_events\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_get_unique_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PR command failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sd_revalidate_disk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sd_revalidate_disk: Memory allocation failure.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Media removed, stopped polling\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Test Unit Ready failed\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spinning up disk...\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sd_spinup_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 2240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c.\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_spinup_disk\00", [17 x i8] zeroinitializer }, align 32
@sd_spinup_disk._entry_ptr = internal global ptr @sd_spinup_disk._entry, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unit Not Ready\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_spinup_disk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cready\0A\00", [23 x i8] zeroinitializer }, align 32
@sd_spinup_disk._entry_ptr.41 = internal global ptr @sd_spinup_disk._entry.39, section ".printk_index", align 4
@sd_spinup_disk._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.2, i32 2272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01cnot responding...\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_spinup_disk._entry_ptr.44 = internal global ptr @sd_spinup_disk._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Very big device. Trying to use READ CAPACITY(16).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Using 0xffffffff as device size\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Adjusting the sector count from its reported value: %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sector size 0 reported, assuming 512.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported sector size %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Read Capacity(16) failed\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"physical block alignment offset: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sense not available.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"formatted with unsupported protection type %u. Disabling disk!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enabling DIF Type %u protection\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disabling DIF Type %u protection\0A\00", [62 x i8] zeroinitializer }, align 32
@scsi_host_dif_capable.cap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\04", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Read Capacity(10) failed\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Host-%s zoned block device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"managed\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aware\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Host-aware SMR disk used as regular disk\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Drive-managed SMR disk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%llu %d-byte logical blocks: (%s/%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%u-byte physical blocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Assuming Write Enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Test WP failed, assume Write Enabled\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Write Protect is %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mode Sense: %4ph\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing header in MODE_SENSE response\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Truncating mode parameter data from %d to %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Incomplete mode parameter data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No Caching mode page found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Disabling FUA\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Uses READ/WRITE(6), disabling FUA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write cache: %s, read cache: %s, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"supports DPO and FUA\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"doesn't support DPO or FUA\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cache data unavailable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Asking for cache data failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Assuming drive cache: write back\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Assuming drive cache: write through\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"getting Control mode page failed, assume no ATO\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ATO Got wrong page\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid Concurrent Positioning Ranges VPD page\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid Concurrent Positioning Range number\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%u concurrent positioning ranges\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Optimal transfer size %u logical blocks > dev_max (%u logical blocks)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Optimal transfer size %u logical blocks > sd driver limit (%u logical blocks)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Optimal transfer size %u bytes < PAGE_SIZE (%u bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Optimal transfer size %u bytes not a multiple of physical block size (%u bytes)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Optimal transfer size %u bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Synchronizing SCSI cache\0A\00", [38 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stopping disk\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Synchronize Cache(10) failed\00", [35 x i8] zeroinitializer }, align 32
@__const.sd_start_stop_device.cmd = private unnamed_addr constant [6 x i8] c"\1B\00\00\00\00\00", align 1
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Start/Stop Unit failed\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Starting disk\0A\00", [17 x i8] zeroinitializer }, align 32
@sd_resume_runtime.cmd = internal constant { <{ i8, [9 x i8] }>, [22 x i8] } { <{ i8, [9 x i8] }> <{ i8 3, [9 x i8] zeroinitializer }>, [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to clear sense data\0A\00", [36 x i8] zeroinitializer }, align 32
@sd_init_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device offline or changed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"access beyond end of device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"request not aligned to the logical block size\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: block=%llu, count=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.sd_setup_read_write_cmnd = private unnamed_addr constant [25 x i8] c"sd_setup_read_write_cmnd\00", align 1
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %d/%u 512 byte blocks.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writing\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reading\00", [24 x i8] zeroinitializer }, align 32
@sd_prot_op.ops = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 3, i32 1, i32 5, i32 0, i32 4, i32 2, i32 6], [32 x i8] zeroinitializer }, align 32
@sd_prot_flag_mask.flag_mask = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 24, i32 30, i32 15, i32 9, i32 31, i32 31], [36 x i8] zeroinitializer }, align 32
@sd_setup_rw6_cmnd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.111 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FUA write on READ/WRITE(6) drive\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unaligned partial completion (resid=%u, sector_sz=%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sd_done: completed %d of %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Medium access timeout failure. Offlining disk!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scsi_disk\00", [22 x i8] zeroinitializer }, align 32
@sd_disk_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sd_disk_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sd_disk_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sd_disk_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sd_disk_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_cache_type, ptr @dev_attr_FUA, ptr @dev_attr_allow_restart, ptr @dev_attr_manage_start_stop, ptr @dev_attr_protection_type, ptr @dev_attr_protection_mode, ptr @dev_attr_app_tag_own, ptr @dev_attr_thin_provisioning, ptr @dev_attr_provisioning_mode, ptr @dev_attr_zeroing_mode, ptr @dev_attr_max_write_same_blocks, ptr @dev_attr_max_medium_access_timeouts, ptr @dev_attr_zoned_cap, ptr @dev_attr_max_retries, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_cache_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cache_type_show, ptr @cache_type_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_FUA = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @FUA_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_allow_restart = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @allow_restart_show, ptr @allow_restart_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manage_start_stop = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manage_start_stop_show, ptr @manage_start_stop_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protection_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protection_type_show, ptr @protection_type_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protection_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protection_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_app_tag_own = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @app_tag_own_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_thin_provisioning = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @thin_provisioning_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_provisioning_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @provisioning_mode_show, ptr @provisioning_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_zeroing_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @zeroing_mode_show, ptr @zeroing_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_write_same_blocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_write_same_blocks_show, ptr @max_write_same_blocks_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_medium_access_timeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_medium_access_timeouts_show, ptr @max_medium_access_timeouts_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_zoned_cap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @zoned_cap_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_retries = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_retries_show, ptr @max_retries_store }, [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_type\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sd_cache_types = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write through\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write back\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write back, no read (daft)\00", [37 x i8] zeroinitializer }, align 32
@cache_type_store.temp = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temporary \00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FUA\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"allow_restart\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"manage_start_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"protection_type\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"protection_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%u\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dix\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dif\00", [28 x i8] zeroinitializer }, align 32
@scsi_host_dix_capable.cap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\10 @", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"app_tag_own\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thin_provisioning\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"provisioning_mode\00", [46 x i8] zeroinitializer }, align 32
@lbp_mode = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.80], [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"unmap\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"writesame_16\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"writesame_10\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writesame_zero\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zeroing_mode\00", [19 x i8] zeroinitializer }, align 32
@zeroing_mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writesame\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writesame_16_unmap\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writesame_10_unmap\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_write_same_blocks\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max_medium_access_timeouts\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zoned_cap\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host-managed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host-aware\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drive-managed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_retries\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max_retries must be between -1 and %d\0A\00", [57 x i8] zeroinitializer }, align 32
@init_sd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 3860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"init_sd: sd driver entry point\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_sd\00", [24 x i8] zeroinitializer }, align 32
@init_sd._entry_ptr = internal global ptr @init_sd._entry, section ".printk_index", align 4
@init_sd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd_ext_cdb\00", [21 x i8] zeroinitializer }, align 32
@init_sd._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.155, ptr @.str.2, i32 3878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013sd: can't init extended cdb cache\0A\00", [59 x i8] zeroinitializer }, align 32
@init_sd._entry_ptr.159 = internal global ptr @init_sd._entry.157, section ".printk_index", align 4
@init_sd._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.155, ptr @.str.2, i32 3885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013sd: can't init extended cdb pool\0A\00", [60 x i8] zeroinitializer }, align 32
@init_sd._entry_ptr.162 = internal global ptr @init_sd._entry.160, section ".printk_index", align 4
@init_sd._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.155, ptr @.str.2, i32 3892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013sd: can't init discard page pool\0A\00", [60 x i8] zeroinitializer }, align 32
@init_sd._entry_ptr.165 = internal global ptr @init_sd._entry.163, section ".printk_index", align 4
@switch.table.exit_sd = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 8, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135], [32 x i8] zeroinitializer }, align 32
@switch.table.init_sd = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 8, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135], [32 x i8] zeroinitializer }, align 32
@switch.table.init_sd.166 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 8, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135], [32 x i8] zeroinitializer }, align 32
@switch.table.sd_probe = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 8, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135], [32 x i8] zeroinitializer }, align 32
@switch.table.sd_revalidate_disk = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 512, i32 1024, i32 512, i32 2048, i32 512, i32 512, i32 512, i32 4096], [32 x i8] zeroinitializer }, align 32
@switch.table.sd_pr_reserve = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\03\05\06\07\08", [26 x i8] zeroinitializer }, align 32
@switch.table.sd_pr_release = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\03\05\06\07\08", [26 x i8] zeroinitializer }, align 32
@switch.table.sd_pr_preempt = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\03\05\06\07\08", [26 x i8] zeroinitializer }, align 32
@switch.table.sd_sync_cache = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -16, i32 -5, i32 0, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -16, i32 -16, i32 -16], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 7, i64 14, i64 20]
@__sancov_gen_cov_switch_values.167 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.171 = internal global [10 x i64] [i64 8, i64 8, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12, i64 15, i64 17]
@__sancov_gen_cov_switch_values.172 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 36]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 65, i64 66, i64 147]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.176 = internal global [18 x i64] [i64 16, i64 8, i64 8, i64 10, i64 40, i64 42, i64 47, i64 53, i64 65, i64 66, i64 127, i64 136, i64 138, i64 143, i64 147, i64 168, i64 170, i64 175]
@__sancov_gen_cov_switch_values.177 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.180 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.182 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.184 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.186 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 11, i64 12, i64 27]
@__sancov_gen_cov_switch_values.187 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 4294967221, i64 4294967277]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 6, i64 6, i64 8]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.193 = internal global [18 x i64] [i64 16, i64 32, i64 1091072222, i64 1091072226, i64 1091072232, i64 1091596513, i64 1091596517, i64 1091596518, i64 1091596519, i64 1091596521, i64 1092120796, i64 1092120797, i64 1092120799, i64 1092120804, i64 1092645098, i64 1093169379, i64 1094217963, i64 1109422304]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 36]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967277]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.202 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 58, i64 116]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3929, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"sd_template\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 612, i32 27 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"sd_cdb_pool\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 131, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant [13 x i8] c"sd_page_pool\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 132, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"sd_cdb_cache\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 130, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"sd_disk_class\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 596, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3939, i32 34 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3956, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3961, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [10 x i8] c"sd_pm_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 603, i32 32 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3493, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [21 x i8] c"sd_bio_compl_lkclass\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 133, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"sd_index_ida\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3508, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3514, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3537, i32 27 }
@___asan_gen_.278 = private unnamed_addr constant [8 x i8] c"sd_fops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1891, i32 45 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3594, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3597, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 123, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [10 x i8] c"sd_pr_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1883, i32 28 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1429, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"sd_ref_mutex\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 128, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1499, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1557, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1629, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1768, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 695, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 723, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1841, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3283, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3295, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2183, i32 6 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2199, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2224, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2240, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2260, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2270, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2272, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2543, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2547, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2570, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2579, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2587, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2403, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2426, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2326, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2300, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2305, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2309, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.708, i32 836, i32 23 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2480, i32 25 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3051, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3055, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3058, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2632, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2638, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2675, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2707, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2713, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2715, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2773, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2787, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2810, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2834, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2849, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2853, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2864, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2879, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2881, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2886, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2890, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2920, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2932, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3176, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3196, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3209, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3233, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3241, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3249, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3257, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3264, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3735, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3740, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1717, i32 25 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3703, i32 25 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3811, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3838, i32 19 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3843, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 240, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1234, i32 30 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1239, i32 30 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1244, i32 30 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1307, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1312, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 722, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant [10 x i8] c"flag_mask\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 742, i32 28 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1198, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2065, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 2138, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 1967, i32 8 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 597, i32 11 }
@___asan_gen_.602 = private unnamed_addr constant [15 x i8] c"sd_disk_groups\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [14 x i8] c"sd_disk_group\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 594, i32 1 }
@___asan_gen_.608 = private unnamed_addr constant [14 x i8] c"sd_disk_attrs\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 577, i32 26 }
@___asan_gen_.611 = private unnamed_addr constant [20 x i8] c"dev_attr_cache_type\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [13 x i8] c"dev_attr_FUA\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [23 x i8] c"dev_attr_allow_restart\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [27 x i8] c"dev_attr_manage_start_stop\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [25 x i8] c"dev_attr_protection_type\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [25 x i8] c"dev_attr_protection_mode\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c"dev_attr_app_tag_own\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [27 x i8] c"dev_attr_thin_provisioning\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [27 x i8] c"dev_attr_provisioning_mode\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [22 x i8] c"dev_attr_zeroing_mode\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [31 x i8] c"dev_attr_max_write_same_blocks\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [36 x i8] c"dev_attr_max_medium_access_timeouts\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [19 x i8] c"dev_attr_zoned_cap\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c"dev_attr_max_retries\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 291, i32 8 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 289, i32 22 }
@___asan_gen_.659 = private unnamed_addr constant [15 x i8] c"sd_cache_types\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 135, i32 20 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 136, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 136, i32 19 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 136, i32 27 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 137, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 164, i32 20 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 300, i32 8 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 298, i32 22 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 281, i32 8 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 250, i32 8 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 332, i32 8 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 355, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 351, i32 23 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 353, i32 22 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 353, i32 38 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 353, i32 46 }
@___asan_gen_.707 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [28 x i8] c"../include/scsi/scsi_host.h\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.708, i32 850, i32 23 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 364, i32 8 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 374, i32 8 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 422, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant [9 x i8] c"lbp_mode\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 377, i32 20 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 378, i32 19 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 379, i32 20 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 380, i32 19 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 381, i32 19 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 382, i32 19 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 459, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant [13 x i8] c"zeroing_mode\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 425, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 426, i32 21 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 427, i32 18 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 428, i32 25 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 429, i32 25 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 527, i32 8 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 485, i32 8 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 542, i32 8 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 535, i32 23 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 537, i32 23 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 539, i32 23 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 575, i32 8 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 572, i32 22 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 561, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3860, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3871, i32 8 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3875, i32 35 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3878, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3885, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.813 = private constant [21 x i8] c"../drivers/scsi/sd.c\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.813, i32 3892, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c"switch.table.exit_sd\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c"switch.table.init_sd\00", align 1
@___asan_gen_.817 = private unnamed_addr constant [25 x i8] c"switch.table.init_sd.166\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [22 x i8] c"switch.table.sd_probe\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [32 x i8] c"switch.table.sd_revalidate_disk\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [27 x i8] c"switch.table.sd_pr_reserve\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [27 x i8] c"switch.table.sd_pr_release\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [27 x i8] c"switch.table.sd_pr_preempt\00", align 1
@___asan_gen_.823 = private unnamed_addr constant [27 x i8] c"switch.table.sd_sync_cache\00", align 1
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_exit_sd, ptr @__initcall__kmod_sd_mod__346_3942_init_sd6, ptr @exit_sd, ptr @exit_sd._entry, ptr @exit_sd._entry_ptr, ptr @init_sd._entry, ptr @init_sd._entry.157, ptr @init_sd._entry.160, ptr @init_sd._entry.163, ptr @init_sd._entry_ptr, ptr @init_sd._entry_ptr.159, ptr @init_sd._entry_ptr.162, ptr @init_sd._entry_ptr.165, ptr @sd_spinup_disk._entry, ptr @sd_spinup_disk._entry.39, ptr @sd_spinup_disk._entry.42, ptr @sd_spinup_disk._entry_ptr, ptr @sd_spinup_disk._entry_ptr.41, ptr @sd_spinup_disk._entry_ptr.44, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sd_template, ptr @sd_cdb_pool, ptr @sd_page_pool, ptr @sd_cdb_cache, ptr @sd_disk_class, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @sd_pm_ops, ptr @.str.9, ptr @sd_bio_compl_lkclass, ptr @sd_index_ida, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @sd_fops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sd_pr_ops, ptr @.str.20, ptr @sd_ref_mutex, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @scsi_host_dif_capable.cap, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @sd_resume_runtime.cmd, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @sd_prot_op.ops, ptr @sd_prot_flag_mask.flag_mask, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @sd_disk_groups, ptr @sd_disk_group, ptr @sd_disk_attrs, ptr @dev_attr_cache_type, ptr @dev_attr_FUA, ptr @dev_attr_allow_restart, ptr @dev_attr_manage_start_stop, ptr @dev_attr_protection_type, ptr @dev_attr_protection_mode, ptr @dev_attr_app_tag_own, ptr @dev_attr_thin_provisioning, ptr @dev_attr_provisioning_mode, ptr @dev_attr_zeroing_mode, ptr @dev_attr_max_write_same_blocks, ptr @dev_attr_max_medium_access_timeouts, ptr @dev_attr_zoned_cap, ptr @dev_attr_max_retries, ptr @.str.116, ptr @.str.117, ptr @sd_cache_types, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @cache_type_store.temp, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @scsi_host_dix_capable.cap, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @lbp_mode, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @zeroing_mode, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @init_sd.__key, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @switch.table.exit_sd, ptr @switch.table.init_sd, ptr @switch.table.init_sd.166, ptr @switch.table.sd_probe, ptr @switch.table.sd_revalidate_disk, ptr @switch.table.sd_pr_reserve, ptr @switch.table.sd_pr_release, ptr @switch.table.sd_pr_preempt, ptr @switch.table.sd_sync_cache], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_sd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_template to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_cdb_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_page_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_cdb_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_disk_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_bio_compl_lkclass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pr_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ref_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_spinup_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_spinup_disk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_spinup_disk._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_host_dif_capable.cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_resume_runtime.cmd to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_prot_op.ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_prot_flag_mask.flag_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_disk_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_disk_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_disk_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cache_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_FUA to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_allow_restart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manage_start_stop to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protection_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protection_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_app_tag_own to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_thin_provisioning to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_provisioning_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_zeroing_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_write_same_blocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_medium_access_timeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_zoned_cap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_retries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_cache_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_type_store.temp to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_host_dix_capable.cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbp_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zeroing_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sd._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sd._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sd._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exit_sd to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.init_sd to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.init_sd.166 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_probe to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_revalidate_disk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_pr_reserve to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_pr_release to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_pr_preempt to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_sync_cache to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_sd() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %0 = load i32, ptr @scsi_logging_level, align 4
  %1 = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.do.end7_crit_edge, label %do.end, !prof !432

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #20
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  tail call void @driver_unregister(ptr noundef nonnull @sd_template) #17
  %2 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_destroy(ptr noundef %2) #17
  %3 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %3) #17
  %4 = load ptr, ptr @sd_cdb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #17
  tail call void @class_unregister(ptr noundef nonnull @sd_disk_class) #17
  br label %for.body

for.body:                                         ; preds = %switch.lookup.for.body_crit_edge, %do.end7
  %i.012 = phi i32 [ 0, %do.end7 ], [ %inc, %switch.lookup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.012)
  %5 = icmp ult i32 %i.012, 16
  br i1 %5, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !433
  unreachable

switch.lookup:                                    ; preds = %for.body
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.exit_sd, i32 0, i32 %i.012
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @unregister_blkdev(i32 noundef %switch.load, ptr noundef nonnull @.str.3) #17
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sd() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %0 = load i32, ptr @scsi_logging_level, align 4
  %1 = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.for.body.preheader_crit_edge, label %do.end, !prof !432

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #20
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %switch.lookup.for.body_crit_edge, %for.body.preheader
  %majors.082 = phi i32 [ %spec.select, %switch.lookup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.080 = phi i32 [ %inc14, %switch.lookup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.080)
  %2 = icmp ult i32 %i.080, 16
  br i1 %2, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !433
  unreachable

switch.lookup:                                    ; preds = %for.body
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.init_sd, i32 0, i32 %i.080
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call10 = tail call i32 @__register_blkdev(i32 noundef %switch.load, ptr noundef nonnull @.str.3, ptr noundef nonnull @sd_default_probe) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %inc = zext i1 %tobool11.not to i32
  %spec.select = add i32 %majors.082, %inc
  %inc14 = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc14, 16
  br i1 %exitcond.not, label %for.end, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool15.not = icmp eq i32 %spec.select, 0
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %call19 = tail call i32 @__class_register(ptr noundef nonnull @sd_disk_class, ptr noundef nonnull @init_sd.__key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.err_out_crit_edge

if.end17.err_out_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out

if.end22:                                         ; preds = %if.end17
  %call23 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.156, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  store ptr %call23, ptr @sd_cdb_cache, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #20
  br label %err_out_class

if.end31:                                         ; preds = %if.end22
  %call.i = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call23) #17
  store ptr %call.i, ptr @sd_cdb_pool, align 4
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #20
  br label %err_out_cache

if.end40:                                         ; preds = %if.end31
  %call.i71 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #17
  store ptr %call.i71, ptr @sd_page_pool, align 4
  %tobool42.not = icmp eq ptr %call.i71, null
  br i1 %tobool42.not, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #20
  br label %err_out_ppool

if.end49:                                         ; preds = %if.end40
  %call50 = tail call i32 @scsi_register_driver(ptr noundef nonnull @sd_template) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %err_out_driver

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_out_driver:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %4 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %4) #17
  br label %err_out_ppool

err_out_ppool:                                    ; preds = %err_out_driver, %do.end46
  %err.0 = phi i32 [ %call50, %err_out_driver ], [ -12, %do.end46 ]
  %5 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_destroy(ptr noundef %5) #17
  br label %err_out_cache

err_out_cache:                                    ; preds = %err_out_ppool, %do.end37
  %err.1 = phi i32 [ %err.0, %err_out_ppool ], [ -12, %do.end37 ]
  %6 = load ptr, ptr @sd_cdb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #17
  br label %err_out_class

err_out_class:                                    ; preds = %err_out_cache, %do.end28
  %err.2 = phi i32 [ %err.1, %err_out_cache ], [ -12, %do.end28 ]
  tail call void @class_unregister(ptr noundef nonnull @sd_disk_class) #17
  br label %err_out

err_out:                                          ; preds = %err_out_class, %if.end17.err_out_crit_edge
  %err.3 = phi i32 [ %call19, %if.end17.err_out_crit_edge ], [ %err.2, %err_out_class ]
  br label %for.body56

for.body56:                                       ; preds = %switch.lookup86.for.body56_crit_edge, %err_out
  %i.183 = phi i32 [ 0, %err_out ], [ %inc59, %switch.lookup86.for.body56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.183)
  %7 = icmp ult i32 %i.183, 16
  br i1 %7, label %switch.lookup86, label %do.body.i76

do.body.i76:                                      ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !433
  unreachable

switch.lookup86:                                  ; preds = %for.body56
  %switch.gep87 = getelementptr inbounds [16 x i32], ptr @switch.table.init_sd.166, i32 0, i32 %i.183
  %8 = ptrtoint ptr %switch.gep87 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load88 = load i32, ptr %switch.gep87, align 4
  tail call void @unregister_blkdev(i32 noundef %switch.load88, ptr noundef nonnull @.str.3) #17
  %inc59 = add nuw nsw i32 %i.183, 1
  %exitcond85.not = icmp eq i32 %inc59, 16
  br i1 %exitcond85.not, label %switch.lookup86.cleanup_crit_edge, label %switch.lookup86.for.body56_crit_edge

switch.lookup86.for.body56_crit_edge:             ; preds = %switch.lookup86
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body56

switch.lookup86.cleanup_crit_edge:                ; preds = %switch.lookup86
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup86.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.end.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %err.3, %switch.lookup86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_print_sense_hdr(ptr nocapture noundef readonly %sdkp, ptr noundef %sshdr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %3, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %disk_name
  tail call void @scsi_print_sense_hdr(ptr noundef %1, ptr noundef %spec.select, ptr noundef %sshdr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_print_result(ptr nocapture noundef readonly %sdkp, ptr noundef %msg, i32 noundef %result) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_hostbyte_string(i32 noundef %result) #17
  %tobool.not = icmp eq ptr %call, null
  %disk13 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk13 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk13, align 8
  %tobool14.not = icmp eq ptr %1, null
  %device21 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %2 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device21, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool14.not, label %cond.false5, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %disk_name, ptr noundef nonnull @.str.5, ptr noundef %msg, ptr noundef nonnull %call, ptr noundef nonnull @.str.7) #17
  br label %if.end

cond.false5:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %msg, ptr noundef nonnull %call, ptr noundef nonnull @.str.7) #17
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool14.not, label %cond.false20, label %cond.true15

cond.true15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name18 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %4 = lshr i32 %result, 16
  %and = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %disk_name18, ptr noundef nonnull @.str.8, ptr noundef %msg, i32 noundef %and, ptr noundef nonnull @.str.7) #17
  br label %if.end

cond.false20:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %5 = lshr i32 %result, 16
  %and23 = and i32 %5, 255
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %msg, i32 noundef %and23, ptr noundef nonnull @.str.7) #17
  br label %if.end

if.end:                                           ; preds = %cond.false20, %cond.true15, %cond.false5, %cond.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_hostbyte_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call = tail call i32 @scsi_autopm_get_device(ptr noundef %add.ptr) #17
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %entry.do.body_crit_edge
    i8 20, label %entry.do.body_crit_edge258
    i8 7, label %entry.do.body_crit_edge259
    i8 14, label %entry.do.body_crit_edge260
  ]

entry.do.body_crit_edge260:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge259:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge258:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge258, %entry.do.body_crit_edge259, %entry.do.body_crit_edge260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %3 = load i32, ptr @scsi_logging_level, align 4
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %do.body.do.end23_crit_edge, label %do.body20, !prof !432

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end23

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.9) #17
  br label %do.end23

do.end23:                                         ; preds = %do.body20, %do.body.do.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1232) #21
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %do.end23.cleanup_crit_edge, label %if.end27

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end27:                                         ; preds = %do.end23
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %6 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue, align 4
  %call28 = tail call ptr @__alloc_disk_node(ptr noundef %7, i32 noundef -1, ptr noundef nonnull @sd_bio_compl_lkclass) #17
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.out_free_crit_edge, label %if.end31

if.end27.out_free_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end31:                                         ; preds = %if.end27
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @sd_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33 = icmp slt i32 %call.i, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.11) #17
  br label %out_put

if.end36:                                         ; preds = %if.end31
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.gendisk, ptr %call28, i32 0, i32 3, i32 2
  %add.ptr1.i = getelementptr %struct.gendisk, ptr %call28, i32 0, i32 4
  %add.ptr2.i = getelementptr %struct.gendisk, ptr %call28, i32 0, i32 3, i32 31
  %8 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr2.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end36
  %index.addr.0.i = phi i32 [ %call.i, %if.end36 ], [ %sub.i, %if.end.i.do.body.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr2.i, %if.end36 ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %p.0.i, %add.ptr.i
  br i1 %cmp.i, label %if.then39, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %index.addr.0.i.frozen = freeze i32 %index.addr.0.i
  %div.i = sdiv i32 %index.addr.0.i.frozen, 26
  %9 = mul i32 %div.i, 26
  %rem.i.decomposed = sub i32 %index.addr.0.i.frozen, %9
  %10 = trunc i32 %rem.i.decomposed to i8
  %conv.i = add nsw i8 %10, 97
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 -1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %incdec.ptr.i, align 1
  %sub.i = add nsw i32 %div.i, -1
  %cmp3.i = icmp sgt i32 %index.addr.0.i, 25
  br i1 %cmp3.i, label %if.end.i.do.body.i_crit_edge, label %if.end40

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then39:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.12) #17
  tail call void @ida_free(ptr noundef nonnull @sd_index_ida, i32 noundef %call.i) #17
  br label %out_put

if.end40:                                         ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %12 = call ptr @memmove(ptr %add.ptr.i, ptr %incdec.ptr.i, i32 %sub.ptr.sub.i)
  %13 = ptrtoint ptr %disk_name to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 29540, ptr %disk_name, align 1
  %device = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %device, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sd_template, ptr %call7.i.i, align 8
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %disk, align 8
  %index41 = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 27
  %17 = ptrtoint ptr %index41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %index41, align 4
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 20
  %18 = ptrtoint ptr %max_retries to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %max_retries, align 8
  %openers = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #17
  %19 = ptrtoint ptr %openers to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %openers, align 4
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %ioerr_cnt = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 53
  %call.i.i249 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ioerr_cnt, i32 noundef 4) #17
  %22 = ptrtoint ptr %ioerr_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %ioerr_cnt, align 4
  %23 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_queue, align 4
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44.not = icmp eq i32 %26, 0
  br i1 %tobool44.not, label %if.then45, label %if.end40.if.end54_crit_edge

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %cmp48.not = icmp eq i8 %28, 7
  %. = select i1 %cmp48.not, i32 7500, i32 3000
  tail call void @blk_queue_rq_timeout(ptr noundef %24, i32 noundef %.) #17
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end40.if.end54_crit_edge
  %dev55 = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %dev55) #17
  %call56 = tail call ptr @get_device(ptr noundef %dev) #17
  %parent = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call56, ptr %parent, align 8
  %class = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 2, i32 33
  %30 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sd_disk_class, ptr %class, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i250, label %if.end54.dev_name.exit_crit_edge

if.end54.dev_name.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit

if.end.i250:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i250, %if.end54.dev_name.exit_crit_edge
  %retval.0.i251 = phi ptr [ %34, %if.end.i250 ], [ %32, %if.end54.dev_name.exit_crit_edge ]
  %call61 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev55, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i251) #17
  %call63 = tail call i32 @device_add(ptr noundef %dev55) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @put_device(ptr noundef %dev55) #17
  br label %cleanup

if.end67:                                         ; preds = %dev_name.exit
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %and68 = lshr i32 %call.i, 4
  %36 = and i32 %and68, 15
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.sd_probe, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  %38 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %switch.load, ptr %call28, align 8
  %and71 = shl i32 %call.i, 4
  %shl = and i32 %and71, 240
  %and72 = and i32 %call.i, 1048320
  %or = or i32 %shl, %and72
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 1
  %39 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 2
  %40 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 8
  %41 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sd_fops, ptr %fops, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 10
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %private_data, align 8
  %sector_size = getelementptr i8, ptr %dev, i32 -260
  %43 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 512, ptr %sector_size, align 4
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %capacity, align 8
  %media_present = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 31
  %45 = ptrtoint ptr %media_present to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %media_present, align 4
  %write_prot = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 32
  %46 = ptrtoint ptr %write_prot to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %write_prot, align 1
  %cache_override = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 37
  %47 = ptrtoint ptr %cache_override to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load = load i32, ptr %cache_override, align 2
  %bf.clear84 = and i32 %bf.load, 201326591
  %bf.set85 = or i32 %bf.clear84, 67108864
  store i32 %bf.set85, ptr %cache_override, align 2
  %max_medium_access_timeouts = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 29
  %48 = ptrtoint ptr %max_medium_access_timeouts to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %max_medium_access_timeouts, align 4
  tail call fastcc void @sd_revalidate_disk(ptr noundef nonnull %call28)
  %removable = getelementptr i8, ptr %dev, i32 -100
  %49 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load87 = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load87)
  %tobool88.not = icmp sgt i64 %bf.load87, -1
  br i1 %tobool88.not, label %if.end67.if.end94_crit_edge, label %if.then89

if.end67.if.end94_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.then89:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 11
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %or90 = or i32 %51, 1
  store i32 %or90, ptr %flags, align 4
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i, align 4
  %54 = or i16 %53, 1
  store i16 %54, ptr %add.ptr1.i, align 4
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %call28, i32 0, i32 5
  %55 = ptrtoint ptr %event_flags to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3, ptr %event_flags, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end67.if.end94_crit_edge
  %56 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %request_queue, align 4
  tail call void @blk_pm_runtime_init(ptr noundef %57, ptr noundef %dev) #17
  %58 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load96 = load i64, ptr %removable, align 4
  %59 = and i64 %bf.load96, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool100.not = icmp eq i64 %59, 0
  br i1 %tobool100.not, label %if.end94.if.end102_crit_edge, label %if.then101

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

if.then101:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hostt, align 8
  %rpm_autosuspend_delay = getelementptr inbounds %struct.scsi_host_template, ptr %63, i32 0, i32 51
  %64 = ptrtoint ptr %rpm_autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rpm_autosuspend_delay, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %65) #17
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end94.if.end102_crit_edge
  %call103 = tail call i32 @device_add_disk(ptr noundef %dev, ptr noundef nonnull %call28, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end107, label %if.then105

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @put_device(ptr noundef %dev55) #17
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %66 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool109.not = icmp eq i64 %67, 0
  br i1 %tobool109.not, label %if.end107.if.end111_crit_edge, label %if.then110

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @sd_dif_config_host(ptr noundef nonnull %call7.i.i) #17
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end107.if.end111_crit_edge
  tail call fastcc void @sd_revalidate_disk(ptr noundef nonnull %call28)
  %68 = ptrtoint ptr %cache_override to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load113 = load i32, ptr %cache_override, align 2
  %69 = and i32 %bf.load113, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool116.not = icmp eq i32 %69, 0
  br i1 %tobool116.not, label %if.end111.if.end130_crit_edge, label %if.then117

if.end111.if.end130_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.then117:                                       ; preds = %if.end111
  %call118 = tail call ptr @init_opal_dev(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @sd_sec_submit) #17
  %opal_dev = getelementptr inbounds %struct.scsi_disk, ptr %call7.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %opal_dev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call118, ptr %opal_dev, align 4
  %tobool120.not = icmp eq ptr %call118, null
  br i1 %tobool120.not, label %if.then117.if.end130_crit_edge, label %if.then121

if.then117.if.end130_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.then121:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disk, align 8
  %tobool123.not = icmp eq ptr %72, null
  %73 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device, align 4
  %disk_name126 = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 3
  %.sink257 = select i1 %tobool123.not, ptr null, ptr %disk_name126
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %74, ptr noundef %.sink257, ptr noundef nonnull @.str.15) #17
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %if.then117.if.end130_crit_edge, %if.end111.if.end130_crit_edge
  %75 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disk, align 8
  %tobool132.not = icmp eq ptr %76, null
  %77 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device, align 4
  %disk_name136 = getelementptr inbounds %struct.gendisk, ptr %76, i32 0, i32 3
  %.sink = select i1 %tobool132.not, ptr null, ptr %disk_name136
  %79 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %bf.load146 = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load146)
  %tobool149.not = icmp sgt i64 %bf.load146, -1
  %cond150 = select i1 %tobool149.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %78, ptr noundef %.sink, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond150) #17
  br label %cleanup

out_put:                                          ; preds = %if.then39, %if.then35
  %error.0 = phi i32 [ -12, %if.then35 ], [ -22, %if.then39 ]
  tail call void @put_disk(ptr noundef nonnull %call28) #17
  br label %out_free

out_free:                                         ; preds = %out_put, %if.end27.out_free_crit_edge
  %error.1 = phi i32 [ %error.0, %out_put ], [ -12, %if.end27.out_free_crit_edge ]
  tail call void @sd_zbc_release_disk(ptr noundef nonnull %call7.i.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end130, %if.then105, %if.then65, %do.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end130 ], [ %error.1, %out_free ], [ %call63, %if.then65 ], [ %call103, %if.then105 ], [ -12, %do.end23.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @scsi_autopm_put_device(ptr noundef %add.ptr) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_remove(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call1 = tail call i32 @scsi_autopm_get_device(ptr noundef %3) #17
  %dev2 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 2
  tail call void @device_del(ptr noundef %dev2) #17
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  tail call void @del_gendisk(ptr noundef %5) #17
  tail call void @sd_shutdown(ptr noundef %dev)
  %opal_dev = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %opal_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opal_dev, align 4
  tail call void @free_opal_dev(ptr noundef %7) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @put_device(ptr noundef %dev2) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_shutdown(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end3_crit_edge

pm_runtime_suspended.exit.if.end3_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %pm_runtime_suspended.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %WCE = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %5 = ptrtoint ptr %WCE to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %WCE, align 2
  %6 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %land.lhs.true

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end3
  %media_present = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then6

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk, align 8
  %tobool7.not = icmp eq ptr %10, null
  %device9 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device9, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 3
  %.sink = select i1 %tobool7.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %12, ptr noundef %.sink, ptr noundef nonnull @.str.97) #17
  %call10 = tail call fastcc i32 @sd_sync_cache(ptr noundef nonnull %1, ptr noundef null)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %13 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.not = icmp eq i32 %13, 6
  br i1 %cmp.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end11
  %device14 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device14, align 4
  %manage_start_stop = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 41
  %16 = ptrtoint ptr %manage_start_stop to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load15 = load i64, ptr %manage_start_stop, align 4
  %17 = and i64 %bf.load15, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool18.not = icmp eq i64 %17, 0
  br i1 %tobool18.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then19

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  %disk20 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %disk20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk20, align 8
  %tobool21.not = icmp eq ptr %19, null
  %disk_name25 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %.sink48 = select i1 %tobool21.not, ptr null, ptr %disk_name25
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %15, ptr noundef %.sink48, ptr noundef nonnull @.str.98) #17
  %call30 = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_rescan(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  tail call fastcc void @sd_revalidate_disk(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sd_init_command(ptr noundef %cmd) #4 align 64 {
entry:
  %lba.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %cmd_flags = getelementptr i8, ptr %cmd, i32 -180
  %0 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %trunc, label %land.end [
    i8 3, label %sw.bb
    i8 9, label %sw.bb10
    i8 7, label %sw.bb12
    i8 2, label %sw.bb14
    i8 0, label %entry.sw.bb16_crit_edge
    i8 1, label %entry.sw.bb16_crit_edge130
    i8 13, label %entry.sw.bb16_crit_edge131
    i8 15, label %sw.bb18
    i8 17, label %sw.bb20
    i8 10, label %sw.bb22
    i8 11, label %sw.bb24
    i8 12, label %sw.bb26
  ]

entry.sw.bb16_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb16

entry.sw.bb16_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb16

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 8
  %provisioning_mode = getelementptr inbounds %struct.scsi_disk, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %provisioning_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %provisioning_mode, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %10, label %sw.bb.cleanup_crit_edge [
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
    i8 3, label %sw.bb6
    i8 4, label %sw.bb8
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call fastcc zeroext i8 @sd_setup_unmap_cmnd(ptr noundef %cmd)
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %cmd, i1 noundef zeroext true)
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %cmd, i1 noundef zeroext true)
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call9 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %cmd, i1 noundef zeroext false)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 8
  %__sector.i.i = getelementptr i8, ptr %cmd, i32 -152
  %20 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %__sector.i.i, align 8
  %sector_size.i.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 20
  %22 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sector_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i.i = icmp eq i32 %23, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true) #17, !range !434
  %sub.i.op.i.i.op.i = sub nsw i32 22, %24
  %sub8.i.i = select i1 %tobool.not.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.op.i
  %conv69.in.in.in.i = getelementptr i8, ptr %cmd, i32 -160
  %25 = ptrtoint ptr %conv69.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %conv69.in.in.i = load i32, ptr %conv69.in.in.in.i, align 8
  %sh_prom.i.pn.i = zext i32 %sub8.i.i to i64
  %shr.i67.i = lshr i64 %21, %sh_prom.i.pn.i
  %conv69.in.i = lshr i32 %conv69.in.in.i, 9
  %conv69.i = zext i32 %conv69.in.i to i64
  %sub.i.op.i.i52.i.op = sub nsw i32 22, %24
  %sub8.i56.i = select i1 %tobool.not.i.i.i.i, i32 -10, i32 %sub.i.op.i.i52.i.op
  %sh_prom.i57.i = zext i32 %sub8.i56.i to i64
  %26 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_flags, align 4
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb10.if.end.i_crit_edge

sw.bb10.if.end.i_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb10
  %zeroing_mode.i = getelementptr inbounds %struct.scsi_disk, ptr %19, i32 0, i32 35
  %29 = ptrtoint ptr %zeroing_mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %zeroing_mode.i, align 8
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %30, label %if.then.i.if.end.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb10.i
  ]

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %call9.i = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %cmd, i1 noundef zeroext true) #17
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %call11.i = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %cmd, i1 noundef zeroext true) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %sw.bb10.if.end.i_crit_edge
  %no_write_same.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 41
  %32 = ptrtoint ptr %no_write_same.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i = load i64, ptr %no_write_same.i, align 4
  %33 = and i64 %bf.load.i, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool12.not.i = icmp eq i64 %33, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %rq_flags.i = getelementptr i8, ptr %cmd, i32 -176
  %34 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_flags.i, align 8
  %or.i = or i32 %35, 2048
  store i32 %or.i, ptr %rq_flags.i, align 8
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %ws16.i = getelementptr inbounds %struct.scsi_disk, ptr %19, i32 0, i32 37
  %36 = ptrtoint ptr %ws16.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load15.i = load i32, ptr %ws16.i, align 2
  %37 = and i32 %bf.load15.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.i = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i67.i)
  %cmp.i = icmp ult i64 %shr.i67.i, 4294967296
  %or.cond.i = select i1 %tobool18.not.i, i1 %cmp.i, i1 false
  %38 = shl i64 4294901760, %sh_prom.i57.i
  %39 = and i64 %38, %conv69.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp21.not.i = icmp eq i64 %39, 0
  %or.cond44.i = select i1 %or.cond.i, i1 %cmp21.not.i, i1 false
  br i1 %or.cond44.i, label %if.end25.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  %call24.i = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %cmd, i1 noundef zeroext false) #17
  br label %cleanup

if.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  %call26.i = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %cmd, i1 noundef zeroext false) #17
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %device.i81 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %40 = ptrtoint ptr %device.i81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i81, align 4
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i82 = getelementptr inbounds %struct.request_queue, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %disk.i82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disk.i82, align 8
  %private_data.i.i83 = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %private_data.i.i83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private_data.i.i83, align 8
  %bio2.i = getelementptr i8, ptr %cmd, i32 -144
  %48 = ptrtoint ptr %bio2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio2.i, align 8
  %__sector.i.i84 = getelementptr i8, ptr %cmd, i32 -152
  %50 = ptrtoint ptr %__sector.i.i84 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %__sector.i.i84, align 8
  %sector_size.i.i85 = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 20
  %52 = ptrtoint ptr %sector_size.i.i85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sector_size.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i.i90 = icmp eq i32 %53, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #17, !range !434
  %sub.i.op.i.i.op.i91 = sub nsw i32 22, %54
  %sub8.i.i92 = select i1 %tobool.not.i.i.i.i90, i32 -10, i32 %sub.i.op.i.i.op.i91
  %__data_len.i.i185.i = getelementptr i8, ptr %cmd, i32 -160
  %55 = ptrtoint ptr %__data_len.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %conv187.in.in.i = load i32, ptr %__data_len.i.i185.i, align 8
  %sh_prom.i.pn.i94 = zext i32 %sub8.i.i92 to i64
  %shr.i183.i = lshr i64 %51, %sh_prom.i.pn.i94
  %conv187.in.i = lshr i32 %conv187.in.in.i, 9
  %conv187.i = zext i32 %conv187.in.i to i64
  %sub.i.op.i.i168.i.op = sub nsw i32 22, %54
  %sub8.i172.i = select i1 %tobool.not.i.i.i.i90, i32 -10, i32 %sub.i.op.i.i168.i.op
  %sh_prom.i173.i = zext i32 %sub8.i172.i to i64
  %shr.i174.i = lshr i64 %conv187.i, %sh_prom.i173.i
  %conv7.i = trunc i64 %shr.i174.i to i32
  %device8.i = getelementptr inbounds %struct.scsi_disk, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %device8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device8.i, align 4
  %no_write_same.i95 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 41
  %58 = ptrtoint ptr %no_write_same.i95 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load.i96 = load i64, ptr %no_write_same.i95, align 4
  %59 = and i64 %bf.load.i96, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool.not.i97 = icmp eq i64 %59, 0
  br i1 %tobool.not.i97, label %do.body.i, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb12
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 20
  %60 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 2
  %62 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bi_idx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %61, i32 %63, i32 2
  %64 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 3
  %66 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i = add i32 %67, %65
  %rem.i = and i32 %add.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool10.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool10.not.i, label %lor.rhs.i, label %do.body.i.do.body66.i_crit_edge, !prof !432

do.body.i.do.body66.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body66.i

lor.rhs.i:                                        ; preds = %do.body.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bi_size.i, align 8
  %bv_len29.i = getelementptr %struct.bio_vec, ptr %61, i32 %63, i32 1
  %70 = ptrtoint ptr %bv_len29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bv_len29.i, align 4
  %sub.i = sub i32 %71, %67
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %sub.i) #17
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 4096) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %53)
  %cmp61.not.i = icmp eq i32 %73, %53
  br i1 %cmp61.not.i, label %do.end72.i, label %lor.rhs.i.do.body66.i_crit_edge, !prof !432

lor.rhs.i.do.body66.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body66.i

do.body66.i:                                      ; preds = %lor.rhs.i.do.body66.i_crit_edge, %do.body.i.do.body66.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1079, 0\0A.popsection", ""() #17, !srcloc !435
  unreachable

do.end72.i:                                       ; preds = %lor.rhs.i
  %timeout.i = getelementptr i8, ptr %cmd, i32 -164
  %74 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 12000, ptr %timeout.i, align 4
  %ws16.i98 = getelementptr inbounds %struct.scsi_disk, ptr %47, i32 0, i32 37
  %75 = ptrtoint ptr %ws16.i98 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load73.i = load i32, ptr %ws16.i98, align 2
  %76 = and i32 %bf.load73.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool76.not.i = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr.i183.i)
  %cmp77.i = icmp ugt i64 %shr.i183.i, 4294967295
  %or.cond.i99 = select i1 %tobool76.not.i, i1 true, i1 %cmp77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv7.i)
  %cmp80.i = icmp ugt i32 %conv7.i, 65535
  %or.cond160.i = select i1 %or.cond.i99, i1 true, i1 %cmp80.i
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  br i1 %or.cond160.i, label %if.then82.i, label %if.else.i

if.then82.i:                                      ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 16, ptr %cmd_len.i, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %78 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmnd.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -109, ptr %79, align 1
  %81 = load ptr, ptr %cmnd.i, align 4
  %arrayidx85.i = getelementptr i8, ptr %81, i32 2
  %82 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %shr.i183.i, ptr %arrayidx85.i, align 1
  %83 = load ptr, ptr %cmnd.i, align 4
  %arrayidx87.i = getelementptr i8, ptr %83, i32 10
  %84 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %conv7.i, ptr %arrayidx87.i, align 1
  br label %if.end97.i

if.else.i:                                        ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #19
  %85 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 10, ptr %cmd_len.i, align 4
  %cmnd89.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %86 = ptrtoint ptr %cmnd89.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cmnd89.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 65, ptr %87, align 1
  %conv91.i = trunc i64 %shr.i183.i to i32
  %89 = load ptr, ptr %cmnd89.i, align 4
  %arrayidx93.i = getelementptr i8, ptr %89, i32 2
  %90 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %conv91.i, ptr %arrayidx93.i, align 1
  %conv94.i = trunc i64 %shr.i174.i to i16
  %91 = load ptr, ptr %cmnd89.i, align 4
  %arrayidx96.i = getelementptr i8, ptr %91, i32 7
  %92 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %conv94.i, ptr %arrayidx96.i, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.else.i, %if.then82.i
  %93 = ptrtoint ptr %sector_size.i.i85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sector_size.i.i85, align 4
  %transfersize.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %95 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %transfersize.i, align 4
  %max_retries.i = getelementptr inbounds %struct.scsi_disk, ptr %47, i32 0, i32 20
  %96 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_retries.i, align 8
  %allowed.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %98 = ptrtoint ptr %allowed.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %allowed.i, align 4
  %99 = load i32, ptr %sector_size.i.i85, align 4
  %100 = ptrtoint ptr %__data_len.i.i185.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %__data_len.i.i185.i, align 8
  %call100.i = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #17
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i102 = getelementptr inbounds %struct.request_queue, ptr %102, i32 0, i32 15
  %103 = ptrtoint ptr %disk.i102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %disk.i102, align 8
  %private_data.i.i103 = getelementptr inbounds %struct.gendisk, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %private_data.i.i103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %private_data.i.i103, align 8
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %107 = call ptr @memset(ptr %sdb.i, i32 0, i32 16)
  %cmnd.i104 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %108 = ptrtoint ptr %cmnd.i104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cmnd.i104, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 53, ptr %109, align 1
  %cmd_len.i105 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %111 = ptrtoint ptr %cmd_len.i105 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 10, ptr %cmd_len.i105, align 4
  %transfersize.i106 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %112 = ptrtoint ptr %transfersize.i106 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %transfersize.i106, align 4
  %max_retries.i107 = getelementptr inbounds %struct.scsi_disk, ptr %106, i32 0, i32 20
  %113 = ptrtoint ptr %max_retries.i107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_retries.i107, align 8
  %allowed.i108 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %115 = ptrtoint ptr %allowed.i108 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %allowed.i108, align 4
  %116 = load ptr, ptr %add.ptr.i.i, align 8
  %rq_timeout.i = getelementptr inbounds %struct.request_queue, ptr %116, i32 0, i32 25
  %117 = ptrtoint ptr %rq_timeout.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rq_timeout.i, align 8
  %mul.i = shl i32 %118, 1
  %timeout.i109 = getelementptr i8, ptr %cmd, i32 -164
  %119 = ptrtoint ptr %timeout.i109 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %mul.i, ptr %timeout.i109, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge130, %entry.sw.bb16_crit_edge131
  %device.i111 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %120 = ptrtoint ptr %device.i111 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device.i111, align 4
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i112 = getelementptr inbounds %struct.request_queue, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %disk.i112 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %disk.i112, align 8
  %private_data.i.i113 = getelementptr inbounds %struct.gendisk, ptr %125, i32 0, i32 10
  %126 = ptrtoint ptr %private_data.i.i113 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %private_data.i.i113, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lba.i) #17
  %__sector.i.i114 = getelementptr i8, ptr %cmd, i32 -152
  %128 = ptrtoint ptr %__sector.i.i114 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %__sector.i.i114, align 8
  %sector_size.i.i115 = getelementptr inbounds %struct.scsi_device, ptr %121, i32 0, i32 20
  %130 = ptrtoint ptr %sector_size.i.i115 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sector_size.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i.i118 = icmp eq i32 %131, 0
  %132 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 true) #17, !range !434
  %sub.i.op.i.i.i.op = sub nsw i32 22, %132
  %sub8.i.i119 = select i1 %tobool.not.i.i.i.i118, i32 -10, i32 %sub.i.op.i.i.i.op
  %sh_prom.i.i = zext i32 %sub8.i.i119 to i64
  %shr.i.i = lshr i64 %129, %sh_prom.i.i
  %133 = ptrtoint ptr %lba.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %shr.i.i, ptr %lba.i, align 8
  %__data_len.i.i.i = getelementptr i8, ptr %cmd, i32 -160
  %134 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i296.i = lshr i32 %135, 9
  %conv.i = zext i32 %shr.i296.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i302.i = icmp eq i32 %131, 0
  %136 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 true) #17, !range !434
  %sub.i.op.i.i303.op.i = sub nsw i32 22, %136
  %sub8.i307.i = select i1 %tobool.not.i.i.i302.i, i32 -10, i32 %sub.i.op.i.i303.op.i
  %sh_prom.i308.i = zext i32 %sub8.i307.i to i64
  %shr.i309.i = lshr i64 %conv.i, %sh_prom.i308.i
  %conv6.i = trunc i64 %shr.i309.i to i32
  %sub.i.op.i.i317.i.op = sub nsw i32 22, %136
  %sub8.i321.i = select i1 %tobool.not.i.i.i302.i, i32 -10, i32 %sub.i.op.i.i317.i.op
  %sh_prom.i322.i = zext i32 %sub8.i321.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i322.i
  %137 = trunc i64 %shl.i.i to i32
  %conv8.i = add i32 %137, -1
  %138 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cmd_flags, align 4
  %and.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %call12.i = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12.i)
  %cmp14.not.i = icmp eq i8 %call12.i, 0
  br i1 %cmp14.not.i, label %if.end.i121, label %sw.bb16.sd_setup_read_write_cmnd.exit_crit_edge

sw.bb16.sd_setup_read_write_cmnd.exit_crit_edge:  ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_setup_read_write_cmnd.exit

if.end.i121:                                      ; preds = %sw.bb16
  %sdev_state.i.i = getelementptr inbounds %struct.scsi_device, ptr %121, i32 0, i32 69
  %140 = ptrtoint ptr %sdev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sdev_state.i.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %141, label %lor.lhs.false.i [
    i32 7, label %if.end.i121.fail.sink.split.i_crit_edge
    i32 6, label %if.end.i121.fail.sink.split.i_crit_edge132
    i32 4, label %if.end.i121.fail.sink.split.i_crit_edge133
  ]

if.end.i121.fail.sink.split.i_crit_edge133:       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

if.end.i121.fail.sink.split.i_crit_edge132:       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

if.end.i121.fail.sink.split.i_crit_edge:          ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end.i121
  %changed.i = getelementptr inbounds %struct.scsi_device, ptr %121, i32 0, i32 41
  %143 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 8)
  %bf.load.i122 = load i64, ptr %changed.i, align 4
  %144 = and i64 %bf.load.i122, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %tobool17.not.i = icmp eq i64 %144, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %lor.lhs.false.i.fail.sink.split.i_crit_edge

lor.lhs.false.i.fail.sink.split.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

if.end19.i:                                       ; preds = %lor.lhs.false.i
  %145 = ptrtoint ptr %__sector.i.i114 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %__sector.i.i114, align 8
  %147 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i325.i = lshr i32 %148, 9
  %conv22.i = zext i32 %shr.i325.i to i64
  %add.i123 = add i64 %146, %conv22.i
  %149 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr.i.i, align 8
  %disk24.i = getelementptr inbounds %struct.request_queue, ptr %150, i32 0, i32 15
  %151 = ptrtoint ptr %disk24.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %disk24.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %152, i32 0, i32 7
  %153 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i123, i64 %156)
  %cmp26.i = icmp ugt i64 %add.i123, %156
  br i1 %cmp26.i, label %if.end19.i.fail.sink.split.i_crit_edge, label %if.end29.i

if.end19.i.fail.sink.split.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

if.end29.i:                                       ; preds = %if.end19.i
  %conv31.i = zext i32 %conv8.i to i64
  %and32.i = and i64 %146, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i)
  %tobool33.not.i = icmp eq i64 %and32.i, 0
  %and36.i = and i32 %shr.i325.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or.cond366.i = select i1 %tobool33.not.i, i1 %tobool37.not.i, i1 false
  br i1 %or.cond366.i, label %if.end39.i, label %if.end29.i.fail.sink.split.i_crit_edge

if.end29.i.fail.sink.split.i_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.sink.split.i

if.end39.i:                                       ; preds = %if.end29.i
  %capacity.i = getelementptr inbounds %struct.scsi_disk, ptr %127, i32 0, i32 19
  %157 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %capacity.i, align 8
  %sub40.i = add i64 %158, -8
  %159 = and i64 %bf.load.i122, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %159)
  %tobool45.not.i = icmp eq i64 %159, 0
  br i1 %tobool45.not.i, label %if.end39.i.if.end59.i_crit_edge, label %land.rhs.i

if.end39.i.if.end59.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i

land.rhs.i:                                       ; preds = %if.end39.i
  %160 = ptrtoint ptr %lba.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %lba.i, align 8
  %conv46.i = and i64 %shr.i309.i, 4294967295
  %add47.i = add i64 %161, %conv46.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add47.i, i64 %sub40.i)
  %cmp48.i = icmp ugt i64 %add47.i, %sub40.i
  br i1 %cmp48.i, label %if.then52.i, label %land.rhs.i.if.end59.i_crit_edge, !prof !436

land.rhs.i.if.end59.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i

if.then52.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub40.i, i64 %161)
  %cmp53.i = icmp ugt i64 %sub40.i, %161
  br i1 %cmp53.i, label %if.then55.i, label %if.then52.i.if.end59.i_crit_edge

if.then52.i.if.end59.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i

if.then55.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub56.i = sub i64 %sub40.i, %161
  %conv57.i = trunc i64 %sub56.i to i32
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %if.then52.i.if.end59.i_crit_edge, %land.rhs.i.if.end59.i_crit_edge, %if.end39.i.if.end59.i_crit_edge
  %nr_blocks.0.i = phi i32 [ %conv57.i, %if.then55.i ], [ %conv6.i, %land.rhs.i.if.end59.i_crit_edge ], [ 1, %if.then52.i.if.end59.i_crit_edge ], [ %conv6.i, %if.end39.i.if.end59.i_crit_edge ]
  %162 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cmd_flags, align 4
  %and61.i = and i32 %163, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 13
  br i1 %cmp62.i, label %if.then64.i, label %if.end59.i.if.end69.i_crit_edge

if.end59.i.if.end69.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end59.i
  %call65.i = call zeroext i8 @sd_zbc_prepare_zone_append(ptr noundef %cmd, ptr noundef nonnull %lba.i, i32 noundef %nr_blocks.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call65.i)
  %tobool66.not.i = icmp eq i8 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then64.i.if.end69.i_crit_edge, label %if.then64.i.fail.i_crit_edge

if.then64.i.fail.i_crit_edge:                     ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.then64.i.if.end69.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i.if.end69.i_crit_edge, %if.end59.i.if.end69.i_crit_edge
  %164 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cmd_flags, align 4
  %166 = lshr i32 %165, 14
  %167 = trunc i32 %166 to i8
  %conv75.i = and i8 %167, 8
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %168 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i.i, label %if.end69.i.scsi_prot_sg_count.exit.i_crit_edge, label %cond.true.i329.i

if.end69.i.scsi_prot_sg_count.exit.i_crit_edge:   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_prot_sg_count.exit.i

cond.true.i329.i:                                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %phi.cmp.i = icmp ne i32 %171, 0
  br label %scsi_prot_sg_count.exit.i

scsi_prot_sg_count.exit.i:                        ; preds = %cond.true.i329.i, %if.end69.i.scsi_prot_sg_count.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i329.i ], [ false, %if.end69.i.scsi_prot_sg_count.exit.i_crit_edge ]
  %protection_type.i = getelementptr inbounds %struct.scsi_disk, ptr %127, i32 0, i32 33
  %172 = ptrtoint ptr %protection_type.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %protection_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %173)
  %cmp.i330.i = icmp ugt i8 %173, 3
  br i1 %cmp.i330.i, label %scsi_prot_sg_count.exit.i.scsi_host_dif_capable.exit.i_crit_edge, label %if.end.i.i

scsi_prot_sg_count.exit.i.scsi_host_dif_capable.exit.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_host_dif_capable.exit.i

if.end.i.i:                                       ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv80.i = zext i8 %173 to i32
  %174 = ptrtoint ptr %device.i111 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %device.i111, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %prot_capabilities.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %177, i32 0, i32 41
  %178 = ptrtoint ptr %prot_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %prot_capabilities.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %conv80.i
  %180 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %181 to i32
  %and.i331.i = and i32 %179, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331.i)
  %tobool.not.i332.i = icmp eq i32 %and.i331.i, 0
  %spec.select.i.i = select i1 %tobool.not.i332.i, i32 0, i32 %conv80.i
  br label %scsi_host_dif_capable.exit.i

scsi_host_dif_capable.exit.i:                     ; preds = %if.end.i.i, %scsi_prot_sg_count.exit.i.scsi_host_dif_capable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %spec.select.i.i, %if.end.i.i ], [ 0, %scsi_prot_sg_count.exit.i.scsi_host_dif_capable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool82.not.i = icmp ne i32 %retval.0.i.i, 0
  %brmerge.i = select i1 %tobool82.not.i, i1 true, i1 %cond.i.i
  br i1 %brmerge.i, label %if.end91.i, label %scsi_host_dif_capable.exit.i.if.else104.i_crit_edge

scsi_host_dif_capable.exit.i.if.else104.i_crit_edge: ; preds = %scsi_host_dif_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else104.i

if.end91.i:                                       ; preds = %scsi_host_dif_capable.exit.i
  %conv88.i = zext i1 %cond.i.i to i32
  %call89.i = call fastcc zeroext i8 @sd_setup_protect_cmnd(ptr noundef %cmd, i32 noundef %conv88.i, i32 noundef %retval.0.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call89.i)
  %tobool93.not.i = icmp eq i8 %call89.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.else104.i_crit_edge, label %land.lhs.true.i

if.end91.i.if.else104.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else104.i

land.lhs.true.i:                                  ; preds = %if.end91.i
  %phi.cast.i = zext i8 %call89.i to i32
  %182 = ptrtoint ptr %protection_type.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %protection_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %183)
  %cmp96.i = icmp eq i8 %183, 2
  br i1 %cmp96.i, label %if.then98.i, label %land.lhs.true.i.if.else104.i_crit_edge

land.lhs.true.i.if.else104.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else104.i

if.then98.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %184 = ptrtoint ptr %lba.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %lba.i, align 8
  %conv102.i = or i8 %call89.i, %conv75.i
  %call103.i = call fastcc zeroext i8 @sd_setup_rw32_cmnd(ptr noundef %cmd, i1 noundef zeroext %tobool.i.i, i64 noundef %185, i32 noundef %nr_blocks.0.i, i8 noundef zeroext %conv102.i) #17
  br label %if.end151.i

if.else104.i:                                     ; preds = %land.lhs.true.i.if.else104.i_crit_edge, %if.end91.i.if.else104.i_crit_edge, %scsi_host_dif_capable.exit.i.if.else104.i_crit_edge
  %tobool93.not363.i = phi i1 [ true, %land.lhs.true.i.if.else104.i_crit_edge ], [ false, %if.end91.i.if.else104.i_crit_edge ], [ false, %scsi_host_dif_capable.exit.i.if.else104.i_crit_edge ]
  %protect.0362.i = phi i32 [ %phi.cast.i, %land.lhs.true.i.if.else104.i_crit_edge ], [ 0, %if.end91.i.if.else104.i_crit_edge ], [ 0, %scsi_host_dif_capable.exit.i.if.else104.i_crit_edge ]
  %186 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 8)
  %bf.load105.i = load i64, ptr %changed.i, align 4
  %187 = and i64 %bf.load105.i, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %187)
  %tobool109.not.i = icmp ne i64 %187, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %nr_blocks.0.i)
  %cmp111.i = icmp ugt i32 %nr_blocks.0.i, 65535
  %or.cond.i124 = select i1 %tobool109.not.i, i1 true, i1 %cmp111.i
  br i1 %or.cond.i124, label %if.then113.i, label %if.else120.i

if.then113.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #19
  %188 = ptrtoint ptr %lba.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %lba.i, align 8
  %190 = trunc i32 %protect.0362.i to i8
  %conv118.i = or i8 %conv75.i, %190
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %191 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 16, ptr %cmd_len.i.i, align 4
  %conv.i333.i = select i1 %tobool.i.i, i8 -118, i8 -120
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %192 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cmnd.i.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv.i333.i, ptr %193, align 1
  %195 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %195, i32 1
  %196 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv118.i, ptr %arrayidx2.i.i, align 1
  %197 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %197, i32 14
  %198 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %199 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %199, i32 15
  %200 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %arrayidx6.i.i, align 1
  %201 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %201, i32 2
  %202 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 8)
  store i64 %189, ptr %arrayidx8.i.i, align 1
  %203 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %203, i32 10
  %204 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %nr_blocks.0.i, ptr %arrayidx10.i.i, align 1
  br label %if.end162.i

if.else120.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %nr_blocks.0.i)
  %cmp121.i = icmp ugt i32 %nr_blocks.0.i, 255
  br i1 %cmp121.i, label %if.else120.i.if.then135.i_crit_edge, label %lor.lhs.false123.i

if.else120.i.if.then135.i_crit_edge:              ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then135.i

lor.lhs.false123.i:                               ; preds = %if.else120.i
  %205 = ptrtoint ptr %lba.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %lba.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %206)
  %cmp124.i = icmp ugt i64 %206, 2097151
  %207 = and i64 %bf.load105.i, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %207)
  %tobool131.not.i = icmp ne i64 %207, 0
  %or.cond294.i = select i1 %cmp124.i, i1 true, i1 %tobool131.not.i
  %brmerge295.i = or i1 %tobool93.not363.i, %or.cond294.i
  br i1 %brmerge295.i, label %lor.lhs.false123.i.if.then135.i_crit_edge, label %if.else142.i

lor.lhs.false123.i.if.then135.i_crit_edge:        ; preds = %lor.lhs.false123.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then135.i

if.then135.i:                                     ; preds = %lor.lhs.false123.i.if.then135.i_crit_edge, %if.else120.i.if.then135.i_crit_edge
  %208 = ptrtoint ptr %lba.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %lba.i, align 8
  %210 = trunc i32 %protect.0362.i to i8
  %conv140.i = or i8 %conv75.i, %210
  %cmd_len.i334.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %211 = ptrtoint ptr %cmd_len.i334.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 10, ptr %cmd_len.i334.i, align 4
  %conv.i335.i = select i1 %tobool.i.i, i8 42, i8 40
  %cmnd.i336.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %212 = ptrtoint ptr %cmnd.i336.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cmnd.i336.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv.i335.i, ptr %213, align 1
  %215 = load ptr, ptr %cmnd.i336.i, align 4
  %arrayidx2.i337.i = getelementptr i8, ptr %215, i32 1
  %216 = ptrtoint ptr %arrayidx2.i337.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv140.i, ptr %arrayidx2.i337.i, align 1
  %217 = load ptr, ptr %cmnd.i336.i, align 4
  %arrayidx4.i338.i = getelementptr i8, ptr %217, i32 6
  %218 = ptrtoint ptr %arrayidx4.i338.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx4.i338.i, align 1
  %219 = load ptr, ptr %cmnd.i336.i, align 4
  %arrayidx6.i339.i = getelementptr i8, ptr %219, i32 9
  %220 = ptrtoint ptr %arrayidx6.i339.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %arrayidx6.i339.i, align 1
  %conv7.i.i = trunc i64 %209 to i32
  %221 = load ptr, ptr %cmnd.i336.i, align 4
  %arrayidx9.i.i = getelementptr i8, ptr %221, i32 2
  %222 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %conv7.i.i, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = trunc i32 %nr_blocks.0.i to i16
  %223 = load ptr, ptr %cmnd.i336.i, align 4
  %arrayidx12.i.i = getelementptr i8, ptr %223, i32 7
  %224 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  br label %if.end162.i

if.else142.i:                                     ; preds = %lor.lhs.false123.i
  call void @__sanitizer_cov_trace_pc() #19
  %call148.i = call fastcc zeroext i8 @sd_setup_rw6_cmnd(ptr noundef %cmd, i1 noundef zeroext %tobool.i.i, i64 noundef %206, i32 noundef %nr_blocks.0.i, i8 noundef zeroext %conv75.i) #17
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else142.i, %if.then98.i
  %ret.0.i = phi i8 [ %call103.i, %if.then98.i ], [ %call148.i, %if.else142.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.0.i)
  %cmp153.not.i = icmp eq i8 %ret.0.i, 0
  br i1 %cmp153.not.i, label %if.end151.i.if.end162.i_crit_edge, label %if.end151.i.fail.i_crit_edge, !prof !432

if.end151.i.fail.i_crit_edge:                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end151.i.if.end162.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.end151.i.if.end162.i_crit_edge, %if.then135.i, %if.then113.i
  %225 = ptrtoint ptr %sector_size.i.i115 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %sector_size.i.i115, align 4
  %transfersize.i125 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %227 = ptrtoint ptr %transfersize.i125 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %transfersize.i125, align 4
  %shl.i = shl i32 %nr_blocks.0.i, 9
  %underflow.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 19
  %228 = ptrtoint ptr %underflow.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %shl.i, ptr %underflow.i, align 4
  %max_retries.i126 = getelementptr inbounds %struct.scsi_disk, ptr %127, i32 0, i32 20
  %229 = ptrtoint ptr %max_retries.i126 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %max_retries.i126, align 8
  %allowed.i127 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %231 = ptrtoint ptr %allowed.i127 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %allowed.i127, align 4
  %232 = load i32, ptr %sector_size.i.i115, align 4
  %mul.i128 = mul i32 %232, %nr_blocks.0.i
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %233 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %mul.i128, ptr %length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %234 = load i32, ptr @scsi_logging_level, align 4
  %235 = and i32 %234, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp165.not.i = icmp eq i32 %235, 0
  br i1 %cmp165.not.i, label %if.end162.i.do.body180.i_crit_edge, label %do.body174.i, !prof !432

if.end162.i.do.body180.i_crit_edge:               ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body180.i

do.body174.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #19
  %236 = ptrtoint ptr %__sector.i.i114 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %__sector.i.i114, align 8
  %238 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i342.i = lshr i32 %239, 9
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %cmd, ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.sd_setup_read_write_cmnd, i64 noundef %237, i32 noundef %shr.i342.i) #17
  br label %do.body180.i

do.body180.i:                                     ; preds = %do.body174.i, %if.end162.i.do.body180.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %240 = load i32, ptr @scsi_logging_level, align 4
  %241 = and i32 %240, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %241)
  %cmp183.i = icmp ugt i32 %241, 4194304
  br i1 %cmp183.i, label %do.body192.i, label %do.body180.i.sd_setup_read_write_cmnd.exit_crit_edge, !prof !436

do.body180.i.sd_setup_read_write_cmnd.exit_crit_edge: ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_setup_read_write_cmnd.exit

do.body192.i:                                     ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #19
  %cond195.i = select i1 %tobool.i.i, ptr @.str.109, ptr @.str.110
  %242 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i344.i = lshr i32 %243, 9
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %cmd, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond195.i, i32 noundef %nr_blocks.0.i, i32 noundef %shr.i344.i) #17
  br label %sd_setup_read_write_cmnd.exit

fail.sink.split.i:                                ; preds = %if.end29.i.fail.sink.split.i_crit_edge, %if.end19.i.fail.sink.split.i_crit_edge, %lor.lhs.false.i.fail.sink.split.i_crit_edge, %if.end.i121.fail.sink.split.i_crit_edge, %if.end.i121.fail.sink.split.i_crit_edge132, %if.end.i121.fail.sink.split.i_crit_edge133
  %.str.106.sink.i = phi ptr [ @.str.104, %if.end.i121.fail.sink.split.i_crit_edge ], [ @.str.104, %if.end.i121.fail.sink.split.i_crit_edge132 ], [ @.str.104, %if.end.i121.fail.sink.split.i_crit_edge133 ], [ @.str.104, %lor.lhs.false.i.fail.sink.split.i_crit_edge ], [ @.str.105, %if.end19.i.fail.sink.split.i_crit_edge ], [ @.str.106, %if.end29.i.fail.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.53, ptr noundef %cmd, ptr noundef nonnull %.str.106.sink.i) #17
  br label %fail.i

fail.i:                                           ; preds = %fail.sink.split.i, %if.end151.i.fail.i_crit_edge, %if.then64.i.fail.i_crit_edge
  %ret.1.i = phi i8 [ %call65.i, %if.then64.i.fail.i_crit_edge ], [ %ret.0.i, %if.end151.i.fail.i_crit_edge ], [ 10, %fail.sink.split.i ]
  call void @scsi_free_sgtables(ptr noundef %cmd) #17
  br label %sd_setup_read_write_cmnd.exit

sd_setup_read_write_cmnd.exit:                    ; preds = %fail.i, %do.body192.i, %do.body180.i.sd_setup_read_write_cmnd.exit_crit_edge, %sw.bb16.sd_setup_read_write_cmnd.exit_crit_edge
  %retval.0.i129 = phi i8 [ %ret.1.i, %fail.i ], [ %call12.i, %sw.bb16.sd_setup_read_write_cmnd.exit_crit_edge ], [ 0, %do.body192.i ], [ 0, %do.body180.i.sd_setup_read_write_cmnd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lba.i) #17
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call19 = tail call zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef %cmd, i8 noundef zeroext 4, i1 noundef zeroext false) #17
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = tail call zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef %cmd, i8 noundef zeroext 4, i1 noundef zeroext true) #17
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call23 = tail call zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef %cmd, i8 noundef zeroext 3, i1 noundef zeroext false) #17
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call25 = tail call zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef %cmd, i8 noundef zeroext 1, i1 noundef zeroext false) #17
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call27 = tail call zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef %cmd, i8 noundef zeroext 2, i1 noundef zeroext false) #17
  br label %cleanup

land.end:                                         ; preds = %entry
  %.b79 = load i1, ptr @sd_init_command.__already_done, align 1
  br i1 %.b79, label %land.end.cleanup_crit_edge, label %if.then, !prof !432

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @sd_init_command.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1368, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.end.cleanup_crit_edge, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sd_setup_read_write_cmnd.exit, %sw.bb14, %if.end97.i, %sw.bb12.cleanup_crit_edge, %if.end25.i, %if.then23.i, %if.then13.i, %sw.bb10.i, %sw.bb.i, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i8 [ %call27, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %retval.0.i129, %sd_setup_read_write_cmnd.exit ], [ 0, %sw.bb14 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ 5, %sw.bb.cleanup_crit_edge ], [ 1, %if.then ], [ 1, %land.end.cleanup_crit_edge ], [ 5, %if.then13.i ], [ %call24.i, %if.then23.i ], [ %call26.i, %if.end25.i ], [ %call11.i, %sw.bb10.i ], [ %call9.i, %sw.bb.i ], [ %call100.i, %if.end97.i ], [ 5, %sw.bb12.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_uninit_command(ptr nocapture noundef %SCpnt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr i8, ptr %SCpnt, i32 -176
  %0 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags, align 8
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = getelementptr i8, ptr %SCpnt, i32 -56
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_free(ptr noundef %4, ptr noundef %5) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmnd1 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd1, align 4
  %cmd = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %cmnd1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cmnd1, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 14
  %11 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %cmd_len, align 4
  %12 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_free(ptr noundef %7, ptr noundef %12) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_done(ptr noundef %SCpnt) #4 align 64 {
entry:
  %bad_lba.i156 = alloca i64, align 8
  %bad_lba.i = alloca i64, align 8
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %sector_size2 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %sector_size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sector_size2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %8 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %SCpnt, i32 -192
  %10 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %sshdr, align 8
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i, align 8
  %cmd_flags = getelementptr i8, ptr %SCpnt, i32 -180
  %17 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %18 to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %trunc, label %sw.default [
    i8 3, label %cond.end.sw.bb_crit_edge
    i8 9, label %cond.end.sw.bb_crit_edge206
    i8 7, label %cond.end.sw.bb_crit_edge207
    i8 15, label %cond.end.sw.bb_crit_edge208
    i8 17, label %cond.end.sw.bb_crit_edge209
    i8 10, label %cond.end.sw.bb_crit_edge210
    i8 11, label %cond.end.sw.bb_crit_edge211
    i8 12, label %cond.end.sw.bb_crit_edge212
  ]

cond.end.sw.bb_crit_edge212:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge211:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge210:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge209:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge208:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge207:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge206:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

cond.end.sw.bb_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end.sw.bb_crit_edge, %cond.end.sw.bb_crit_edge206, %cond.end.sw.bb_crit_edge207, %cond.end.sw.bb_crit_edge208, %cond.end.sw.bb_crit_edge209, %cond.end.sw.bb_crit_edge210, %cond.end.sw.bb_crit_edge211, %cond.end.sw.bb_crit_edge212
  %__data_len.i = getelementptr i8, ptr %SCpnt, i32 -160
  %20 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__data_len.i, align 8
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  br i1 %tobool.not, label %sw.epilog.thread, label %sw.epilog.thread202

sw.epilog.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %resid_len.i, align 4
  br label %if.end36

sw.epilog.thread202:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %resid_len.i, align 4
  br label %if.then29

sw.default:                                       ; preds = %cond.end
  %resid_len.i151 = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %24 = ptrtoint ptr %resid_len.i151 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resid_len.i151, align 4
  %sub = add i32 %7, -1
  %and9 = and i32 %25, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %sw.default.sw.epilog_crit_edge, label %if.then11

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then11:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  %disk12 = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 3
  %26 = ptrtoint ptr %disk12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk12, align 8
  %tobool13.not = icmp eq ptr %27, null
  %device18 = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 1
  %28 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device18, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 3
  %.sink = select i1 %tobool13.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %29, ptr noundef %.sink, ptr noundef nonnull @.str.112, i32 noundef %25, i32 noundef %7) #17
  tail call void @scsi_print_command(ptr noundef %SCpnt) #17
  %length.i152 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %length.i152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i152, align 4
  %sub21 = add i32 %25, -1
  %or = or i32 %sub21, %sub
  %add = add i32 %or, 1
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %add)
  %33 = ptrtoint ptr %resid_len.i151 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %resid_len.i151, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %sw.default.sw.epilog_crit_edge
  br i1 %tobool.not, label %sw.epilog.if.end36_crit_edge, label %sw.epilog.if.then29_crit_edge

sw.epilog.if.then29_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then29:                                        ; preds = %sw.epilog.if.then29_crit_edge, %sw.epilog.thread202
  %good_bytes.0204 = phi i32 [ 0, %sw.epilog.thread202 ], [ %cond, %sw.epilog.if.then29_crit_edge ]
  %call30 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %SCpnt, ptr noundef nonnull %sshdr) #17
  br i1 %call30, label %if.then32, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sshdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %35)
  %cmp.i = icmp ult i8 %35, 112
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i = icmp eq i8 %36, 0
  %phi.cmp = or i1 %cmp.i, %tobool.i
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then29.if.end36_crit_edge, %sw.epilog.if.end36_crit_edge, %sw.epilog.thread
  %good_bytes.0201 = phi i32 [ %good_bytes.0204, %if.then32 ], [ %good_bytes.0204, %if.then29.if.end36_crit_edge ], [ %cond, %sw.epilog.if.end36_crit_edge ], [ %21, %sw.epilog.thread ]
  %sense_valid.0.shrunk = phi i1 [ %phi.cmp, %if.then32 ], [ false, %if.then29.if.end36_crit_edge ], [ false, %sw.epilog.if.end36_crit_edge ], [ false, %sw.epilog.thread ]
  %medium_access_timed_out = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 30
  %37 = ptrtoint ptr %medium_access_timed_out to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %medium_access_timed_out, align 8
  %38 = and i32 %1, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %39 = icmp eq i32 %38, 2
  %or.cond148 = select i1 %39, i1 true, i1 %sense_valid.0.shrunk
  br i1 %or.cond148, label %if.end42, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end42:                                         ; preds = %if.end36
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %8, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %41, label %if.end42.out_crit_edge [
    i8 4, label %if.end42.sw.bb44_crit_edge
    i8 3, label %if.end42.sw.bb44_crit_edge213
    i8 1, label %sw.bb46
    i8 0, label %sw.bb48
    i8 11, label %sw.bb50
    i8 5, label %sw.bb57
  ]

if.end42.sw.bb44_crit_edge213:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb44

if.end42.sw.bb44_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb44

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

sw.bb44:                                          ; preds = %if.end42.sw.bb44_crit_edge, %if.end42.sw.bb44_crit_edge213
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bad_lba.i) #17
  %45 = ptrtoint ptr %bad_lba.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %bad_lba.i, align 8, !annotation !437
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i.i, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 20
  %48 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.not.i = icmp ugt i32 %47, %49
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb44.sd_completed_bytes.exit_crit_edge

sw.bb44.sd_completed_bytes.exit_crit_edge:        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit

if.end.i:                                         ; preds = %sw.bb44
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 21
  %50 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sense_buffer.i, align 4
  %call2.i = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %51, i32 noundef 96, ptr noundef nonnull %bad_lba.i) #17
  br i1 %call2.i, label %if.end4.i, label %if.end.i.sd_completed_bytes.exit_crit_edge

if.end.i.sd_completed_bytes.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit

if.end4.i:                                        ; preds = %if.end.i
  %52 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sector_size.i, align 4
  %__sector.i.i = getelementptr i8, ptr %SCpnt, i32 -152
  %54 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %__sector.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i.i = icmp eq i32 %53, 0
  %56 = call i32 @llvm.ctlz.i32(i32 %53, i1 true) #17, !range !434
  %sub.i.op.i.i.op.i = sub nsw i32 22, %56
  %sub8.i.i = select i1 %tobool.not.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.op.i
  %sh_prom.i.i = zext i32 %sub8.i.i to i64
  %shr.i.i = lshr i64 %55, %sh_prom.i.i
  %sub.i.op.i.i44.i = xor i32 %56, 31
  %sub.i.i45.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i44.i
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 4
  %shr.i48.i = lshr i32 %58, %sub.i.i45.i
  %conv8.i.i = zext i32 %shr.i48.i to i64
  %59 = ptrtoint ptr %bad_lba.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bad_lba.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %shr.i.i)
  %cmp9.i = icmp uge i64 %60, %shr.i.i
  %add.i = add i64 %shr.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %add.i)
  %cmp10.not.i = icmp ult i64 %60, %add.i
  %or.cond.i = select i1 %cmp9.i, i1 %cmp10.not.i, i1 false
  br i1 %or.cond.i, label %if.end12.i, label %if.end4.i.sd_completed_bytes.exit_crit_edge

if.end4.i.sd_completed_bytes.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %61 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %resid_len.i.i, align 4
  %sub.i = sub i32 %58, %62
  %sub15.i = sub i64 %60, %shr.i.i
  %63 = trunc i64 %sub15.i to i32
  %conv1.i.i = mul i32 %53, %63
  %64 = call i32 @llvm.umin.i32(i32 %conv1.i.i, i32 %sub.i) #17
  br label %sd_completed_bytes.exit

sd_completed_bytes.exit:                          ; preds = %if.end12.i, %if.end4.i.sd_completed_bytes.exit_crit_edge, %if.end.i.sd_completed_bytes.exit_crit_edge, %sw.bb44.sd_completed_bytes.exit_crit_edge
  %retval.0.i154 = phi i32 [ %64, %if.end12.i ], [ 0, %sw.bb44.sd_completed_bytes.exit_crit_edge ], [ 0, %if.end.i.sd_completed_bytes.exit_crit_edge ], [ 0, %if.end4.i.sd_completed_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bad_lba.i) #17
  br label %out

sw.bb46:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %length.i155 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %length.i155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i155, align 4
  br label %out

sw.bb48:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %result1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %result1, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 21
  %68 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sense_buffer, align 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 96)
  br label %out

sw.bb50:                                          ; preds = %if.end42
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %72)
  %cmp52 = icmp eq i8 %72, 16
  br i1 %cmp52, label %if.then54, label %sw.bb50.out_crit_edge

sw.bb50.out_crit_edge:                            ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then54:                                        ; preds = %sw.bb50
  %73 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bad_lba.i156) #17
  %75 = ptrtoint ptr %bad_lba.i156 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 -1, ptr %bad_lba.i156, align 8, !annotation !437
  %length.i.i158 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %length.i.i158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length.i.i158, align 4
  %sector_size.i159 = getelementptr inbounds %struct.scsi_device, ptr %74, i32 0, i32 20
  %78 = ptrtoint ptr %sector_size.i159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sector_size.i159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.not.i160 = icmp ugt i32 %77, %79
  br i1 %cmp.not.i160, label %if.end.i163, label %if.then54.sd_completed_bytes.exit196_crit_edge

if.then54.sd_completed_bytes.exit196_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit196

if.end.i163:                                      ; preds = %if.then54
  %sense_buffer.i161 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 21
  %80 = ptrtoint ptr %sense_buffer.i161 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sense_buffer.i161, align 4
  %call2.i162 = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %81, i32 noundef 96, ptr noundef nonnull %bad_lba.i156) #17
  br i1 %call2.i162, label %if.end4.i165, label %if.end.i163.sd_completed_bytes.exit196_crit_edge

if.end.i163.sd_completed_bytes.exit196_crit_edge: ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit196

if.end4.i165:                                     ; preds = %if.end.i163
  %82 = ptrtoint ptr %sector_size.i159 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sector_size.i159, align 4
  %__sector.i.i164 = getelementptr i8, ptr %SCpnt, i32 -152
  %84 = ptrtoint ptr %__sector.i.i164 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %__sector.i.i164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i.i.i173 = icmp eq i32 %83, 0
  %86 = call i32 @llvm.ctlz.i32(i32 %83, i1 true) #17, !range !434
  %sub.i.op.i.i.op.i174 = sub nsw i32 22, %86
  %sub8.i.i175 = select i1 %tobool.not.i.i.i.i173, i32 -10, i32 %sub.i.op.i.i.op.i174
  %sh_prom.i.i176 = zext i32 %sub8.i.i175 to i64
  %shr.i.i177 = lshr i64 %85, %sh_prom.i.i176
  %sub.i.op.i.i44.i178 = xor i32 %86, 31
  %sub.i.i45.i179 = select i1 %tobool.not.i.i.i.i173, i32 -1, i32 %sub.i.op.i.i44.i178
  %87 = ptrtoint ptr %length.i.i158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length.i.i158, align 4
  %shr.i48.i183 = lshr i32 %88, %sub.i.i45.i179
  %conv8.i.i184 = zext i32 %shr.i48.i183 to i64
  %89 = ptrtoint ptr %bad_lba.i156 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %bad_lba.i156, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %shr.i.i177)
  %cmp9.i185 = icmp uge i64 %90, %shr.i.i177
  %add.i186 = add i64 %shr.i.i177, %conv8.i.i184
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %add.i186)
  %cmp10.not.i187 = icmp ult i64 %90, %add.i186
  %or.cond.i188 = select i1 %cmp9.i185, i1 %cmp10.not.i187, i1 false
  br i1 %or.cond.i188, label %if.end12.i194, label %if.end4.i165.sd_completed_bytes.exit196_crit_edge

if.end4.i165.sd_completed_bytes.exit196_crit_edge: ; preds = %if.end4.i165
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_completed_bytes.exit196

if.end12.i194:                                    ; preds = %if.end4.i165
  call void @__sanitizer_cov_trace_pc() #19
  %resid_len.i.i190 = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %91 = ptrtoint ptr %resid_len.i.i190 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %resid_len.i.i190, align 4
  %sub.i191 = sub i32 %88, %92
  %sub15.i192 = sub i64 %90, %shr.i.i177
  %93 = trunc i64 %sub15.i192 to i32
  %conv1.i.i193 = mul i32 %83, %93
  %94 = call i32 @llvm.umin.i32(i32 %conv1.i.i193, i32 %sub.i191) #17
  br label %sd_completed_bytes.exit196

sd_completed_bytes.exit196:                       ; preds = %if.end12.i194, %if.end4.i165.sd_completed_bytes.exit196_crit_edge, %if.end.i163.sd_completed_bytes.exit196_crit_edge, %if.then54.sd_completed_bytes.exit196_crit_edge
  %retval.0.i195 = phi i32 [ %94, %if.end12.i194 ], [ 0, %if.then54.sd_completed_bytes.exit196_crit_edge ], [ 0, %if.end.i163.sd_completed_bytes.exit196_crit_edge ], [ 0, %if.end4.i165.sd_completed_bytes.exit196_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bad_lba.i156) #17
  br label %out

sw.bb57:                                          ; preds = %if.end42
  %95 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %9, align 2
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %96, label %sw.bb57.out_crit_edge [
    i8 16, label %sw.bb60
    i8 32, label %sw.bb57.sw.bb62_crit_edge
    i8 36, label %sw.bb57.sw.bb62_crit_edge214
  ]

sw.bb57.sw.bb62_crit_edge214:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

sw.bb57.sw.bb62_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

sw.bb57.out_crit_edge:                            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

sw.bb60:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #19
  %call61 = call fastcc i32 @sd_completed_bytes(ptr noundef %SCpnt)
  br label %out

sw.bb62:                                          ; preds = %sw.bb57.sw.bb62_crit_edge, %sw.bb57.sw.bb62_crit_edge214
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %98 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmnd, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %101, label %sw.bb62.out_crit_edge [
    i8 66, label %sw.bb64
    i8 -109, label %sw.bb62.sw.bb65_crit_edge
    i8 65, label %sw.bb62.sw.bb65_crit_edge215
  ]

sw.bb62.sw.bb65_crit_edge215:                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb65

sw.bb62.sw.bb65_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb65

sw.bb62.out_crit_edge:                            ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

sw.bb64:                                          ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @sd_config_discard(ptr noundef %16, i32 noundef 5)
  br label %out

sw.bb65:                                          ; preds = %sw.bb62.sw.bb65_crit_edge, %sw.bb62.sw.bb65_crit_edge215
  %arrayidx67 = getelementptr i8, ptr %99, i32 1
  %103 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx67, align 1
  %105 = and i8 %104, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool70.not = icmp eq i8 %105, 0
  br i1 %tobool70.not, label %if.else72, label %if.then71

if.then71:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @sd_config_discard(ptr noundef %16, i32 noundef 5)
  br label %out

if.else72:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #19
  %device73 = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 1
  %106 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device73, align 4
  %no_write_same = getelementptr inbounds %struct.scsi_device, ptr %107, i32 0, i32 41
  %108 = ptrtoint ptr %no_write_same to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %bf.load = load i64, ptr %no_write_same, align 4
  %bf.set = or i64 %bf.load, 17592186044416
  store i64 %bf.set, ptr %no_write_same, align 4
  call fastcc void @sd_config_write_same(ptr noundef %16)
  %rq_flags = getelementptr i8, ptr %SCpnt, i32 -176
  %109 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rq_flags, align 8
  %or74 = or i32 %110, 2048
  store i32 %or74, ptr %rq_flags, align 8
  br label %out

out:                                              ; preds = %if.else72, %if.then71, %sw.bb64, %sw.bb62.out_crit_edge, %sw.bb60, %sw.bb57.out_crit_edge, %sd_completed_bytes.exit196, %sw.bb50.out_crit_edge, %sw.bb48, %sw.bb46, %sd_completed_bytes.exit, %if.end42.out_crit_edge, %if.end36.out_crit_edge
  %good_bytes.1 = phi i32 [ %good_bytes.0201, %if.end42.out_crit_edge ], [ %good_bytes.0201, %sw.bb57.out_crit_edge ], [ %good_bytes.0201, %sw.bb62.out_crit_edge ], [ %good_bytes.0201, %if.then71 ], [ %good_bytes.0201, %if.else72 ], [ %good_bytes.0201, %sw.bb64 ], [ %call61, %sw.bb60 ], [ %retval.0.i195, %sd_completed_bytes.exit196 ], [ %good_bytes.0201, %sw.bb50.out_crit_edge ], [ %good_bytes.0201, %sw.bb48 ], [ %66, %sw.bb46 ], [ %retval.0.i154, %sd_completed_bytes.exit ], [ %good_bytes.0201, %if.end36.out_crit_edge ]
  %zoned.i = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 37
  %111 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %112 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %112)
  %cmp.i197 = icmp eq i32 %112, 16384
  br i1 %cmp.i197, label %out.if.then82_crit_edge, label %sd_is_zoned.exit

out.if.then82_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then82

sd_is_zoned.exit:                                 ; preds = %out
  %device.i198 = getelementptr inbounds %struct.scsi_disk, ptr %16, i32 0, i32 1
  %113 = ptrtoint ptr %device.i198 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device.i198, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %114, i32 0, i32 22
  %115 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %116)
  %cmp1.i.not = icmp eq i8 %116, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.if.then82_crit_edge, label %sd_is_zoned.exit.do.body_crit_edge

sd_is_zoned.exit.do.body_crit_edge:               ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

sd_is_zoned.exit.if.then82_crit_edge:             ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then82

if.then82:                                        ; preds = %sd_is_zoned.exit.if.then82_crit_edge, %out.if.then82_crit_edge
  %call83 = call i32 @sd_zbc_complete(ptr noundef %SCpnt, i32 noundef %good_bytes.1, ptr noundef nonnull %sshdr) #17
  br label %do.body

do.body:                                          ; preds = %if.then82, %sd_is_zoned.exit.do.body_crit_edge
  %good_bytes.2 = phi i32 [ %call83, %if.then82 ], [ %good_bytes.1, %sd_is_zoned.exit.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %117 = load i32, ptr @scsi_logging_level, align 4
  %118 = and i32 %117, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp86.not = icmp eq i32 %118, 0
  br i1 %cmp86.not, label %do.body.do.end95_crit_edge, label %do.body91, !prof !432

do.body.do.end95_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end95

do.body91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %length.i199 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %119 = ptrtoint ptr %length.i199 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %length.i199, align 4
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %SCpnt, ptr noundef nonnull @.str.113, i32 noundef %good_bytes.2, i32 noundef %120) #17
  br label %do.end95

do.end95:                                         ; preds = %do.body91, %do.body.do.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  ret i32 %good_bytes.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_eh_action(ptr noundef %scmd, i32 noundef %eh_disp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %scmd, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 69
  %8 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdev_state.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %9, label %lor.lhs.false [
    i32 7, label %entry.cleanup_crit_edge
    i32 6, label %entry.cleanup_crit_edge36
    i32 4, label %entry.cleanup_crit_edge37
  ]

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

entry.cleanup_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %11 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmnd.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %14, label %lor.lhs.false.cleanup_crit_edge [
    i8 8, label %lor.lhs.false.lor.lhs.false5_crit_edge
    i8 40, label %lor.lhs.false.lor.lhs.false5_crit_edge38
    i8 -88, label %lor.lhs.false.lor.lhs.false5_crit_edge39
    i8 -120, label %lor.lhs.false.lor.lhs.false5_crit_edge40
    i8 53, label %lor.lhs.false.lor.lhs.false5_crit_edge41
    i8 47, label %lor.lhs.false.lor.lhs.false5_crit_edge42
    i8 -81, label %lor.lhs.false.lor.lhs.false5_crit_edge43
    i8 -113, label %lor.lhs.false.lor.lhs.false5_crit_edge44
    i8 10, label %lor.lhs.false.lor.lhs.false5_crit_edge45
    i8 42, label %lor.lhs.false.lor.lhs.false5_crit_edge46
    i8 -86, label %lor.lhs.false.lor.lhs.false5_crit_edge47
    i8 -118, label %lor.lhs.false.lor.lhs.false5_crit_edge48
    i8 65, label %lor.lhs.false.lor.lhs.false5_crit_edge49
    i8 -109, label %lor.lhs.false.lor.lhs.false5_crit_edge50
    i8 66, label %lor.lhs.false.lor.lhs.false5_crit_edge51
    i8 127, label %sw.bb1.i
  ]

lor.lhs.false.lor.lhs.false5_crit_edge51:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge50:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge49:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge48:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge47:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge46:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge45:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge44:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge43:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge42:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge41:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge40:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge39:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge38:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.lor.lhs.false5_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %lor.lhs.false
  %arrayidx3.i = getelementptr i8, ptr %12, i32 9
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %17, label %sw.bb1.i.cleanup_crit_edge [
    i8 9, label %sw.bb1.i.lor.lhs.false5_crit_edge
    i8 10, label %sw.bb1.i.lor.lhs.false5_crit_edge52
    i8 11, label %sw.bb1.i.lor.lhs.false5_crit_edge53
    i8 13, label %sw.bb1.i.lor.lhs.false5_crit_edge54
  ]

sw.bb1.i.lor.lhs.false5_crit_edge54:              ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

sw.bb1.i.lor.lhs.false5_crit_edge53:              ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

sw.bb1.i.lor.lhs.false5_crit_edge52:              ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

sw.bb1.i.lor.lhs.false5_crit_edge:                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false5

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false5:                                   ; preds = %sw.bb1.i.lor.lhs.false5_crit_edge, %sw.bb1.i.lor.lhs.false5_crit_edge52, %sw.bb1.i.lor.lhs.false5_crit_edge53, %sw.bb1.i.lor.lhs.false5_crit_edge54, %lor.lhs.false.lor.lhs.false5_crit_edge, %lor.lhs.false.lor.lhs.false5_crit_edge38, %lor.lhs.false.lor.lhs.false5_crit_edge39, %lor.lhs.false.lor.lhs.false5_crit_edge40, %lor.lhs.false.lor.lhs.false5_crit_edge41, %lor.lhs.false.lor.lhs.false5_crit_edge42, %lor.lhs.false.lor.lhs.false5_crit_edge43, %lor.lhs.false.lor.lhs.false5_crit_edge44, %lor.lhs.false.lor.lhs.false5_crit_edge45, %lor.lhs.false.lor.lhs.false5_crit_edge46, %lor.lhs.false.lor.lhs.false5_crit_edge47, %lor.lhs.false.lor.lhs.false5_crit_edge48, %lor.lhs.false.lor.lhs.false5_crit_edge49, %lor.lhs.false.lor.lhs.false5_crit_edge50, %lor.lhs.false.lor.lhs.false5_crit_edge51
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %19 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result, align 4
  %21 = and i32 %20, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %21)
  %cmp.not = icmp eq i32 %21, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %eh_disp)
  %cmp7.not = icmp eq i32 %eh_disp, 8194
  %or.cond = and i1 %cmp7.not, %cmp.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %ignore_medium_access_errors = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 37
  %22 = ptrtoint ptr %ignore_medium_access_errors to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load = load i32, ptr %ignore_medium_access_errors, align 2
  %23 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not = icmp eq i32 %23, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %medium_access_timed_out = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 30
  %24 = ptrtoint ptr %medium_access_timed_out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %medium_access_timed_out, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %medium_access_timed_out, align 8
  %bf.set = or i32 %bf.load, 2048
  %26 = ptrtoint ptr %ignore_medium_access_errors to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %bf.set, ptr %ignore_medium_access_errors, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %medium_access_timed_out14 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 30
  %27 = ptrtoint ptr %medium_access_timed_out14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %medium_access_timed_out14, align 8
  %max_medium_access_timeouts = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 29
  %29 = ptrtoint ptr %max_medium_access_timeouts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_medium_access_timeouts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp15.not = icmp ult i32 %28, %30
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.53, ptr noundef %scmd, ptr noundef nonnull @.str.114) #17
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #17
  %call17 = tail call i32 @scsi_device_set_state(ptr noundef %7, i32 noundef 6) #17
  tail call void @mutex_unlock(ptr noundef %state_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge36, %entry.cleanup_crit_edge37
  ret i32 %eh_disp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_eh_reset(ptr nocapture noundef readonly %scmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %scmd, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %ignore_medium_access_errors = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %ignore_medium_access_errors to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %ignore_medium_access_errors, align 2
  %bf.clear = and i32 %bf.load, -2049
  store i32 %bf.clear, ptr %ignore_medium_access_errors, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_disk_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_revalidate_disk(ptr noundef %disk) unnamed_addr #4 align 64 {
entry:
  %data.i136 = alloca %struct.scsi_mode_data, align 4
  %sshdr.i137 = alloca %struct.scsi_sense_hdr, align 8
  %data.i102 = alloca %struct.scsi_mode_data, align 4
  %sshdr.i103 = alloca %struct.scsi_sense_hdr, align 8
  %data.i = alloca %struct.scsi_mode_data, align 4
  %cap_str_2.i = alloca [10 x i8], align 1
  %cap_str_10.i = alloca [10 x i8], align 1
  %cmd.i = alloca [10 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %disk1 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk1, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %capacity, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %10 = load i32, ptr @scsi_logging_level, align 4
  %11 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.do.end10_crit_edge, label %do.body3, !prof !432

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %tobool5.not = icmp eq ptr %5, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %disk_name.sink = select i1 %tobool5.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.31) #17
  br label %do.end10

do.end10:                                         ; preds = %do.body3, %entry.do.end10_crit_edge
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 69
  %12 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdev_state.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %13, label %if.end14 [
    i32 7, label %do.end10.out_crit_edge
    i32 6, label %do.end10.out_crit_edge401
    i32 4, label %do.end10.out_crit_edge402
  ]

do.end10.out_crit_edge402:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end10.out_crit_edge401:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end10.out_crit_edge:                           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end14:                                         ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 512) #21
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk1, align 8
  %tobool19.not = icmp eq ptr %17, null
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  br i1 %tobool19.not, label %cond.false25, label %cond.true20

cond.true20:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name23 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %19, ptr noundef %disk_name23, ptr noundef nonnull @.str.32) #17
  br label %out

cond.false25:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %19, ptr noundef null, ptr noundef nonnull @.str.32) #17
  br label %out

if.end28:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd.i) #17
  %20 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 1
  %21 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 2
  %22 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #17
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %media_present.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %max_retries.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %sshdr.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs159.i.do.body.i_crit_edge, %if.end28
  %sense_valid.0.i = phi i32 [ 0, %if.end28 ], [ %spec.select.lcssa.i, %land.rhs159.i.do.body.i_crit_edge ]
  %tobool30.not.i = phi i1 [ true, %if.end28 ], [ false, %land.rhs159.i.do.body.i_crit_edge ]
  %spintime_expire.0.i = phi i32 [ 0, %if.end28 ], [ %spintime_expire.3.i, %land.rhs159.i.do.body.i_crit_edge ]
  %27 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %media_present.i, align 4
  %29 = call ptr @memset(ptr %cmd.i, i32 0, i32 10)
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %32 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_retries.i, align 8
  %call.i.i = call i32 @__scsi_execute(ptr noundef %31, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef %33, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %34 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sshdr.i, align 8
  %36 = and i8 %35, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %36)
  %cmp.i.i.i = icmp eq i8 %36, 112
  br i1 %cmp.i.i.i, label %if.end.i.i, label %do.body.i.if.end12.i_crit_edge

do.body.i.if.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.end.i.i:                                       ; preds = %do.body.i
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %23, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %38, label %if.end.i.i.if.end12.i_crit_edge [
    i8 6, label %if.end.i.i.sw.bb.i.i_crit_edge
    i8 2, label %if.end.i.i.sw.bb.i.i_crit_edge403
  ]

if.end.i.i.sw.bb.i.i_crit_edge403:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i

if.end.i.i.if.end12.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge403
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 58
  br i1 %cmp.i.i, label %sw.bb.i.i.if.then3.i.i_crit_edge, label %sw.bb.i.i.if.end12.i_crit_edge

sw.bb.i.i.if.end12.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

sw.bb.i.i.if.then3.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %sw.bb.i.2.i.if.then3.i.i_crit_edge, %sw.bb.i.1.i.if.then3.i.i_crit_edge, %sw.bb.i.i.if.then3.i.i_crit_edge
  %.lcssa.i = phi i8 [ %28, %sw.bb.i.i.if.then3.i.i_crit_edge ], [ %62, %sw.bb.i.1.i.if.then3.i.i_crit_edge ], [ %84, %sw.bb.i.2.i.if.then3.i.i_crit_edge ]
  %42 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %media_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i7.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i7.i.i, label %if.then3.i.i.if.end.i8.i.i_crit_edge, label %if.then.i.i.i

if.then3.i.i.if.end.i8.i.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i8.i.i

if.then.i.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %changed.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 41
  %46 = ptrtoint ptr %changed.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load.i.i.i = load i64, ptr %changed.i.i.i, align 4
  %bf.set.i.i.i = or i64 %bf.load.i.i.i, 4611686018427387904
  store i64 %bf.set.i.i.i, ptr %changed.i.i.i, align 4
  br label %if.end.i8.i.i

if.end.i8.i.i:                                    ; preds = %if.then.i.i.i, %if.then3.i.i.if.end.i8.i.i_crit_edge
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %removable.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 41
  %49 = ptrtoint ptr %removable.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load2.i.i.i = load i64, ptr %removable.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i.i.i)
  %tobool3.not.i.i.i = icmp sgt i64 %bf.load2.i.i.i, -1
  br i1 %tobool3.not.i.i.i, label %if.end.i8.i.i.if.then.i_crit_edge, label %if.then4.i.i.i

if.end.i8.i.i.if.then.i_crit_edge:                ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then4.i.i.i:                                   ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %media_present.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %media_present.i, align 4
  %51 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %capacity, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then4.i.i.i, %if.end.i8.i.i.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa.i)
  %tobool.not.i = icmp eq i8 %.lcssa.i, 0
  br i1 %tobool.not.i, label %if.then.i.sd_spinup_disk.exit_crit_edge, label %if.then6.i

if.then.i.sd_spinup_disk.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.then6.i:                                       ; preds = %if.then.i
  %52 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disk1, align 8
  %tobool7.not.i = icmp eq ptr %53, null
  br i1 %tobool7.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %48, ptr noundef %disk_name.i, ptr noundef nonnull @.str.33) #17
  br label %sd_spinup_disk.exit

cond.false.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %48, ptr noundef null, ptr noundef nonnull @.str.33) #17
  br label %sd_spinup_disk.exit

if.end12.i:                                       ; preds = %sw.bb.i.i.if.end12.i_crit_edge, %if.end.i.i.if.end12.i_crit_edge, %do.body.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  %conv.i = zext i1 %cmp.i.i.i to i32
  %spec.select.i = select i1 %tobool13.not.i, i32 %sense_valid.0.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i234.i = icmp slt i32 %call.i.i, 0
  %54 = and i32 %call.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %54)
  %cmp1.i.i = icmp eq i32 %54, 65536
  %or.cond.i.i = or i1 %cmp.i234.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end12.i.do.body1.backedge.i_crit_edge, label %if.end3.i.i

if.end12.i.do.body1.backedge.i_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.i

if.end3.i.i:                                      ; preds = %if.end12.i
  %55 = trunc i32 %call.i.i to i8
  %trunc.i.i = and i8 %55, -2
  %56 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %trunc.i.i, label %if.end3.i.i.do.body1.backedge.i_crit_edge [
    i8 0, label %if.end3.i.i.lor.rhs.i_crit_edge
    i8 4, label %if.end3.i.i.lor.rhs.i_crit_edge404
    i8 16, label %if.end3.i.i.lor.rhs.i_crit_edge405
    i8 20, label %if.end3.i.i.lor.rhs.i_crit_edge406
    i8 34, label %if.end3.i.i.lor.rhs.i_crit_edge407
  ]

if.end3.i.i.lor.rhs.i_crit_edge407:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.i

if.end3.i.i.lor.rhs.i_crit_edge406:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.i

if.end3.i.i.lor.rhs.i_crit_edge405:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.i

if.end3.i.i.lor.rhs.i_crit_edge404:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.i

if.end3.i.i.lor.rhs.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.i

if.end3.i.i.do.body1.backedge.i_crit_edge:        ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.i

lor.rhs.i:                                        ; preds = %if.end3.i.i.lor.rhs.i_crit_edge, %if.end3.i.i.lor.rhs.i_crit_edge404, %if.end3.i.i.lor.rhs.i_crit_edge405, %if.end3.i.i.lor.rhs.i_crit_edge406, %if.end3.i.i.lor.rhs.i_crit_edge407
  %57 = and i32 %call.i.i, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %58 = icmp ne i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool21.not.i = icmp eq i32 %spec.select.i, 0
  %or.cond.i = select i1 %58, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %lor.rhs.i.do.end.i_crit_edge, label %land.rhs22.i

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs22.i:                                     ; preds = %lor.rhs.i
  %59 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %60)
  %cmp24.i = icmp eq i8 %60, 6
  br i1 %cmp24.i, label %land.rhs22.i.do.body1.backedge.i_crit_edge, label %land.rhs22.i.do.end.i_crit_edge

land.rhs22.i.do.end.i_crit_edge:                  ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs22.i.do.body1.backedge.i_crit_edge:       ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.i

do.body1.backedge.i:                              ; preds = %land.rhs22.i.do.body1.backedge.i_crit_edge, %if.end3.i.i.do.body1.backedge.i_crit_edge, %if.end12.i.do.body1.backedge.i_crit_edge
  %sense_valid.1.be.i = phi i32 [ 1, %land.rhs22.i.do.body1.backedge.i_crit_edge ], [ %spec.select.i, %if.end3.i.i.do.body1.backedge.i_crit_edge ], [ %spec.select.i, %if.end12.i.do.body1.backedge.i_crit_edge ]
  %61 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %media_present.i, align 4
  %63 = call ptr @memset(ptr %cmd.i, i32 0, i32 10)
  %64 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device, align 4
  %66 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_retries.i, align 8
  %call.i.1.i = call i32 @__scsi_execute(ptr noundef %65, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef %67, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %68 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sshdr.i, align 8
  %70 = and i8 %69, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %70)
  %cmp.i.i.1.i = icmp eq i8 %70, 112
  br i1 %cmp.i.i.1.i, label %if.end.i.1.i, label %do.body1.backedge.i.if.end12.1.i_crit_edge

do.body1.backedge.i.if.end12.1.i_crit_edge:       ; preds = %do.body1.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.1.i

if.end.i.1.i:                                     ; preds = %do.body1.backedge.i
  %71 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %23, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %72, label %if.end.i.1.i.if.end12.1.i_crit_edge [
    i8 6, label %if.end.i.1.i.sw.bb.i.1.i_crit_edge
    i8 2, label %if.end.i.1.i.sw.bb.i.1.i_crit_edge408
  ]

if.end.i.1.i.sw.bb.i.1.i_crit_edge408:            ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i

if.end.i.1.i.sw.bb.i.1.i_crit_edge:               ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i

if.end.i.1.i.if.end12.1.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.1.i

sw.bb.i.1.i:                                      ; preds = %if.end.i.1.i.sw.bb.i.1.i_crit_edge, %if.end.i.1.i.sw.bb.i.1.i_crit_edge408
  %74 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %75)
  %cmp.i.1.i = icmp eq i8 %75, 58
  br i1 %cmp.i.1.i, label %sw.bb.i.1.i.if.then3.i.i_crit_edge, label %sw.bb.i.1.i.if.end12.1.i_crit_edge

sw.bb.i.1.i.if.end12.1.i_crit_edge:               ; preds = %sw.bb.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.1.i

sw.bb.i.1.i.if.then3.i.i_crit_edge:               ; preds = %sw.bb.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3.i.i

if.end12.1.i:                                     ; preds = %sw.bb.i.1.i.if.end12.1.i_crit_edge, %if.end.i.1.i.if.end12.1.i_crit_edge, %do.body1.backedge.i.if.end12.1.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool13.not.1.i = icmp eq i32 %call.i.1.i, 0
  %conv.1.i = zext i1 %cmp.i.i.1.i to i32
  %spec.select.1.i = select i1 %tobool13.not.1.i, i32 %sense_valid.1.be.i, i32 %conv.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i234.1.i = icmp slt i32 %call.i.1.i, 0
  %76 = and i32 %call.i.1.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %76)
  %cmp1.i.1.i = icmp eq i32 %76, 65536
  %or.cond.i.1.i = or i1 %cmp.i234.1.i, %cmp1.i.1.i
  br i1 %or.cond.i.1.i, label %if.end12.1.i.do.body1.backedge.1.i_crit_edge, label %if.end3.i.1.i

if.end12.1.i.do.body1.backedge.1.i_crit_edge:     ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.1.i

if.end3.i.1.i:                                    ; preds = %if.end12.1.i
  %77 = trunc i32 %call.i.1.i to i8
  %trunc.i.1.i = and i8 %77, -2
  %78 = zext i8 %trunc.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %trunc.i.1.i, label %if.end3.i.1.i.do.body1.backedge.1.i_crit_edge [
    i8 0, label %if.end3.i.1.i.lor.rhs.1.i_crit_edge
    i8 4, label %if.end3.i.1.i.lor.rhs.1.i_crit_edge409
    i8 16, label %if.end3.i.1.i.lor.rhs.1.i_crit_edge410
    i8 20, label %if.end3.i.1.i.lor.rhs.1.i_crit_edge411
    i8 34, label %if.end3.i.1.i.lor.rhs.1.i_crit_edge412
  ]

if.end3.i.1.i.lor.rhs.1.i_crit_edge412:           ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.1.i

if.end3.i.1.i.lor.rhs.1.i_crit_edge411:           ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.1.i

if.end3.i.1.i.lor.rhs.1.i_crit_edge410:           ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.1.i

if.end3.i.1.i.lor.rhs.1.i_crit_edge409:           ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.1.i

if.end3.i.1.i.lor.rhs.1.i_crit_edge:              ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.rhs.1.i

if.end3.i.1.i.do.body1.backedge.1.i_crit_edge:    ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.1.i

lor.rhs.1.i:                                      ; preds = %if.end3.i.1.i.lor.rhs.1.i_crit_edge, %if.end3.i.1.i.lor.rhs.1.i_crit_edge409, %if.end3.i.1.i.lor.rhs.1.i_crit_edge410, %if.end3.i.1.i.lor.rhs.1.i_crit_edge411, %if.end3.i.1.i.lor.rhs.1.i_crit_edge412
  %79 = and i32 %call.i.1.i, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %80 = icmp ne i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.1.i)
  %tobool21.not.1.i = icmp eq i32 %spec.select.1.i, 0
  %or.cond.1.i = select i1 %80, i1 true, i1 %tobool21.not.1.i
  br i1 %or.cond.1.i, label %lor.rhs.1.i.do.end.i_crit_edge, label %land.rhs22.1.i

lor.rhs.1.i.do.end.i_crit_edge:                   ; preds = %lor.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs22.1.i:                                   ; preds = %lor.rhs.1.i
  %81 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %82)
  %cmp24.1.i = icmp eq i8 %82, 6
  br i1 %cmp24.1.i, label %land.rhs22.1.i.do.body1.backedge.1.i_crit_edge, label %land.rhs22.1.i.do.end.i_crit_edge

land.rhs22.1.i.do.end.i_crit_edge:                ; preds = %land.rhs22.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs22.1.i.do.body1.backedge.1.i_crit_edge:   ; preds = %land.rhs22.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.backedge.1.i

do.body1.backedge.1.i:                            ; preds = %land.rhs22.1.i.do.body1.backedge.1.i_crit_edge, %if.end3.i.1.i.do.body1.backedge.1.i_crit_edge, %if.end12.1.i.do.body1.backedge.1.i_crit_edge
  %sense_valid.1.be.1.i = phi i32 [ 1, %land.rhs22.1.i.do.body1.backedge.1.i_crit_edge ], [ %spec.select.1.i, %if.end3.i.1.i.do.body1.backedge.1.i_crit_edge ], [ %spec.select.1.i, %if.end12.1.i.do.body1.backedge.1.i_crit_edge ]
  %83 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %media_present.i, align 4
  %85 = call ptr @memset(ptr %cmd.i, i32 0, i32 10)
  %86 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device, align 4
  %88 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_retries.i, align 8
  %call.i.2.i = call i32 @__scsi_execute(ptr noundef %87, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef %89, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %90 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sshdr.i, align 8
  %92 = and i8 %91, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %92)
  %cmp.i.i.2.i = icmp eq i8 %92, 112
  br i1 %cmp.i.i.2.i, label %if.end.i.2.i, label %do.body1.backedge.1.i.if.end12.2.i_crit_edge

do.body1.backedge.1.i.if.end12.2.i_crit_edge:     ; preds = %do.body1.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.2.i

if.end.i.2.i:                                     ; preds = %do.body1.backedge.1.i
  %93 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %23, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %94, label %if.end.i.2.i.if.end12.2.i_crit_edge [
    i8 6, label %if.end.i.2.i.sw.bb.i.2.i_crit_edge
    i8 2, label %if.end.i.2.i.sw.bb.i.2.i_crit_edge413
  ]

if.end.i.2.i.sw.bb.i.2.i_crit_edge413:            ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i

if.end.i.2.i.sw.bb.i.2.i_crit_edge:               ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i

if.end.i.2.i.if.end12.2.i_crit_edge:              ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.2.i

sw.bb.i.2.i:                                      ; preds = %if.end.i.2.i.sw.bb.i.2.i_crit_edge, %if.end.i.2.i.sw.bb.i.2.i_crit_edge413
  %96 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %97)
  %cmp.i.2.i = icmp eq i8 %97, 58
  br i1 %cmp.i.2.i, label %sw.bb.i.2.i.if.then3.i.i_crit_edge, label %sw.bb.i.2.i.if.end12.2.i_crit_edge

sw.bb.i.2.i.if.end12.2.i_crit_edge:               ; preds = %sw.bb.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.2.i

sw.bb.i.2.i.if.then3.i.i_crit_edge:               ; preds = %sw.bb.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3.i.i

if.end12.2.i:                                     ; preds = %sw.bb.i.2.i.if.end12.2.i_crit_edge, %if.end.i.2.i.if.end12.2.i_crit_edge, %do.body1.backedge.1.i.if.end12.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool13.not.2.i = icmp eq i32 %call.i.2.i, 0
  %conv.2.i = zext i1 %cmp.i.i.2.i to i32
  %spec.select.2.i = select i1 %tobool13.not.2.i, i32 %sense_valid.1.be.1.i, i32 %conv.2.i
  br label %do.end.i

do.end.i:                                         ; preds = %if.end12.2.i, %land.rhs22.1.i.do.end.i_crit_edge, %lor.rhs.1.i.do.end.i_crit_edge, %land.rhs22.i.do.end.i_crit_edge, %lor.rhs.i.do.end.i_crit_edge
  %spec.select.lcssa.i = phi i32 [ %spec.select.i, %lor.rhs.i.do.end.i_crit_edge ], [ %spec.select.i, %land.rhs22.i.do.end.i_crit_edge ], [ %spec.select.1.i, %lor.rhs.1.i.do.end.i_crit_edge ], [ %spec.select.1.i, %land.rhs22.1.i.do.end.i_crit_edge ], [ %spec.select.2.i, %if.end12.2.i ]
  %call.i.lcssa283.i = phi i32 [ %call.i.i, %lor.rhs.i.do.end.i_crit_edge ], [ %call.i.i, %land.rhs22.i.do.end.i_crit_edge ], [ %call.i.1.i, %lor.rhs.1.i.do.end.i_crit_edge ], [ %call.i.1.i, %land.rhs22.1.i.do.end.i_crit_edge ], [ %call.i.2.i, %if.end12.2.i ]
  %98 = and i32 %call.i.lcssa283.i, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %.not.i = icmp eq i32 %98, 2
  br i1 %.not.i, label %if.end35.i, label %if.then29.i

if.then29.i:                                      ; preds = %do.end.i
  br i1 %tobool30.not.i, label %land.lhs.true31.i, label %if.then29.i.if.then165.i_crit_edge

if.then29.i.if.then165.i_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then165.i

land.lhs.true31.i:                                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa283.i)
  %cmp.i299 = icmp slt i32 %call.i.lcssa283.i, 0
  %99 = and i32 %call.i.lcssa283.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %99)
  %cmp1.i = icmp eq i32 %99, 65536
  %or.cond.i300 = or i1 %cmp.i299, %cmp1.i
  br i1 %or.cond.i300, label %land.lhs.true31.i.if.then33.i_crit_edge, label %if.end3.i302

land.lhs.true31.i.if.then33.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33.i

if.end3.i302:                                     ; preds = %land.lhs.true31.i
  %100 = trunc i32 %call.i.lcssa283.i to i8
  %trunc.i301 = and i8 %100, -2
  %101 = zext i8 %trunc.i301 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %trunc.i301, label %if.end3.i302.if.then33.i_crit_edge [
    i8 0, label %if.end3.i302.sd_spinup_disk.exit_crit_edge
    i8 4, label %if.end3.i302.sd_spinup_disk.exit_crit_edge414
    i8 16, label %if.end3.i302.sd_spinup_disk.exit_crit_edge415
    i8 20, label %if.end3.i302.sd_spinup_disk.exit_crit_edge416
    i8 34, label %if.end3.i302.sd_spinup_disk.exit_crit_edge417
  ]

if.end3.i302.sd_spinup_disk.exit_crit_edge417:    ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.end3.i302.sd_spinup_disk.exit_crit_edge416:    ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.end3.i302.sd_spinup_disk.exit_crit_edge415:    ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.end3.i302.sd_spinup_disk.exit_crit_edge414:    ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.end3.i302.sd_spinup_disk.exit_crit_edge:       ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.end3.i302.if.then33.i_crit_edge:               ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end3.i302.if.then33.i_crit_edge, %land.lhs.true31.i.if.then33.i_crit_edge
  call void @sd_print_result(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call.i.lcssa283.i) #17
  br label %sd_spinup_disk.exit

if.end35.i:                                       ; preds = %do.end.i
  %102 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device, align 4
  %no_start_on_add.i = getelementptr inbounds %struct.scsi_device, ptr %103, i32 0, i32 41
  %104 = ptrtoint ptr %no_start_on_add.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %bf.load.i = load i64, ptr %no_start_on_add.i, align 4
  %105 = and i64 %bf.load.i, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %105)
  %tobool37.not.i = icmp eq i64 %105, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.do.end163.i_crit_edge

if.end35.i.do.end163.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163.i

if.end39.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.lcssa.i)
  %tobool40.not.i = icmp eq i32 %spec.select.lcssa.i, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.else141.i_crit_edge, label %land.lhs.true41.i

if.end39.i.if.else141.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else141.i

land.lhs.true41.i:                                ; preds = %if.end39.i
  %106 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %23, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %107, label %land.lhs.true41.i.if.else141.i_crit_edge [
    i8 2, label %if.then46.i
    i8 6, label %land.lhs.true131.i
  ]

land.lhs.true41.i.if.else141.i_crit_edge:         ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else141.i

if.then46.i:                                      ; preds = %land.lhs.true41.i
  %109 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %110)
  %cmp48.i = icmp eq i8 %110, 4
  br i1 %cmp48.i, label %land.lhs.true50.i, label %if.then46.i.if.end88.i_crit_edge

if.then46.i.if.end88.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88.i

land.lhs.true50.i:                                ; preds = %if.then46.i
  %111 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %25, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %112, label %land.lhs.true50.i.if.end88.i_crit_edge [
    i8 3, label %land.lhs.true50.i.do.end163.i_crit_edge
    i8 11, label %land.lhs.true50.i.do.end163.i_crit_edge418
    i8 12, label %land.lhs.true50.i.do.end163.i_crit_edge419
    i8 27, label %land.lhs.true50.i.do.end163.i_crit_edge420
  ]

land.lhs.true50.i.do.end163.i_crit_edge420:       ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163.i

land.lhs.true50.i.do.end163.i_crit_edge419:       ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163.i

land.lhs.true50.i.do.end163.i_crit_edge418:       ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163.i

land.lhs.true50.i.do.end163.i_crit_edge:          ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163.i

land.lhs.true50.i.if.end88.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88.i

if.end88.i:                                       ; preds = %land.lhs.true50.i.if.end88.i_crit_edge, %if.then46.i.if.end88.i_crit_edge
  br i1 %tobool30.not.i, label %if.then90.i, label %if.end88.i.if.end120.i_crit_edge

if.end88.i.if.end120.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120.i

if.then90.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #19
  %114 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %disk1, align 8
  %tobool92.not.i = icmp eq ptr %115, null
  %disk_name96.i = getelementptr inbounds %struct.gendisk, ptr %115, i32 0, i32 3
  %.sink.i = select i1 %tobool92.not.i, ptr null, ptr %disk_name96.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %103, ptr noundef %.sink.i, ptr noundef nonnull @.str.35) #17
  %116 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 27, ptr %cmd.i, align 1
  %117 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %20, align 1
  %118 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 1099511627776, ptr %21, align 1
  %119 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device, align 4
  %start_stop_pwr_cond.i = getelementptr inbounds %struct.scsi_device, ptr %120, i32 0, i32 41
  %121 = ptrtoint ptr %start_stop_pwr_cond.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %bf.load106.i = load i64, ptr %start_stop_pwr_cond.i, align 4
  %122 = and i64 %bf.load106.i, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool110.not.i = icmp eq i64 %122, 0
  %spec.store.select.i = select i1 %tobool110.not.i, i8 1, i8 17
  %123 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %spec.store.select.i, ptr %22, align 1
  %124 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %max_retries.i, align 8
  %call.i238.i = call i32 @__scsi_execute(ptr noundef %120, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef %125, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %126, 10000
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then90.i, %if.end88.i.if.end120.i_crit_edge
  %spintime_expire.1.i = phi i32 [ %spintime_expire.0.i, %if.end88.i.if.end120.i_crit_edge ], [ %add.i, %if.then90.i ]
  call void @msleep(i32 noundef 1000) #17
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #20
  br label %land.rhs159.i

land.lhs.true131.i:                               ; preds = %land.lhs.true41.i
  %127 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %128)
  %cmp134.i = icmp eq i8 %128, 40
  br i1 %cmp134.i, label %if.then136.i, label %land.lhs.true131.i.if.else141.i_crit_edge

land.lhs.true131.i.if.else141.i_crit_edge:        ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else141.i

if.then136.i:                                     ; preds = %land.lhs.true131.i
  br i1 %tobool30.not.i, label %if.then138.i, label %if.then136.i.if.end140.i_crit_edge

if.then136.i.if.end140.i_crit_edge:               ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end140.i

if.then138.i:                                     ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %add139.i = add i32 %129, 500
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then138.i, %if.then136.i.if.end140.i_crit_edge
  %spintime_expire.2.i = phi i32 [ %spintime_expire.0.i, %if.then136.i.if.end140.i_crit_edge ], [ %add139.i, %if.then138.i ]
  call void @msleep(i32 noundef 1000) #17
  br label %land.rhs159.i

if.else141.i:                                     ; preds = %land.lhs.true131.i.if.else141.i_crit_edge, %land.lhs.true41.i.if.else141.i_crit_edge, %if.end39.i.if.else141.i_crit_edge
  br i1 %tobool30.not.i, label %if.then143.i, label %if.else141.i.if.then165.i_crit_edge

if.else141.i.if.then165.i_crit_edge:              ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then165.i

if.then143.i:                                     ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %disk1, align 8
  %tobool145.not.i = icmp eq ptr %131, null
  %disk_name149.i = getelementptr inbounds %struct.gendisk, ptr %131, i32 0, i32 3
  %.sink307.i = select i1 %tobool145.not.i, ptr null, ptr %disk_name149.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %103, ptr noundef %.sink307.i, ptr noundef nonnull @.str.38) #17
  %132 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device, align 4
  %134 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %disk1, align 8
  %tobool.not.i.i = icmp eq ptr %135, null
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %135, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %disk_name.i.i
  call void @scsi_print_sense_hdr(ptr noundef %133, ptr noundef %spec.select.i.i, ptr noundef nonnull %sshdr.i) #17
  br label %sd_spinup_disk.exit

land.rhs159.i:                                    ; preds = %if.end140.i, %if.end120.i
  %spintime_expire.3.i = phi i32 [ %spintime_expire.1.i, %if.end120.i ], [ %spintime_expire.2.i, %if.end140.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %spintime_expire.3.i, %136
  %cmp160.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp160.i, label %land.rhs159.i.do.body.i_crit_edge, label %land.rhs159.i.if.then165.i_crit_edge

land.rhs159.i.if.then165.i_crit_edge:             ; preds = %land.rhs159.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then165.i

land.rhs159.i.do.body.i_crit_edge:                ; preds = %land.rhs159.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

do.end163.i:                                      ; preds = %land.lhs.true50.i.do.end163.i_crit_edge, %land.lhs.true50.i.do.end163.i_crit_edge418, %land.lhs.true50.i.do.end163.i_crit_edge419, %land.lhs.true50.i.do.end163.i_crit_edge420, %if.end35.i.do.end163.i_crit_edge
  br i1 %tobool30.not.i, label %do.end163.i.sd_spinup_disk.exit_crit_edge, label %do.end163.i.if.then165.i_crit_edge

do.end163.i.if.then165.i_crit_edge:               ; preds = %do.end163.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then165.i

do.end163.i.sd_spinup_disk.exit_crit_edge:        ; preds = %do.end163.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_spinup_disk.exit

if.then165.i:                                     ; preds = %do.end163.i.if.then165.i_crit_edge, %land.rhs159.i.if.then165.i_crit_edge, %if.else141.i.if.then165.i_crit_edge, %if.then29.i.if.then165.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa283.i)
  %cmp.i239.i = icmp slt i32 %call.i.lcssa283.i, 0
  %137 = and i32 %call.i.lcssa283.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %137)
  %cmp1.i240.i = icmp eq i32 %137, 65536
  %or.cond.i241.i = or i1 %cmp.i239.i, %cmp1.i240.i
  br i1 %or.cond.i241.i, label %if.then165.i.do.end176.i_crit_edge, label %if.end3.i243.i

if.then165.i.do.end176.i_crit_edge:               ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end176.i

if.end3.i243.i:                                   ; preds = %if.then165.i
  %138 = trunc i32 %call.i.lcssa283.i to i8
  %trunc.i242.i = and i8 %138, -2
  %139 = zext i8 %trunc.i242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %trunc.i242.i, label %if.end3.i243.i.do.end176.i_crit_edge [
    i8 0, label %if.end3.i243.i.do.end170.i_crit_edge
    i8 4, label %if.end3.i243.i.do.end170.i_crit_edge421
    i8 16, label %if.end3.i243.i.do.end170.i_crit_edge422
    i8 20, label %if.end3.i243.i.do.end170.i_crit_edge423
    i8 34, label %if.end3.i243.i.do.end170.i_crit_edge424
  ]

if.end3.i243.i.do.end170.i_crit_edge424:          ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end170.i

if.end3.i243.i.do.end170.i_crit_edge423:          ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end170.i

if.end3.i243.i.do.end170.i_crit_edge422:          ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end170.i

if.end3.i243.i.do.end170.i_crit_edge421:          ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end170.i

if.end3.i243.i.do.end170.i_crit_edge:             ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end170.i

if.end3.i243.i.do.end176.i_crit_edge:             ; preds = %if.end3.i243.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end176.i

do.end170.i:                                      ; preds = %if.end3.i243.i.do.end170.i_crit_edge, %if.end3.i243.i.do.end170.i_crit_edge421, %if.end3.i243.i.do.end170.i_crit_edge422, %if.end3.i243.i.do.end170.i_crit_edge423, %if.end3.i243.i.do.end170.i_crit_edge424
  %call172.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #20
  br label %sd_spinup_disk.exit

do.end176.i:                                      ; preds = %if.end3.i243.i.do.end176.i_crit_edge, %if.then165.i.do.end176.i_crit_edge
  %call178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #20
  br label %sd_spinup_disk.exit

sd_spinup_disk.exit:                              ; preds = %do.end176.i, %do.end170.i, %do.end163.i.sd_spinup_disk.exit_crit_edge, %if.then143.i, %if.then33.i, %if.end3.i302.sd_spinup_disk.exit_crit_edge, %if.end3.i302.sd_spinup_disk.exit_crit_edge414, %if.end3.i302.sd_spinup_disk.exit_crit_edge415, %if.end3.i302.sd_spinup_disk.exit_crit_edge416, %if.end3.i302.sd_spinup_disk.exit_crit_edge417, %cond.false.i, %cond.true.i, %if.then.i.sd_spinup_disk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #17
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #17
  %140 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %media_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool29.not = icmp eq i8 %141, 0
  br i1 %tobool29.not, label %sd_spinup_disk.exit.if.end36_crit_edge, label %if.then30

sd_spinup_disk.exit.if.end36_crit_edge:           ; preds = %sd_spinup_disk.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then30:                                        ; preds = %sd_spinup_disk.exit
  %142 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 8
  %max_cmd_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %145, i32 0, i32 24
  %146 = ptrtoint ptr %max_cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %max_cmd_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %147)
  %cmp.i.i4 = icmp ult i16 %147, 16
  br i1 %cmp.i.i4, label %if.then30.if.else.i_crit_edge, label %if.end.i.i6

if.then30.if.else.i_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.end.i.i6:                                      ; preds = %if.then30
  %try_rc_10_first.i.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 41
  %148 = ptrtoint ptr %try_rc_10_first.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %bf.load.i.i = load i64, ptr %try_rc_10_first.i.i, align 4
  %149 = and i64 %bf.load.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %149)
  %tobool.not.i.i5 = icmp eq i64 %149, 0
  br i1 %tobool.not.i.i5, label %if.end3.i.i7, label %if.end.i.i6.if.else.i_crit_edge

if.end.i.i6.if.else.i_crit_edge:                  ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.end3.i.i7:                                     ; preds = %if.end.i.i6
  %scsi_level.i.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 23
  %150 = ptrtoint ptr %scsi_level.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %scsi_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %151)
  %cmp5.i.i = icmp ugt i8 %151, 5
  br i1 %cmp5.i.i, label %if.end3.i.i7.if.then.i10_crit_edge, label %if.end8.i.i

if.end3.i.i7.if.then.i10_crit_edge:               ; preds = %if.end3.i.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i10

if.end8.i.i:                                      ; preds = %if.end3.i.i7
  %152 = and i64 %bf.load.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool.not.i.i.i = icmp eq i64 %152, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %151)
  %cmp.i.i.i8 = icmp ugt i8 %151, 3
  %or.cond.i.i9 = select i1 %tobool.not.i.i.i, i1 %cmp.i.i.i8, i1 false
  br i1 %or.cond.i.i9, label %scsi_device_protection.exit.i.i, label %if.end8.i.i.if.else.i_crit_edge

if.end8.i.i.if.else.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

scsi_device_protection.exit.i.i:                  ; preds = %if.end8.i.i
  %inquiry.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 29
  %153 = ptrtoint ptr %inquiry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %inquiry.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %154, i32 5
  %155 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i.i.i, align 1
  %157 = and i8 %156, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool9.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool9.not.i.i, label %scsi_device_protection.exit.i.i.if.else.i_crit_edge, label %scsi_device_protection.exit.i.i.if.then.i10_crit_edge

scsi_device_protection.exit.i.i.if.then.i10_crit_edge: ; preds = %scsi_device_protection.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i10

scsi_device_protection.exit.i.i.if.else.i_crit_edge: ; preds = %scsi_device_protection.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.i10:                                      ; preds = %scsi_device_protection.exit.i.i.if.then.i10_crit_edge, %if.end3.i.i7.if.then.i10_crit_edge
  %call1.i = call fastcc i32 @read_capacity_16(ptr noundef %1, ptr noundef %143, ptr noundef %call7.i) #17
  %158 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call1.i, label %if.end5.i [
    i32 -75, label %if.then.i10.if.end80.i_crit_edge
    i32 -19, label %if.then.i10.sd_read_capacity.exit_crit_edge
  ]

if.then.i10.sd_read_capacity.exit_crit_edge:      ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_capacity.exit

if.then.i10.if.end80.i_crit_edge:                 ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80.i

if.end5.i:                                        ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp6.i = icmp slt i32 %call1.i, 0
  br i1 %cmp6.i, label %if.end9.i, label %if.end5.i.if.end42.i_crit_edge

if.end5.i.if.end42.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42.i

if.end9.i:                                        ; preds = %if.end5.i
  %call8.i = call fastcc i32 @read_capacity_10(ptr noundef %1, ptr noundef %143, ptr noundef %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp10.i = icmp slt i32 %call8.i, 0
  br i1 %cmp10.i, label %if.end9.i.sd_read_capacity.exit_crit_edge, label %if.end9.i.if.end42.i_crit_edge

if.end9.i.if.end42.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42.i

if.end9.i.sd_read_capacity.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_capacity.exit

if.else.i:                                        ; preds = %scsi_device_protection.exit.i.i.if.else.i_crit_edge, %if.end8.i.i.if.else.i_crit_edge, %if.end.i.i6.if.else.i_crit_edge, %if.then30.if.else.i_crit_edge
  %call13.i = call fastcc i32 @read_capacity_10(ptr noundef %1, ptr noundef %143, ptr noundef %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, -75
  br i1 %cmp14.i, label %if.else.i.if.end80.i_crit_edge, label %if.end16.i

if.else.i.if.end80.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80.i

if.end16.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp17.i = icmp slt i32 %call13.i, 0
  br i1 %cmp17.i, label %if.end16.i.sd_read_capacity.exit_crit_edge, label %if.end19.i

if.end16.i.sd_read_capacity.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_capacity.exit

if.end19.i:                                       ; preds = %if.end16.i
  %159 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %160)
  %cmp20.i = icmp ugt i64 %160, 4294967295
  br i1 %cmp20.i, label %if.then21.i, label %if.end19.i.if.end42.i_crit_edge

if.end19.i.if.end42.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42.i

if.then21.i:                                      ; preds = %if.end19.i
  %161 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %disk1, align 8
  %tobool22.not.i = icmp eq ptr %162, null
  %163 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %device, align 4
  %disk_name.i11 = getelementptr inbounds %struct.gendisk, ptr %162, i32 0, i32 3
  %.sink.i12 = select i1 %tobool22.not.i, ptr null, ptr %disk_name.i11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %164, ptr noundef %.sink.i12, ptr noundef nonnull @.str.45) #17
  %call26.i = call fastcc i32 @read_capacity_16(ptr noundef %1, ptr noundef %143, ptr noundef %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.then28.i, label %cleanup.thread.i

if.then28.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #19
  %165 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %disk1, align 8
  %tobool30.not.i13 = icmp eq ptr %166, null
  %167 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device, align 4
  %disk_name34.i = getelementptr inbounds %struct.gendisk, ptr %166, i32 0, i32 3
  %disk_name34.sink.i = select i1 %tobool30.not.i13, ptr null, ptr %disk_name34.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %168, ptr noundef %disk_name34.sink.i, ptr noundef nonnull @.str.46) #17
  br label %got_data.i.sink.split

cleanup.thread.i:                                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #19
  %try_rc_10_first.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 41
  %169 = ptrtoint ptr %try_rc_10_first.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 8)
  %bf.load.i14 = load i64, ptr %try_rc_10_first.i, align 4
  %bf.clear.i = and i64 %bf.load.i14, -33554433
  store i64 %bf.clear.i, ptr %try_rc_10_first.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %cleanup.thread.i, %if.end19.i.if.end42.i_crit_edge, %if.end9.i.if.end42.i_crit_edge, %if.end5.i.if.end42.i_crit_edge
  %sector_size.2.i = phi i32 [ %call8.i, %if.end9.i.if.end42.i_crit_edge ], [ %call13.i, %if.end19.i.if.end42.i_crit_edge ], [ %call26.i, %cleanup.thread.i ], [ %call1.i, %if.end5.i.if.end42.i_crit_edge ]
  %fix_capacity.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 41
  %170 = ptrtoint ptr %fix_capacity.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 8)
  %bf.load43.i = load i64, ptr %fix_capacity.i, align 4
  %171 = and i64 %bf.load43.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %171)
  %tobool45.not.i = icmp eq i64 %171, 0
  br i1 %tobool45.not.i, label %lor.lhs.false.i, label %if.end42.i.if.then53.i_crit_edge

if.end42.i.if.then53.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then53.i

lor.lhs.false.i:                                  ; preds = %if.end42.i
  %172 = and i64 %bf.load43.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %172)
  %tobool50.not.i = icmp eq i64 %172, 0
  br i1 %tobool50.not.i, label %lor.lhs.false.i.got_data.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.got_data.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %got_data.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %173 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %capacity, align 8
  %and.i = and i64 %174, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool52.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true.i.got_data.i_crit_edge, label %land.lhs.true.i.if.then53.i_crit_edge

land.lhs.true.i.if.then53.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then53.i

land.lhs.true.i.got_data.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %got_data.i

if.then53.i:                                      ; preds = %land.lhs.true.i.if.then53.i_crit_edge, %if.end42.i.if.then53.i_crit_edge
  %175 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %disk1, align 8
  %tobool55.not.i = icmp eq ptr %176, null
  %177 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %device, align 4
  %disk_name59.i = getelementptr inbounds %struct.gendisk, ptr %176, i32 0, i32 3
  %.sink194.i = select i1 %tobool55.not.i, ptr null, ptr %disk_name59.i
  %179 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %capacity, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %178, ptr noundef %.sink194.i, ptr noundef nonnull @.str.47, i64 noundef %180) #17
  %181 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %capacity, align 8
  %dec.i = add i64 %182, -1
  br label %got_data.i.sink.split

got_data.i.sink.split:                            ; preds = %if.then53.i, %if.then28.i
  %dec.i.sink = phi i64 [ %dec.i, %if.then53.i ], [ 4294967296, %if.then28.i ]
  %sector_size.3.i.ph = phi i32 [ %sector_size.2.i, %if.then53.i ], [ %call13.i, %if.then28.i ]
  %183 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %dec.i.sink, ptr %capacity, align 8
  br label %got_data.i

got_data.i:                                       ; preds = %got_data.i.sink.split, %land.lhs.true.i.got_data.i_crit_edge, %lor.lhs.false.i.got_data.i_crit_edge
  %sector_size.3.i = phi i32 [ %sector_size.2.i, %land.lhs.true.i.got_data.i_crit_edge ], [ %sector_size.2.i, %lor.lhs.false.i.got_data.i_crit_edge ], [ %sector_size.3.i.ph, %got_data.i.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sector_size.3.i)
  %cmp68.i = icmp eq i32 %sector_size.3.i, 0
  br i1 %cmp68.i, label %if.then69.i, label %got_data.i.if.end80.i_crit_edge

got_data.i.if.end80.i_crit_edge:                  ; preds = %got_data.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80.i

if.then69.i:                                      ; preds = %got_data.i
  call void @__sanitizer_cov_trace_pc() #19
  %184 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %disk1, align 8
  %tobool71.not.i = icmp eq ptr %185, null
  %186 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device, align 4
  %disk_name75.i = getelementptr inbounds %struct.gendisk, ptr %185, i32 0, i32 3
  %disk_name75.sink.i = select i1 %tobool71.not.i, ptr null, ptr %disk_name75.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %187, ptr noundef %disk_name75.sink.i, ptr noundef nonnull @.str.48) #17
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then69.i, %got_data.i.if.end80.i_crit_edge, %if.else.i.if.end80.i_crit_edge, %if.then.i10.if.end80.i_crit_edge
  %sector_size.4.i = phi i32 [ %sector_size.3.i, %got_data.i.if.end80.i_crit_edge ], [ %call1.i, %if.then.i10.if.end80.i_crit_edge ], [ -75, %if.else.i.if.end80.i_crit_edge ], [ 512, %if.then69.i ]
  %188 = add nsw i32 %sector_size.4.i, -512
  %189 = call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 23) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %189)
  %190 = icmp ult i32 %189, 8
  br i1 %190, label %switch.hole_check, label %if.end80.i.if.then88.i_crit_edge

if.end80.i.if.then88.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then88.i

if.then88.i:                                      ; preds = %switch.hole_check.if.then88.i_crit_edge, %if.end80.i.if.then88.i_crit_edge
  %191 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %disk1, align 8
  %tobool90.not.i = icmp eq ptr %192, null
  %193 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %device, align 4
  %disk_name94.i = getelementptr inbounds %struct.gendisk, ptr %192, i32 0, i32 3
  %.sink196.i = select i1 %tobool90.not.i, ptr null, ptr %disk_name94.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %194, ptr noundef %.sink196.i, ptr noundef nonnull @.str.49, i32 noundef %sector_size.4.i) #17
  %195 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 0, ptr %capacity, align 8
  br label %if.end100.i

switch.hole_check:                                ; preds = %if.end80.i
  %switch.maskindex = trunc i32 %189 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %196 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %switch.lobit.not = icmp eq i8 %196, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then88.i_crit_edge, label %switch.lookup

switch.hole_check.if.then88.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then88.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sd_revalidate_disk, i32 0, i32 %189
  %197 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %197)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %switch.lookup, %if.then88.i
  %sector_size.5.i = phi i32 [ 512, %if.then88.i ], [ %switch.load, %switch.lookup ]
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 1
  %198 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %request_queue.i, align 4
  call void @blk_queue_logical_block_size(ptr noundef %199, i32 noundef %sector_size.5.i) #17
  %200 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %request_queue.i, align 4
  %physical_block_size.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 28
  %202 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %physical_block_size.i, align 8
  call void @blk_queue_physical_block_size(ptr noundef %201, i32 noundef %203) #17
  %204 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %device, align 4
  %sector_size103.i = getelementptr inbounds %struct.scsi_device, ptr %205, i32 0, i32 20
  %206 = ptrtoint ptr %sector_size103.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %sector_size.5.i, ptr %sector_size103.i, align 4
  %207 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %208)
  %cmp105.i = icmp ugt i64 %208, 4294967295
  br i1 %cmp105.i, label %if.then106.i, label %if.end100.i.sd_read_capacity.exit_crit_edge

if.end100.i.sd_read_capacity.exit_crit_edge:      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_capacity.exit

if.then106.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  %use_16_for_rw.i = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 41
  %209 = ptrtoint ptr %use_16_for_rw.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 8)
  %bf.load107.i = load i64, ptr %use_16_for_rw.i, align 4
  %bf.set109.i = or i64 %bf.load107.i, 8796093022208
  store i64 %bf.set109.i, ptr %use_16_for_rw.i, align 4
  br label %sd_read_capacity.exit

sd_read_capacity.exit:                            ; preds = %if.then106.i, %if.end100.i.sd_read_capacity.exit_crit_edge, %if.end16.i.sd_read_capacity.exit_crit_edge, %if.end9.i.sd_read_capacity.exit_crit_edge, %if.then.i10.sd_read_capacity.exit_crit_edge
  call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %7) #17
  call void @blk_queue_flag_set(i32 noundef 10, ptr noundef %7) #17
  %try_vpd_pages.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 41
  %210 = ptrtoint ptr %try_vpd_pages.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 8)
  %bf.load.i15 = load i64, ptr %try_vpd_pages.i, align 4
  %211 = and i64 %bf.load.i15, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %211)
  %tobool.not.i16 = icmp eq i64 %211, 0
  br i1 %tobool.not.i16, label %scsi_device_supports_vpd.exit, label %sd_read_capacity.exit.if.then33_crit_edge

sd_read_capacity.exit.if.then33_crit_edge:        ; preds = %sd_read_capacity.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33

scsi_device_supports_vpd.exit:                    ; preds = %sd_read_capacity.exit
  %scsi_level.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 23
  %212 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %213)
  %cmp.i = icmp ult i8 %213, 5
  %214 = and i64 %bf.load.i15, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %214)
  %tobool6.not.i = icmp ne i64 %214, 0
  %or.cond.i17 = select i1 %cmp.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i17, label %scsi_device_supports_vpd.exit.if.end35_crit_edge, label %scsi_device_supports_vpd.exit.if.then33_crit_edge

scsi_device_supports_vpd.exit.if.then33_crit_edge: ; preds = %scsi_device_supports_vpd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33

scsi_device_supports_vpd.exit.if.end35_crit_edge: ; preds = %scsi_device_supports_vpd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then33:                                        ; preds = %scsi_device_supports_vpd.exit.if.then33_crit_edge, %sd_read_capacity.exit.if.then33_crit_edge
  %lbpme.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %215 = ptrtoint ptr %lbpme.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %bf.load.i19 = load i32, ptr %lbpme.i, align 2
  %216 = and i32 %bf.load.i19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp.i20 = icmp eq i32 %216, 0
  br i1 %cmp.i20, label %if.then33.sd_read_block_provisioning.exit_crit_edge, label %if.end.i22

if.then33.sd_read_block_provisioning.exit_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_provisioning.exit

if.end.i22:                                       ; preds = %if.then33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %217 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %217, i32 noundef 3264, i32 noundef 8) #21
  %tobool.not.i21 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i21, label %if.end.i22.out.i_crit_edge, label %lor.lhs.false.i25

if.end.i22.out.i_crit_edge:                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

lor.lhs.false.i25:                                ; preds = %if.end.i22
  %218 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %device, align 4
  %call1.i24 = call i32 @scsi_get_vpd_page(ptr noundef %219, i8 noundef zeroext -78, ptr noundef nonnull %call7.i.i, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i25.out.i_crit_edge

lor.lhs.false.i25.out.i_crit_edge:                ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end4.i:                                        ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #19
  %220 = ptrtoint ptr %lbpme.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %bf.load5.i = load i32, ptr %lbpme.i, align 2
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 5
  %221 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i, align 1
  %223 = lshr i8 %222, 7
  %224 = zext i8 %223 to i32
  %bf.shl.i = shl nuw nsw i32 %224, 23
  %bf.set.i = and i32 %bf.load5.i, -15728641
  %bf.clear8.i = or i32 %bf.set.i, 1048576
  %bf.set9.i = or i32 %bf.shl.i, %bf.clear8.i
  %225 = lshr i8 %222, 6
  %226 = and i8 %225, 1
  %and13.i = zext i8 %226 to i32
  %bf.shl16.i = shl nuw nsw i32 %and13.i, 22
  %bf.set18.i = or i32 %bf.set9.i, %bf.shl16.i
  %227 = lshr i8 %222, 5
  %228 = and i8 %227, 1
  %and22.i = zext i8 %228 to i32
  %bf.shl25.i = shl nuw nsw i32 %and22.i, 21
  %bf.set27.i = or i32 %bf.set18.i, %bf.shl25.i
  store i32 %bf.set27.i, ptr %lbpme.i, align 2
  br label %out.i

out.i:                                            ; preds = %if.end4.i, %lor.lhs.false.i25.out.i_crit_edge, %if.end.i22.out.i_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #17
  br label %sd_read_block_provisioning.exit

sd_read_block_provisioning.exit:                  ; preds = %out.i, %if.then33.sd_read_block_provisioning.exit_crit_edge
  %229 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %230, i32 0, i32 20
  %231 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %sector_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %233 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %233, i32 noundef 3264, i32 noundef 64) #21
  %tobool.not.i28 = icmp eq ptr %call7.i.i27, null
  br i1 %tobool.not.i28, label %sd_read_block_provisioning.exit.sd_read_block_limits.exit_crit_edge, label %lor.lhs.false.i29

sd_read_block_provisioning.exit.sd_read_block_limits.exit_crit_edge: ; preds = %sd_read_block_provisioning.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_limits.exit

lor.lhs.false.i29:                                ; preds = %sd_read_block_provisioning.exit
  %234 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %device, align 4
  %call2.i = call i32 @scsi_get_vpd_page(ptr noundef %235, i8 noundef zeroext -80, ptr noundef nonnull %call7.i.i27, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i34, label %lor.lhs.false.i29.sd_read_block_limits.exit_crit_edge

lor.lhs.false.i29.sd_read_block_limits.exit_crit_edge: ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_limits.exit

if.end.i34:                                       ; preds = %lor.lhs.false.i29
  %236 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %disk1, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %237, i32 0, i32 9
  %238 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %queue.i, align 4
  %arrayidx.i31 = getelementptr i8, ptr %call7.i.i27, i32 6
  %240 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %arrayidx.i31, align 2
  %conv.i32 = zext i16 %241 to i32
  %mul.i = mul i32 %232, %conv.i32
  call void @blk_queue_io_min(ptr noundef %239, i32 noundef %mul.i) #17
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i27, i32 8
  %242 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx5.i, align 8
  %max_xfer_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 21
  %244 = ptrtoint ptr %max_xfer_blocks.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %max_xfer_blocks.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %call7.i.i27, i32 12
  %245 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx7.i, align 4
  %opt_xfer_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 22
  %247 = ptrtoint ptr %opt_xfer_blocks.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %opt_xfer_blocks.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %call7.i.i27, i32 3
  %248 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %249)
  %cmp.i33 = icmp eq i8 %249, 60
  br i1 %cmp.i33, label %if.then12.i, label %if.end.i34.sd_read_block_limits.exit_crit_edge

if.end.i34.sd_read_block_limits.exit_crit_edge:   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_limits.exit

if.then12.i:                                      ; preds = %if.end.i34
  %arrayidx13.i = getelementptr i8, ptr %call7.i.i27, i32 36
  %250 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 8)
  %251 = load i64, ptr %arrayidx13.i, align 4
  %conv15.i = trunc i64 %251 to i32
  %max_ws_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 23
  %252 = ptrtoint ptr %max_ws_blocks.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv15.i, ptr %max_ws_blocks.i, align 4
  %253 = ptrtoint ptr %lbpme.i to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %bf.load.i36 = load i32, ptr %lbpme.i, align 2
  %254 = and i32 %bf.load.i36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool16.not.i = icmp eq i32 %254, 0
  br i1 %tobool16.not.i, label %if.then12.i.sd_read_block_limits.exit_crit_edge, label %if.end18.i

if.then12.i.sd_read_block_limits.exit_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_limits.exit

if.end18.i:                                       ; preds = %if.then12.i
  %arrayidx19.i = getelementptr i8, ptr %call7.i.i27, i32 20
  %255 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %call7.i.i27, i32 24
  %257 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool23.not.i = icmp eq i32 %256, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool24.not.i = icmp eq i32 %258, 0
  %or.cond.i37 = select i1 %tobool23.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i37, label %if.end18.i.if.end26.i_crit_edge, label %if.then25.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_unmap_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 24
  %259 = ptrtoint ptr %max_unmap_blocks.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %256, ptr %max_unmap_blocks.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end18.i.if.end26.i_crit_edge
  %arrayidx27.i = getelementptr i8, ptr %call7.i.i27, i32 28
  %260 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx27.i, align 4
  %unmap_granularity.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 25
  %262 = ptrtoint ptr %unmap_granularity.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %unmap_granularity.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %call7.i.i27, i32 32
  %263 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %264)
  %tobool31.not.i = icmp sgt i8 %264, -1
  br i1 %tobool31.not.i, label %if.end26.i.if.end36.i_crit_edge, label %if.then32.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %265 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx29.i, align 8
  %and35.i = and i32 %266, 2147483647
  %unmap_alignment.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 26
  %267 = ptrtoint ptr %unmap_alignment.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %and35.i, ptr %unmap_alignment.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end26.i.if.end36.i_crit_edge
  %268 = and i32 %bf.load.i36, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool40.not.i38 = icmp eq i32 %268, 0
  br i1 %tobool40.not.i38, label %if.then41.i, label %if.else46.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_unmap_blocks42.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 24
  %269 = ptrtoint ptr %max_unmap_blocks42.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %max_unmap_blocks42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool43.not.i = icmp eq i32 %270, 0
  %..i = select i1 %tobool43.not.i, i32 2, i32 1
  br label %out.sink.split.i

if.else46.i:                                      ; preds = %if.end36.i
  %271 = and i32 %bf.load.i36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool50.not.i39 = icmp eq i32 %271, 0
  br i1 %tobool50.not.i39, label %if.else46.i.if.else55.i_crit_edge, label %land.lhs.true51.i

if.else46.i.if.else55.i_crit_edge:                ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else55.i

land.lhs.true51.i:                                ; preds = %if.else46.i
  %max_unmap_blocks52.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 24
  %272 = ptrtoint ptr %max_unmap_blocks52.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %max_unmap_blocks52.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool53.not.i = icmp eq i32 %273, 0
  br i1 %tobool53.not.i, label %land.lhs.true51.i.if.else55.i_crit_edge, label %land.lhs.true51.i.out.sink.split.i_crit_edge

land.lhs.true51.i.out.sink.split.i_crit_edge:     ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

land.lhs.true51.i.if.else55.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else55.i

if.else55.i:                                      ; preds = %land.lhs.true51.i.if.else55.i_crit_edge, %if.else46.i.if.else55.i_crit_edge
  %274 = and i32 %bf.load.i36, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool59.not.i = icmp eq i32 %274, 0
  br i1 %tobool59.not.i, label %if.else61.i, label %if.else55.i.out.sink.split.i_crit_edge

if.else55.i.out.sink.split.i_crit_edge:           ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

if.else61.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #19
  %275 = and i32 %bf.load.i36, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool65.not.i = icmp eq i32 %275, 0
  %.108.i = select i1 %tobool65.not.i, i32 5, i32 3
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.else61.i, %if.else55.i.out.sink.split.i_crit_edge, %land.lhs.true51.i.out.sink.split.i_crit_edge, %if.then41.i
  %.sink.i40 = phi i32 [ %..i, %if.then41.i ], [ 1, %land.lhs.true51.i.out.sink.split.i_crit_edge ], [ 2, %if.else55.i.out.sink.split.i_crit_edge ], [ %.108.i, %if.else61.i ]
  call fastcc void @sd_config_discard(ptr noundef %1, i32 noundef %.sink.i40) #17
  br label %sd_read_block_limits.exit

sd_read_block_limits.exit:                        ; preds = %out.sink.split.i, %if.then12.i.sd_read_block_limits.exit_crit_edge, %if.end.i34.sd_read_block_limits.exit_crit_edge, %lor.lhs.false.i29.sd_read_block_limits.exit_crit_edge, %sd_read_block_provisioning.exit.sd_read_block_limits.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i27) #17
  %276 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %disk1, align 8
  %queue.i43 = getelementptr inbounds %struct.gendisk, ptr %277, i32 0, i32 9
  %278 = ptrtoint ptr %queue.i43 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %queue.i43, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %280 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i44 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %280, i32 noundef 3264, i32 noundef 64) #21
  %tobool.not.i45 = icmp eq ptr %call7.i.i44, null
  br i1 %tobool.not.i45, label %sd_read_block_limits.exit.sd_read_block_characteristics.exit_crit_edge, label %lor.lhs.false.i49

sd_read_block_limits.exit.sd_read_block_characteristics.exit_crit_edge: ; preds = %sd_read_block_limits.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_characteristics.exit

lor.lhs.false.i49:                                ; preds = %sd_read_block_limits.exit
  %281 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %device, align 4
  %call1.i47 = call i32 @scsi_get_vpd_page(ptr noundef %282, i8 noundef zeroext -79, ptr noundef nonnull %call7.i.i44, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool2.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool2.not.i48, label %if.end.i52, label %lor.lhs.false.i49.sd_read_block_characteristics.exit_crit_edge

lor.lhs.false.i49.sd_read_block_characteristics.exit_crit_edge: ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_characteristics.exit

if.end.i52:                                       ; preds = %lor.lhs.false.i49
  %arrayidx.i50 = getelementptr i8, ptr %call7.i.i44, i32 4
  %283 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %arrayidx.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %284)
  %cmp.i51 = icmp eq i16 %284, 1
  br i1 %cmp.i51, label %if.then5.i, label %if.end.i52.if.end6.i_crit_edge

if.end.i52.if.end6.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %279) #17
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %279) #17
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i52.if.end6.i_crit_edge
  %285 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %device, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %286, i32 0, i32 22
  %287 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %288)
  %cmp9.i = icmp eq i8 %288, 20
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i59

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  %289 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %disk1, align 8
  call void @blk_queue_set_zoned(ptr noundef %290, i32 noundef 2) #17
  br label %if.end25.i

if.else.i59:                                      ; preds = %if.end6.i
  %arrayidx13.i53 = getelementptr i8, ptr %call7.i.i44, i32 8
  %291 = ptrtoint ptr %arrayidx13.i53 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx13.i53, align 8
  %293 = lshr i8 %292, 4
  %294 = and i8 %293, 3
  %and.i54 = zext i8 %294 to i32
  %295 = ptrtoint ptr %lbpme.i to i32
  call void @__asan_loadN_noabort(i32 %295, i32 4)
  %bf.load.i55 = load i32, ptr %lbpme.i, align 2
  %bf.shl.i56 = shl nuw nsw i32 %and.i54, 14
  %bf.clear.i57 = and i32 %bf.load.i55, -49153
  %bf.set.i58 = or i32 %bf.shl.i56, %bf.clear.i57
  store i32 %bf.set.i58, ptr %lbpme.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %294)
  %cmp18.i = icmp eq i8 %294, 1
  %296 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %disk1, align 8
  br i1 %cmp18.i, label %if.then20.i, label %if.else22.i

if.then20.i:                                      ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_set_zoned(ptr noundef %297, i32 noundef 1) #17
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_set_zoned(ptr noundef %297, i32 noundef 0) #17
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then20.i, %if.then11.i
  %298 = ptrtoint ptr %lbpme.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %bf.load26.i = load i32, ptr %lbpme.i, align 2
  %299 = and i32 %bf.load26.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool29.not.i = icmp eq i32 %299, 0
  br i1 %tobool29.not.i, label %if.end25.i.sd_read_block_characteristics.exit_crit_edge, label %if.end31.i

if.end25.i.sd_read_block_characteristics.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_characteristics.exit

if.end31.i:                                       ; preds = %if.end25.i
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %279, i32 0, i32 37, i32 27
  %300 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %301, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.then33.i60, label %if.else47.i

if.then33.i60:                                    ; preds = %if.end31.i
  %302 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %disk1, align 8
  %tobool35.not.i = icmp eq ptr %303, null
  %304 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %device, align 4
  br i1 %tobool35.not.i, label %cond.false.i63, label %cond.true.i62

cond.true.i62:                                    ; preds = %if.then33.i60
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name.i61 = getelementptr inbounds %struct.gendisk, ptr %303, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %301)
  %cmp39.i = icmp eq i32 %301, 2
  %cond.i = select i1 %cmp39.i, ptr @.str.59, ptr @.str.60
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %305, ptr noundef %disk_name.i61, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond.i) #17
  br label %sd_read_block_characteristics.exit

cond.false.i63:                                   ; preds = %if.then33.i60
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %301)
  %cmp44.i = icmp eq i32 %301, 2
  %cond46.i = select i1 %cmp44.i, ptr @.str.59, ptr @.str.60
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %305, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond46.i) #17
  br label %sd_read_block_characteristics.exit

if.else47.i:                                      ; preds = %if.end31.i
  %bf.lshr50.i = lshr i32 %bf.load26.i, 14
  %bf.clear51.i = and i32 %bf.lshr50.i, 3
  %306 = zext i32 %bf.clear51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %bf.clear51.i, label %if.else47.i.sd_read_block_characteristics.exit_crit_edge [
    i32 1, label %if.then54.i
    i32 2, label %if.then72.i
  ]

if.else47.i.sd_read_block_characteristics.exit_crit_edge: ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_block_characteristics.exit

if.then54.i:                                      ; preds = %if.else47.i
  %307 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %disk1, align 8
  %tobool56.not.i = icmp eq ptr %308, null
  %309 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %device, align 4
  br i1 %tobool56.not.i, label %cond.false62.i, label %cond.true57.i

cond.true57.i:                                    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name60.i = getelementptr inbounds %struct.gendisk, ptr %308, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %310, ptr noundef %disk_name60.i, ptr noundef nonnull @.str.61) #17
  br label %sd_read_block_characteristics.exit

cond.false62.i:                                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %310, ptr noundef null, ptr noundef nonnull @.str.61) #17
  br label %sd_read_block_characteristics.exit

if.then72.i:                                      ; preds = %if.else47.i
  %311 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %disk1, align 8
  %tobool74.not.i = icmp eq ptr %312, null
  %313 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %device, align 4
  br i1 %tobool74.not.i, label %cond.false80.i, label %cond.true75.i

cond.true75.i:                                    ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name78.i = getelementptr inbounds %struct.gendisk, ptr %312, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %314, ptr noundef %disk_name78.i, ptr noundef nonnull @.str.62) #17
  br label %sd_read_block_characteristics.exit

cond.false80.i:                                   ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %314, ptr noundef null, ptr noundef nonnull @.str.62) #17
  br label %sd_read_block_characteristics.exit

sd_read_block_characteristics.exit:               ; preds = %cond.false80.i, %cond.true75.i, %cond.false62.i, %cond.true57.i, %if.else47.i.sd_read_block_characteristics.exit_crit_edge, %cond.false.i63, %cond.true.i62, %if.end25.i.sd_read_block_characteristics.exit_crit_edge, %lor.lhs.false.i49.sd_read_block_characteristics.exit_crit_edge, %sd_read_block_limits.exit.sd_read_block_characteristics.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i44) #17
  %call34 = call i32 @sd_zbc_read_zones(ptr noundef %1, ptr noundef nonnull %call7.i) #17
  br label %if.end35

if.end35:                                         ; preds = %sd_read_block_characteristics.exit, %scsi_device_supports_vpd.exit.if.end35_crit_edge
  %315 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %device, align 4
  %sector_size1.i = getelementptr inbounds %struct.scsi_device, ptr %316, i32 0, i32 20
  %317 = ptrtoint ptr %sector_size1.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %sector_size1.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str_2.i) #17
  %319 = call ptr @memset(ptr %cap_str_2.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str_10.i) #17
  %first_scan.i66 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %320 = call ptr @memset(ptr %cap_str_10.i, i32 255, i32 10)
  %321 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %321, i32 4)
  %bf.load.i67 = load i32, ptr %first_scan.i66, align 2
  %322 = and i32 %bf.load.i67, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool.not.i68 = icmp eq i32 %322, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i71, label %if.end35.if.end.i78_crit_edge

if.end35.if.end.i78_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i78

land.lhs.true.i71:                                ; preds = %if.end35
  %323 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %324, i64 %9)
  %cmp.i70 = icmp eq i64 %324, %9
  br i1 %cmp.i70, label %land.lhs.true.i71.sd_print_capacity.exit_crit_edge, label %land.lhs.true.i71.if.end.i78_crit_edge

land.lhs.true.i71.if.end.i78_crit_edge:           ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i78

land.lhs.true.i71.sd_print_capacity.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_print_capacity.exit

if.end.i78:                                       ; preds = %land.lhs.true.i71.if.end.i78_crit_edge, %if.end35.if.end.i78_crit_edge
  %325 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %capacity, align 8
  %conv.i72 = sext i32 %318 to i64
  call void @string_get_size(i64 noundef %326, i64 noundef %conv.i72, i32 noundef 1, ptr noundef nonnull %cap_str_2.i, i32 noundef 10) #17
  %327 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %capacity, align 8
  call void @string_get_size(i64 noundef %328, i64 noundef %conv.i72, i32 noundef 0, ptr noundef nonnull %cap_str_10.i, i32 noundef 10) #17
  %329 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %disk1, align 8
  %tobool6.not.i74 = icmp eq ptr %330, null
  %331 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %device, align 4
  %disk_name.i75 = getelementptr inbounds %struct.gendisk, ptr %330, i32 0, i32 3
  %.sink.i76 = select i1 %tobool6.not.i74, ptr null, ptr %disk_name.i75
  %333 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %capacity, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %332, ptr noundef %.sink.i76, ptr noundef nonnull @.str.63, i64 noundef %334, i32 noundef %318, ptr noundef nonnull %cap_str_10.i, ptr noundef nonnull %cap_str_2.i) #17
  %physical_block_size.i77 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 28
  %335 = ptrtoint ptr %physical_block_size.i77 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %physical_block_size.i77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %318)
  %cmp17.not.i = icmp eq i32 %336, %318
  br i1 %cmp17.not.i, label %if.end.i78.sd_print_capacity.exit_crit_edge, label %if.then19.i

if.end.i78.sd_print_capacity.exit_crit_edge:      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_print_capacity.exit

if.then19.i:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #19
  %337 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %disk1, align 8
  %tobool21.not.i79 = icmp eq ptr %338, null
  %339 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %device, align 4
  %disk_name25.i = getelementptr inbounds %struct.gendisk, ptr %338, i32 0, i32 3
  %.sink59.i = select i1 %tobool21.not.i79, ptr null, ptr %disk_name25.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %340, ptr noundef %.sink59.i, ptr noundef nonnull @.str.64, i32 noundef %336) #17
  br label %sd_print_capacity.exit

sd_print_capacity.exit:                           ; preds = %if.then19.i, %if.end.i78.sd_print_capacity.exit_crit_edge, %land.lhs.true.i71.sd_print_capacity.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str_10.i) #17
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str_2.i) #17
  %341 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #17
  %343 = call ptr @memset(ptr %data.i, i32 255, i32 12)
  %write_prot.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 32
  %344 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %write_prot.i, align 1
  %346 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %disk1, align 8
  call void @set_disk_ro(ptr noundef %347, i1 noundef zeroext false) #17
  %skip_ms_page_3f.i = getelementptr inbounds %struct.scsi_device, ptr %342, i32 0, i32 41
  %348 = ptrtoint ptr %skip_ms_page_3f.i to i32
  call void @__asan_loadN_noabort(i32 %348, i32 8)
  %bf.load.i82 = load i64, ptr %skip_ms_page_3f.i, align 4
  %349 = and i64 %bf.load.i82, 2199023255552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %349)
  %tobool.not.i83 = icmp eq i64 %349, 0
  br i1 %tobool.not.i83, label %if.end11.i, label %do.body.i85

do.body.i85:                                      ; preds = %sd_print_capacity.exit
  %350 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %bf.load1.i = load i32, ptr %first_scan.i66, align 2
  %351 = and i32 %bf.load1.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool4.not.i = icmp eq i32 %351, 0
  br i1 %tobool4.not.i, label %do.body.i85.sd_read_write_protect_flag.exit_crit_edge, label %if.then5.i87

do.body.i85.sd_read_write_protect_flag.exit_crit_edge: ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_write_protect_flag.exit

if.then5.i87:                                     ; preds = %do.body.i85
  %352 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %disk1, align 8
  %tobool7.not.i86 = icmp eq ptr %353, null
  %354 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %device, align 4
  br i1 %tobool7.not.i86, label %cond.false.i90, label %cond.true.i89

cond.true.i89:                                    ; preds = %if.then5.i87
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name.i88 = getelementptr inbounds %struct.gendisk, ptr %353, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %355, ptr noundef %disk_name.i88, ptr noundef nonnull @.str.65) #17
  br label %sd_read_write_protect_flag.exit

cond.false.i90:                                   ; preds = %if.then5.i87
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %355, ptr noundef null, ptr noundef nonnull @.str.65) #17
  br label %sd_read_write_protect_flag.exit

if.end11.i:                                       ; preds = %sd_print_capacity.exit
  %356 = and i64 %bf.load.i82, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %356)
  %tobool16.not.i91 = icmp eq i64 %356, 0
  %357 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %device, align 4
  br i1 %tobool16.not.i91, label %if.else.i95, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  %359 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %max_retries.i, align 8
  %call.i.i92 = call i32 @scsi_mode_sense(ptr noundef %358, i32 noundef 0, i32 noundef 63, ptr noundef %call7.i, i32 noundef 192, i32 noundef 3000, i32 noundef %360, ptr noundef nonnull %data.i, ptr noundef null) #17
  br label %if.end28.i

if.else.i95:                                      ; preds = %if.end11.i
  %use_10_for_ms.i148.i = getelementptr inbounds %struct.scsi_device, ptr %358, i32 0, i32 41
  %361 = ptrtoint ptr %use_10_for_ms.i148.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 8)
  %bf.load.i149.i = load i64, ptr %use_10_for_ms.i148.i, align 4
  %362 = and i64 %bf.load.i149.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %362)
  %tobool.not.i150.i = icmp eq i64 %362, 0
  %spec.select.i.i93 = select i1 %tobool.not.i150.i, i32 4, i32 8
  %363 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %max_retries.i, align 8
  %call.i152.i = call i32 @scsi_mode_sense(ptr noundef %358, i32 noundef 0, i32 noundef 63, ptr noundef %call7.i, i32 noundef %spec.select.i.i93, i32 noundef 3000, i32 noundef %364, ptr noundef nonnull %data.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %cmp.i94 = icmp slt i32 %call.i152.i, 0
  br i1 %cmp.i94, label %if.end22.i, label %if.else.i95.if.else52.i_crit_edge

if.else.i95.if.else52.i_crit_edge:                ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else52.i

if.end22.i:                                       ; preds = %if.else.i95
  %365 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %device, align 4
  %use_10_for_ms.i154.i = getelementptr inbounds %struct.scsi_device, ptr %366, i32 0, i32 41
  %367 = ptrtoint ptr %use_10_for_ms.i154.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 8)
  %bf.load.i155.i = load i64, ptr %use_10_for_ms.i154.i, align 4
  %368 = and i64 %bf.load.i155.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %368)
  %tobool.not.i156.i = icmp eq i64 %368, 0
  %spec.select.i157.i = select i1 %tobool.not.i156.i, i32 4, i32 8
  %369 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %max_retries.i, align 8
  %call.i159.i = call i32 @scsi_mode_sense(ptr noundef %366, i32 noundef 0, i32 noundef 0, ptr noundef %call7.i, i32 noundef %spec.select.i157.i, i32 noundef 3000, i32 noundef %370, ptr noundef nonnull %data.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %cmp23.i = icmp slt i32 %call.i159.i, 0
  br i1 %cmp23.i, label %if.then25.i96, label %if.end22.i.if.else52.i_crit_edge

if.end22.i.if.else52.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else52.i

if.then25.i96:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  %371 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %device, align 4
  %373 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %max_retries.i, align 8
  %call.i165.i = call i32 @scsi_mode_sense(ptr noundef %372, i32 noundef 0, i32 noundef 63, ptr noundef %call7.i, i32 noundef 255, i32 noundef 3000, i32 noundef %374, ptr noundef nonnull %data.i, ptr noundef null) #17
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i96, %if.then17.i
  %res.1.i = phi i32 [ %call.i.i92, %if.then17.i ], [ %call.i165.i, %if.then25.i96 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1.i)
  %cmp29.i = icmp slt i32 %res.1.i, 0
  br i1 %cmp29.i, label %do.body32.i, label %if.end28.i.if.else52.i_crit_edge

if.end28.i.if.else52.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else52.i

do.body32.i:                                      ; preds = %if.end28.i
  %375 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %375, i32 4)
  %bf.load34.i = load i32, ptr %first_scan.i66, align 2
  %376 = and i32 %bf.load34.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool37.not.i97 = icmp eq i32 %376, 0
  br i1 %tobool37.not.i97, label %do.body32.i.sd_read_write_protect_flag.exit_crit_edge, label %if.then38.i

do.body32.i.sd_read_write_protect_flag.exit_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_write_protect_flag.exit

if.then38.i:                                      ; preds = %do.body32.i
  %377 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %disk1, align 8
  %tobool40.not.i98 = icmp eq ptr %378, null
  %379 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %device, align 4
  br i1 %tobool40.not.i98, label %cond.false46.i, label %cond.true41.i

cond.true41.i:                                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name44.i = getelementptr inbounds %struct.gendisk, ptr %378, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %380, ptr noundef %disk_name44.i, ptr noundef nonnull @.str.66) #17
  br label %sd_read_write_protect_flag.exit

cond.false46.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %380, ptr noundef null, ptr noundef nonnull @.str.66) #17
  br label %sd_read_write_protect_flag.exit

if.else52.i:                                      ; preds = %if.end28.i.if.else52.i_crit_edge, %if.end22.i.if.else52.i_crit_edge, %if.else.i95.if.else52.i_crit_edge
  %device_specific.i = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i, i32 0, i32 3
  %381 = ptrtoint ptr %device_specific.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %device_specific.i, align 1
  %.lobit.i = lshr i8 %382, 7
  %383 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %.lobit.i, ptr %write_prot.i, align 1
  %384 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %disk1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool60.i = icmp slt i8 %382, 0
  call void @set_disk_ro(ptr noundef %385, i1 noundef zeroext %tobool60.i) #17
  %386 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %386, i32 4)
  %bf.load62.i = load i32, ptr %first_scan.i66, align 2
  %387 = and i32 %bf.load62.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool65.not.i99 = icmp eq i32 %387, 0
  br i1 %tobool65.not.i99, label %lor.lhs.false.i100, label %if.else52.i.if.then70.i_crit_edge

if.else52.i.if.then70.i_crit_edge:                ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then70.i

lor.lhs.false.i100:                               ; preds = %if.else52.i
  %388 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %write_prot.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %345, i8 %389)
  %cmp68.not.i = icmp eq i8 %345, %389
  br i1 %cmp68.not.i, label %lor.lhs.false.i100.sd_read_write_protect_flag.exit_crit_edge, label %lor.lhs.false.i100.if.then70.i_crit_edge

lor.lhs.false.i100.if.then70.i_crit_edge:         ; preds = %lor.lhs.false.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then70.i

lor.lhs.false.i100.sd_read_write_protect_flag.exit_crit_edge: ; preds = %lor.lhs.false.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_write_protect_flag.exit

if.then70.i:                                      ; preds = %lor.lhs.false.i100.if.then70.i_crit_edge, %if.else52.i.if.then70.i_crit_edge
  %390 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %disk1, align 8
  %tobool72.not.i = icmp eq ptr %391, null
  %392 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %device, align 4
  %disk_name76.i = getelementptr inbounds %struct.gendisk, ptr %391, i32 0, i32 3
  %.sink.i101 = select i1 %tobool72.not.i, ptr null, ptr %disk_name76.i
  %394 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %write_prot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool85.not.i = icmp eq i8 %395, 0
  %cond86.i = select i1 %tobool85.not.i, ptr @.str.69, ptr @.str.68
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %393, ptr noundef %.sink.i101, ptr noundef nonnull @.str.67, ptr noundef nonnull %cond86.i) #17
  %396 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %disk1, align 8
  %tobool89.not.i = icmp eq ptr %397, null
  %398 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %device, align 4
  br i1 %tobool89.not.i, label %cond.false95.i, label %cond.true90.i

cond.true90.i:                                    ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name93.i = getelementptr inbounds %struct.gendisk, ptr %397, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.70, ptr noundef %399, ptr noundef %disk_name93.i, ptr noundef nonnull @.str.71, ptr noundef %call7.i) #17
  br label %sd_read_write_protect_flag.exit

cond.false95.i:                                   ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.70, ptr noundef %399, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef %call7.i) #17
  br label %sd_read_write_protect_flag.exit

sd_read_write_protect_flag.exit:                  ; preds = %cond.false95.i, %cond.true90.i, %lor.lhs.false.i100.sd_read_write_protect_flag.exit_crit_edge, %cond.false46.i, %cond.true41.i, %do.body32.i.sd_read_write_protect_flag.exit_crit_edge, %cond.false.i90, %cond.true.i89, %do.body.i85.sd_read_write_protect_flag.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #17
  %400 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i102) #17
  %402 = call ptr @memset(ptr %data.i102, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i103) #17
  %403 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i103, i32 0, i32 1
  %404 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i103, i32 0, i32 2
  %405 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i103, i32 0, i32 3
  %406 = ptrtoint ptr %sshdr.i103 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 -1, ptr %sshdr.i103, align 8
  %407 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %407, i32 4)
  %bf.load.i105 = load i32, ptr %first_scan.i66, align 2
  %408 = and i32 %bf.load.i105, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %tobool.not.i106 = icmp eq i32 %408, 0
  br i1 %tobool.not.i106, label %if.end.i108, label %sd_read_write_protect_flag.exit.sd_read_cache_type.exit_crit_edge

sd_read_write_protect_flag.exit.sd_read_cache_type.exit_crit_edge: ; preds = %sd_read_write_protect_flag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_cache_type.exit

if.end.i108:                                      ; preds = %sd_read_write_protect_flag.exit
  %skip_ms_page_8.i = getelementptr inbounds %struct.scsi_device, ptr %401, i32 0, i32 41
  %409 = ptrtoint ptr %skip_ms_page_8.i to i32
  call void @__asan_loadN_noabort(i32 %409, i32 8)
  %bf.load10.i = load i64, ptr %skip_ms_page_8.i, align 4
  %410 = and i64 %bf.load10.i, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %410)
  %tobool13.not.i107 = icmp eq i64 %410, 0
  %type33.i = getelementptr inbounds %struct.scsi_device, ptr %401, i32 0, i32 22
  %411 = ptrtoint ptr %type33.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %type33.i, align 4
  br i1 %tobool13.not.i107, label %if.else32.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %412)
  %cmp.i109 = icmp ne i8 %412, 14
  %413 = and i64 %bf.load10.i, 2199023255552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %413)
  %tobool21.not.i110 = icmp eq i64 %413, 0
  %or.cond.i111 = select i1 %cmp.i109, i1 %tobool21.not.i110, i1 false
  br i1 %or.cond.i111, label %if.end23.i, label %if.then14.i.defaults.i_crit_edge

if.then14.i.defaults.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.end23.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  %414 = and i64 %bf.load10.i, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %414)
  %tobool28.not.i = icmp eq i64 %414, 0
  %spec.select.i112 = select i1 %tobool28.not.i, i32 4, i32 192
  br label %if.end40.i

if.else32.i:                                      ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %412)
  %cmp35.i = icmp eq i8 %412, 14
  %..i113 = select i1 %cmp35.i, i32 8, i32 0
  %.737.i = select i1 %cmp35.i, i32 6, i32 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else32.i, %if.end23.i
  %dbd.0.i = phi i32 [ 0, %if.end23.i ], [ %..i113, %if.else32.i ]
  %modepage.0.i = phi i32 [ 63, %if.end23.i ], [ %.737.i, %if.else32.i ]
  %first_len.1.i = phi i32 [ %spec.select.i112, %if.end23.i ], [ 4, %if.else32.i ]
  %415 = and i64 %bf.load10.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %415)
  %tobool.not.i.i114 = icmp eq i64 %415, 0
  %416 = call i32 @llvm.smax.i32(i32 %first_len.1.i, i32 8) #17
  %spec.select.i.i115 = select i1 %tobool.not.i.i114, i32 %first_len.1.i, i32 %416
  %417 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %max_retries.i, align 8
  %call.i.i117 = call i32 @scsi_mode_sense(ptr noundef %401, i32 noundef %dbd.0.i, i32 noundef %modepage.0.i, ptr noundef %call7.i, i32 noundef %spec.select.i.i115, i32 noundef 3000, i32 noundef %418, ptr noundef nonnull %data.i102, ptr noundef nonnull %sshdr.i103) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %cmp41.i = icmp slt i32 %call.i.i117, 0
  br i1 %cmp41.i, label %if.end40.i.bad_sense.i_crit_edge, label %if.end44.i

if.end40.i.bad_sense.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad_sense.i

if.end44.i:                                       ; preds = %if.end40.i
  %header_length.i = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i102, i32 0, i32 4
  %419 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %header_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool45.not.i118 = icmp eq i8 %420, 0
  br i1 %tobool45.not.i118, label %if.then46.i120, label %if.end44.i.if.end57.i_crit_edge

if.end44.i.if.end57.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57.i

if.then46.i120:                                   ; preds = %if.end44.i
  %421 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %421, i32 4)
  %bf.load47.i = load i32, ptr %first_scan.i66, align 2
  %422 = and i32 %bf.load47.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool50.not.i119 = icmp eq i32 %422, 0
  br i1 %tobool50.not.i119, label %if.then46.i120.if.end57.i_crit_edge, label %if.then51.i

if.then46.i120.if.end57.i_crit_edge:              ; preds = %if.then46.i120
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57.i

if.then51.i:                                      ; preds = %if.then46.i120
  call void @__sanitizer_cov_trace_pc() #19
  %423 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %disk1, align 8
  %tobool52.not.i122 = icmp eq ptr %424, null
  %425 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %device, align 4
  %disk_name.i123 = getelementptr inbounds %struct.gendisk, ptr %424, i32 0, i32 3
  %.sink.i124 = select i1 %tobool52.not.i122, ptr null, ptr %disk_name.i123
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %426, ptr noundef %.sink.i124, ptr noundef nonnull @.str.72) #17
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then51.i, %if.then46.i120.if.end57.i_crit_edge, %if.end44.i.if.end57.i_crit_edge
  %modepage.1.i = phi i32 [ %modepage.0.i, %if.end44.i.if.end57.i_crit_edge ], [ 6, %if.then46.i120.if.end57.i_crit_edge ], [ 6, %if.then51.i ]
  %first_len.2.i = phi i32 [ %first_len.1.i, %if.end44.i.if.end57.i_crit_edge ], [ 0, %if.then46.i120.if.end57.i_crit_edge ], [ 0, %if.then51.i ]
  %427 = ptrtoint ptr %data.i102 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %data.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %428)
  %cmp58.i = icmp slt i32 %428, 3
  br i1 %cmp58.i, label %if.end57.i.bad_sense.i_crit_edge, label %if.else61.i125

if.end57.i.bad_sense.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad_sense.i

if.else61.i125:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %428)
  %cmp62.i = icmp ugt i32 %428, 512
  br i1 %cmp62.i, label %do.body65.i, label %if.else61.i125.if.end86.i_crit_edge

if.else61.i125.if.end86.i_crit_edge:              ; preds = %if.else61.i125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86.i

do.body65.i:                                      ; preds = %if.else61.i125
  %429 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %429, i32 4)
  %bf.load67.i = load i32, ptr %first_scan.i66, align 2
  %430 = and i32 %bf.load67.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %tobool70.not.i = icmp eq i32 %430, 0
  br i1 %tobool70.not.i, label %do.body65.i.if.end86.i_crit_edge, label %if.then71.i

do.body65.i.if.end86.i_crit_edge:                 ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86.i

if.then71.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #19
  %431 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %disk1, align 8
  %tobool73.not.i = icmp eq ptr %432, null
  %433 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %device, align 4
  %disk_name77.i = getelementptr inbounds %struct.gendisk, ptr %432, i32 0, i32 3
  %.sink775.i = select i1 %tobool73.not.i, ptr null, ptr %disk_name77.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %434, ptr noundef %.sink775.i, ptr noundef nonnull @.str.73, i32 noundef %428, i32 noundef 512) #17
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then71.i, %do.body65.i.if.end86.i_crit_edge, %if.else61.i125.if.end86.i_crit_edge
  %len.0.i = phi i32 [ %428, %if.else61.i125.if.end86.i_crit_edge ], [ 512, %do.body65.i.if.end86.i_crit_edge ], [ 512, %if.then71.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %modepage.1.i)
  %cmp87.i = icmp eq i32 %modepage.1.i, 63
  br i1 %cmp87.i, label %land.lhs.true.i126, label %if.end86.i.if.end96.i_crit_edge

if.end86.i.if.end96.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96.i

land.lhs.true.i126:                               ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #19
  %435 = ptrtoint ptr %skip_ms_page_8.i to i32
  call void @__asan_loadN_noabort(i32 %435, i32 8)
  %bf.load90.i = load i64, ptr %skip_ms_page_8.i, align 4
  %436 = and i64 %bf.load90.i, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %436)
  %tobool94.not.i = icmp eq i64 %436, 0
  %spec.select738.i = select i1 %tobool94.not.i, i32 %len.0.i, i32 192
  br label %if.end96.i

if.end96.i:                                       ; preds = %land.lhs.true.i126, %if.end86.i.if.end96.i_crit_edge
  %len.1.i = phi i32 [ %len.0.i, %if.end86.i.if.end96.i_crit_edge ], [ %spec.select738.i, %land.lhs.true.i126 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %first_len.2.i)
  %cmp97.i = icmp ugt i32 %len.1.i, %first_len.2.i
  br i1 %cmp97.i, label %if.then99.i, label %if.end96.i.if.end101.i_crit_edge

if.end96.i.if.end101.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #19
  %437 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %device, align 4
  %use_10_for_ms.i743.i = getelementptr inbounds %struct.scsi_device, ptr %438, i32 0, i32 41
  %439 = ptrtoint ptr %use_10_for_ms.i743.i to i32
  call void @__asan_loadN_noabort(i32 %439, i32 8)
  %bf.load.i744.i = load i64, ptr %use_10_for_ms.i743.i, align 4
  %440 = and i64 %bf.load.i744.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %440)
  %tobool.not.i745.i = icmp eq i64 %440, 0
  %441 = call i32 @llvm.smax.i32(i32 %len.1.i, i32 8) #17
  %spec.select.i746.i = select i1 %tobool.not.i745.i, i32 %len.1.i, i32 %441
  %442 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %max_retries.i, align 8
  %call.i748.i = call i32 @scsi_mode_sense(ptr noundef %438, i32 noundef %dbd.0.i, i32 noundef %modepage.1.i, ptr noundef %call7.i, i32 noundef %spec.select.i746.i, i32 noundef 3000, i32 noundef %443, ptr noundef nonnull %data.i102, ptr noundef nonnull %sshdr.i103) #17
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then99.i, %if.end96.i.if.end101.i_crit_edge
  %res.0.i = phi i32 [ %call.i748.i, %if.then99.i ], [ %call.i.i117, %if.end96.i.if.end101.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %tobool102.not.i = icmp eq i32 %res.0.i, 0
  br i1 %tobool102.not.i, label %if.then103.i, label %if.end101.i.bad_sense.i_crit_edge

if.end101.i.bad_sense.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad_sense.i

if.then103.i:                                     ; preds = %if.end101.i
  %444 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %header_length.i, align 4
  %conv105.i = zext i8 %445 to i32
  %block_descriptor_length.i = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i102, i32 0, i32 1
  %446 = ptrtoint ptr %block_descriptor_length.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %block_descriptor_length.i, align 4
  %conv106.i = zext i16 %447 to i32
  %add.i127 = add nuw nsw i32 %conv106.i, %conv105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %add.i127)
  %cmp107765.i = icmp ugt i32 %len.1.i, %add.i127
  br i1 %cmp107765.i, label %if.then103.i.while.body.i_crit_edge, label %if.then103.i.do.body201.i_crit_edge

if.then103.i.do.body201.i_crit_edge:              ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body201.i

if.then103.i.while.body.i_crit_edge:              ; preds = %if.then103.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then103.i.while.body.i_crit_edge
  %offset.0766.i = phi i32 [ %offset.1.i, %cleanup.i.while.body.i_crit_edge ], [ %add.i127, %if.then103.i.while.body.i_crit_edge ]
  %arrayidx.i128 = getelementptr i8, ptr %call7.i, i32 %offset.0766.i
  %448 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx.i128, align 1
  %450 = and i8 %449, 64
  %trunc.i = trunc i8 %449 to i6
  %451 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %451, ptr @__sancov_gen_cov_switch_values.190)
  switch i6 %trunc.i, label %if.else147.i [
    i6 8, label %while.body.i.if.then121.i_crit_edge
    i6 6, label %while.body.i.if.then121.i_crit_edge425
  ]

while.body.i.if.then121.i_crit_edge425:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then121.i

while.body.i.if.then121.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then121.i

if.then121.i:                                     ; preds = %while.body.i.if.then121.i_crit_edge, %while.body.i.if.then121.i_crit_edge425
  %sub.i129 = sub i32 %len.1.i, %offset.0766.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i129)
  %cmp122.i = icmp slt i32 %sub.i129, 3
  br i1 %cmp122.i, label %do.body125.i, label %Page_found.i

do.body125.i:                                     ; preds = %if.then121.i
  %452 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %452, i32 4)
  %bf.load127.i = load i32, ptr %first_scan.i66, align 2
  %453 = and i32 %bf.load127.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %tobool130.not.i = icmp eq i32 %453, 0
  br i1 %tobool130.not.i, label %do.body125.i.defaults.i_crit_edge, label %if.then131.i

do.body125.i.defaults.i_crit_edge:                ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.then131.i:                                     ; preds = %do.body125.i
  %454 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %disk1, align 8
  %tobool133.not.i = icmp eq ptr %455, null
  %456 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %device, align 4
  br i1 %tobool133.not.i, label %cond.false139.i, label %cond.true134.i

cond.true134.i:                                   ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name137.i = getelementptr inbounds %struct.gendisk, ptr %455, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %457, ptr noundef %disk_name137.i, ptr noundef nonnull @.str.74) #17
  br label %defaults.i

cond.false139.i:                                  ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %457, ptr noundef null, ptr noundef nonnull @.str.74) #17
  br label %defaults.i

if.else147.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool149.not.i = icmp ne i8 %450, 0
  %sub151.i = sub i32 %len.1.i, %offset.0766.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub151.i)
  %cmp152.i = icmp sgt i32 %sub151.i, 3
  %or.cond739.i = select i1 %tobool149.not.i, i1 %cmp152.i, i1 false
  br i1 %or.cond739.i, label %if.then154.i, label %if.else164.i

if.then154.i:                                     ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #19
  %add155.i = add i32 %offset.0766.i, 2
  %arrayidx156.i = getelementptr i8, ptr %call7.i, i32 %add155.i
  %458 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx156.i, align 1
  %conv157.i = zext i8 %459 to i32
  %shl.i = shl nuw nsw i32 %conv157.i, 8
  %add158.i = or i32 %shl.i, 4
  %add159.i = add i32 %offset.0766.i, 3
  %arrayidx160.i = getelementptr i8, ptr %call7.i, i32 %add159.i
  %460 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx160.i, align 1
  %conv161.i = zext i8 %461 to i32
  br label %cleanup.i

if.else164.i:                                     ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool165.not.i = icmp eq i8 %450, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub151.i)
  %cmp168.i = icmp sgt i32 %sub151.i, 1
  %or.cond740.i = select i1 %tobool165.not.i, i1 %cmp168.i, i1 false
  br i1 %or.cond740.i, label %if.then170.i, label %do.body177.i

if.then170.i:                                     ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #19
  %add171.i = add nsw i32 %offset.0766.i, 1
  %arrayidx172.i = getelementptr i8, ptr %call7.i, i32 %add171.i
  %462 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx172.i, align 1
  %conv173.i = zext i8 %463 to i32
  br label %cleanup.i

do.body177.i:                                     ; preds = %if.else164.i
  %464 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %464, i32 4)
  %bf.load179.i = load i32, ptr %first_scan.i66, align 2
  %465 = and i32 %bf.load179.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %465)
  %tobool182.not.i = icmp eq i32 %465, 0
  br i1 %tobool182.not.i, label %do.body177.i.defaults.i_crit_edge, label %if.then183.i

do.body177.i.defaults.i_crit_edge:                ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.then183.i:                                     ; preds = %do.body177.i
  %466 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %disk1, align 8
  %tobool185.not.i = icmp eq ptr %467, null
  %468 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %device, align 4
  br i1 %tobool185.not.i, label %cond.false191.i, label %cond.true186.i

cond.true186.i:                                   ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name189.i = getelementptr inbounds %struct.gendisk, ptr %467, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %469, ptr noundef %disk_name189.i, ptr noundef nonnull @.str.74) #17
  br label %defaults.i

cond.false191.i:                                  ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %469, ptr noundef null, ptr noundef nonnull @.str.74) #17
  br label %defaults.i

cleanup.i:                                        ; preds = %if.then170.i, %if.then154.i
  %.sink776.i = phi i32 [ 2, %if.then170.i ], [ %conv161.i, %if.then154.i ]
  %conv173.sink.i = phi i32 [ %conv173.i, %if.then170.i ], [ %add158.i, %if.then154.i ]
  %add174.i = add i32 %.sink776.i, %offset.0766.i
  %offset.1.i = add i32 %add174.i, %conv173.sink.i
  %cmp107.i = icmp sgt i32 %len.1.i, %offset.1.i
  br i1 %cmp107.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.do.body201.i_crit_edge

cleanup.i.do.body201.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body201.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

do.body201.i:                                     ; preds = %cleanup.i.do.body201.i_crit_edge, %if.then103.i.do.body201.i_crit_edge
  %470 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %470, i32 4)
  %bf.load203.i = load i32, ptr %first_scan.i66, align 2
  %471 = and i32 %bf.load203.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %471)
  %tobool206.not.i = icmp eq i32 %471, 0
  br i1 %tobool206.not.i, label %do.body201.i.defaults.i_crit_edge, label %if.then207.i

do.body201.i.defaults.i_crit_edge:                ; preds = %do.body201.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.then207.i:                                     ; preds = %do.body201.i
  %472 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %disk1, align 8
  %tobool209.not.i = icmp eq ptr %473, null
  %474 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %device, align 4
  br i1 %tobool209.not.i, label %cond.false215.i, label %cond.true210.i

cond.true210.i:                                   ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name213.i = getelementptr inbounds %struct.gendisk, ptr %473, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %475, ptr noundef %disk_name213.i, ptr noundef nonnull @.str.75) #17
  br label %defaults.i

cond.false215.i:                                  ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %475, ptr noundef null, ptr noundef nonnull @.str.75) #17
  br label %defaults.i

Page_found.i:                                     ; preds = %if.then121.i
  %and.le.i = and i8 %449, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and.le.i)
  %cmp221.i = icmp eq i8 %and.le.i, 8
  %add224.i = add i32 %offset.0766.i, 2
  %arrayidx225.i = getelementptr i8, ptr %call7.i, i32 %add224.i
  %476 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx225.i, align 1
  br i1 %cmp221.i, label %if.then223.i, label %if.else245.i

if.then223.i:                                     ; preds = %Page_found.i
  call void @__sanitizer_cov_trace_pc() #19
  %478 = lshr i8 %477, 2
  %479 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %479, i32 4)
  %bf.load231.i = load i32, ptr %first_scan.i66, align 2
  %480 = and i8 %478, 1
  %bf.value.i = zext i8 %480 to i32
  %bf.shl.i130 = shl nuw nsw i32 %bf.value.i, 29
  %bf.clear232.i = and i32 %bf.load231.i, -536870913
  %bf.set.i131 = or i32 %bf.clear232.i, %bf.shl.i130
  store i32 %bf.set.i131, ptr %first_scan.i66, align 2
  %481 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %arrayidx225.i, align 1
  %483 = and i8 %482, 1
  %bf.value241.i = zext i8 %483 to i32
  %bf.shl242.i = shl nuw nsw i32 %bf.value241.i, 28
  %bf.clear243.i = and i32 %bf.set.i131, -268435457
  %bf.set244.i = or i32 %bf.shl242.i, %bf.clear243.i
  br label %if.end262.i

if.else245.i:                                     ; preds = %Page_found.i
  call void @__sanitizer_cov_trace_pc() #19
  %484 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %484, i32 4)
  %bf.load253.i = load i32, ptr %first_scan.i66, align 2
  %485 = and i8 %477, 1
  %486 = xor i8 %485, 1
  %bf.value254.i = zext i8 %486 to i32
  %bf.shl255.i = shl nuw nsw i32 %bf.value254.i, 29
  %bf.clear256.i = and i32 %bf.load253.i, -805306369
  %bf.set257.i = or i32 %bf.clear256.i, %bf.shl255.i
  br label %if.end262.i

if.end262.i:                                      ; preds = %if.else245.i, %if.then223.i
  %storemerge728.i = phi i32 [ %bf.set257.i, %if.else245.i ], [ %bf.set244.i, %if.then223.i ]
  %device_specific.i132 = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i102, i32 0, i32 3
  %487 = ptrtoint ptr %device_specific.i132 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %device_specific.i132, align 1
  %489 = lshr i8 %488, 4
  %490 = and i8 %489, 1
  %bf.value269.i = zext i8 %490 to i32
  %bf.shl270.i = shl nuw nsw i32 %bf.value269.i, 27
  %bf.clear271.i = and i32 %storemerge728.i, -134217729
  %bf.set272.i = or i32 %bf.shl270.i, %bf.clear271.i
  %491 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_storeN_noabort(i32 %491, i32 4)
  store i32 %bf.set272.i, ptr %first_scan.i66, align 2
  %492 = ptrtoint ptr %skip_ms_page_8.i to i32
  call void @__asan_loadN_noabort(i32 %492, i32 8)
  %bf.load273.i = load i64, ptr %skip_ms_page_8.i, align 4
  %493 = and i64 %bf.load273.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %493)
  %tobool277.not.i = icmp eq i64 %493, 0
  br i1 %tobool277.not.i, label %if.else303.i, label %do.body279.i

do.body279.i:                                     ; preds = %if.end262.i
  %494 = and i32 %storemerge728.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool284.not.i = icmp eq i32 %494, 0
  br i1 %tobool284.not.i, label %do.body279.i.if.end349.sink.split.i_crit_edge, label %if.then285.i

do.body279.i.if.end349.sink.split.i_crit_edge:    ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349.sink.split.i

if.then285.i:                                     ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #19
  %495 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %disk1, align 8
  %tobool287.not.i = icmp eq ptr %496, null
  %497 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %device, align 4
  %disk_name291.i = getelementptr inbounds %struct.gendisk, ptr %496, i32 0, i32 3
  %disk_name291.sink.i = select i1 %tobool287.not.i, ptr null, ptr %disk_name291.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %498, ptr noundef %disk_name291.sink.i, ptr noundef nonnull @.str.76) #17
  br label %if.end349.sink.split.i

if.else303.i:                                     ; preds = %if.end262.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool308.not.i = icmp eq i8 %490, 0
  br i1 %tobool308.not.i, label %if.else303.i.if.end349.i_crit_edge, label %land.lhs.true309.i

if.else303.i.if.end349.i_crit_edge:               ; preds = %if.else303.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349.i

land.lhs.true309.i:                               ; preds = %if.else303.i
  %499 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %device, align 4
  %use_10_for_rw.i = getelementptr inbounds %struct.scsi_device, ptr %500, i32 0, i32 41
  %501 = ptrtoint ptr %use_10_for_rw.i to i32
  call void @__asan_loadN_noabort(i32 %501, i32 8)
  %bf.load311.i = load i64, ptr %use_10_for_rw.i, align 4
  %502 = and i64 %bf.load311.i, 290271069732864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %502)
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %do.body324.i, label %land.lhs.true309.i.if.end349.i_crit_edge

land.lhs.true309.i.if.end349.i_crit_edge:         ; preds = %land.lhs.true309.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349.i

do.body324.i:                                     ; preds = %land.lhs.true309.i
  %504 = and i32 %storemerge728.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %504)
  %tobool329.not.i = icmp eq i32 %504, 0
  br i1 %tobool329.not.i, label %do.body324.i.if.end349.sink.split.i_crit_edge, label %if.then330.i

do.body324.i.if.end349.sink.split.i_crit_edge:    ; preds = %do.body324.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349.sink.split.i

if.then330.i:                                     ; preds = %do.body324.i
  call void @__sanitizer_cov_trace_pc() #19
  %505 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %disk1, align 8
  %tobool332.not.i = icmp eq ptr %506, null
  %disk_name336.i = getelementptr inbounds %struct.gendisk, ptr %506, i32 0, i32 3
  %disk_name336.sink.i = select i1 %tobool332.not.i, ptr null, ptr %disk_name336.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %500, ptr noundef %disk_name336.sink.i, ptr noundef nonnull @.str.77) #17
  br label %if.end349.sink.split.i

if.end349.sink.split.i:                           ; preds = %if.then330.i, %do.body324.i.if.end349.sink.split.i_crit_edge, %if.then285.i, %do.body279.i.if.end349.sink.split.i_crit_edge
  %507 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %507, i32 4)
  %bf.load345.i = load i32, ptr %first_scan.i66, align 2
  %bf.clear346.i = and i32 %bf.load345.i, -134217729
  store i32 %bf.clear346.i, ptr %first_scan.i66, align 2
  br label %if.end349.i

if.end349.i:                                      ; preds = %if.end349.sink.split.i, %land.lhs.true309.i.if.end349.i_crit_edge, %if.else303.i.if.end349.i_crit_edge
  %508 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %508, i32 4)
  %bf.load351.i = load i32, ptr %first_scan.i66, align 2
  %509 = and i32 %bf.load351.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %509)
  %tobool354.not.i = icmp eq i32 %509, 0
  br i1 %tobool354.not.i, label %if.end349.i.if.end363.i_crit_edge, label %land.lhs.true355.i

if.end349.i.if.end363.i_crit_edge:                ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end363.i

land.lhs.true355.i:                               ; preds = %if.end349.i
  %510 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %write_prot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool357.not.i = icmp eq i8 %511, 0
  br i1 %tobool357.not.i, label %land.lhs.true355.i.if.end363.i_crit_edge, label %if.then358.i

land.lhs.true355.i.if.end363.i_crit_edge:         ; preds = %land.lhs.true355.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end363.i

if.then358.i:                                     ; preds = %land.lhs.true355.i
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear361.i = and i32 %bf.load351.i, -536870913
  %512 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_storeN_noabort(i32 %512, i32 4)
  store i32 %bf.clear361.i, ptr %first_scan.i66, align 2
  br label %if.end363.i

if.end363.i:                                      ; preds = %if.then358.i, %land.lhs.true355.i.if.end363.i_crit_edge, %if.end349.i.if.end363.i_crit_edge
  %513 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %513, i32 4)
  %bf.load365.i = load i32, ptr %first_scan.i66, align 2
  %514 = and i32 %bf.load365.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %514)
  %tobool368.not.i = icmp eq i32 %514, 0
  br i1 %tobool368.not.i, label %lor.lhs.false369.i, label %if.end363.i.if.then390.i_crit_edge

if.end363.i.if.then390.i_crit_edge:               ; preds = %if.end363.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then390.i

lor.lhs.false369.i:                               ; preds = %if.end363.i
  %bf.lshr729.i = xor i32 %bf.load365.i, %bf.load.i105
  %515 = and i32 %bf.lshr729.i, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %lor.lhs.false369.i.sd_read_cache_type.exit_crit_edge, label %lor.lhs.false369.i.if.then390.i_crit_edge

lor.lhs.false369.i.if.then390.i_crit_edge:        ; preds = %lor.lhs.false369.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then390.i

lor.lhs.false369.i.sd_read_cache_type.exit_crit_edge: ; preds = %lor.lhs.false369.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_cache_type.exit

if.then390.i:                                     ; preds = %lor.lhs.false369.i.if.then390.i_crit_edge, %if.end363.i.if.then390.i_crit_edge
  %517 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %disk1, align 8
  %tobool392.not.i = icmp eq ptr %518, null
  %519 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %device, align 4
  br i1 %tobool392.not.i, label %cond.false415.i, label %cond.true393.i

cond.true393.i:                                   ; preds = %if.then390.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name396.i = getelementptr inbounds %struct.gendisk, ptr %518, i32 0, i32 3
  %521 = and i32 %bf.load365.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %521)
  %tobool402.not.i = icmp eq i32 %521, 0
  %cond.i134 = select i1 %tobool402.not.i, ptr @.str.80, ptr @.str.79
  %522 = and i32 %bf.load365.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %tobool407.not.i = icmp eq i32 %522, 0
  %cond408.i = select i1 %tobool407.not.i, ptr @.str.79, ptr @.str.80
  %523 = and i32 %bf.load365.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %tobool413.not.i = icmp eq i32 %523, 0
  %cond414.i = select i1 %tobool413.not.i, ptr @.str.82, ptr @.str.81
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %520, ptr noundef %disk_name396.i, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond.i134, ptr noundef nonnull %cond408.i, ptr noundef nonnull %cond414.i) #17
  br label %sd_read_cache_type.exit

cond.false415.i:                                  ; preds = %if.then390.i
  call void @__sanitizer_cov_trace_pc() #19
  %524 = and i32 %bf.load365.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %tobool421.not.i = icmp eq i32 %524, 0
  %cond422.i = select i1 %tobool421.not.i, ptr @.str.80, ptr @.str.79
  %525 = and i32 %bf.load365.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %525)
  %tobool427.not.i = icmp eq i32 %525, 0
  %cond428.i = select i1 %tobool427.not.i, ptr @.str.79, ptr @.str.80
  %526 = and i32 %bf.load365.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %526)
  %tobool433.not.i = icmp eq i32 %526, 0
  %cond434.i = select i1 %tobool433.not.i, ptr @.str.82, ptr @.str.81
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %520, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond422.i, ptr noundef nonnull %cond428.i, ptr noundef nonnull %cond434.i) #17
  br label %sd_read_cache_type.exit

bad_sense.i:                                      ; preds = %if.end101.i.bad_sense.i_crit_edge, %if.end57.i.bad_sense.i_crit_edge, %if.end40.i.bad_sense.i_crit_edge
  %527 = ptrtoint ptr %sshdr.i103 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %sshdr.i103, align 8
  %529 = and i8 %528, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %529)
  %cmp.i.i135 = icmp eq i8 %529, 112
  br i1 %cmp.i.i135, label %land.lhs.true441.i, label %bad_sense.i.do.body475.i_crit_edge

bad_sense.i.do.body475.i_crit_edge:               ; preds = %bad_sense.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body475.i

land.lhs.true441.i:                               ; preds = %bad_sense.i
  %530 = ptrtoint ptr %403 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %403, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %531)
  %cmp443.i = icmp eq i8 %531, 5
  br i1 %cmp443.i, label %land.lhs.true445.i, label %land.lhs.true441.i.do.body475.i_crit_edge

land.lhs.true441.i.do.body475.i_crit_edge:        ; preds = %land.lhs.true441.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body475.i

land.lhs.true445.i:                               ; preds = %land.lhs.true441.i
  %532 = ptrtoint ptr %404 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %404, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %533)
  %cmp447.i = icmp eq i8 %533, 36
  br i1 %cmp447.i, label %land.lhs.true449.i, label %land.lhs.true445.i.do.body475.i_crit_edge

land.lhs.true445.i.do.body475.i_crit_edge:        ; preds = %land.lhs.true445.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body475.i

land.lhs.true449.i:                               ; preds = %land.lhs.true445.i
  %534 = ptrtoint ptr %405 to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %405, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %535)
  %cmp451.i = icmp eq i8 %535, 0
  br i1 %cmp451.i, label %do.body454.i, label %land.lhs.true449.i.do.body475.i_crit_edge

land.lhs.true449.i.do.body475.i_crit_edge:        ; preds = %land.lhs.true449.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body475.i

do.body454.i:                                     ; preds = %land.lhs.true449.i
  %536 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %536, i32 4)
  %bf.load456.i = load i32, ptr %first_scan.i66, align 2
  %537 = and i32 %bf.load456.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %537)
  %tobool459.not.i = icmp eq i32 %537, 0
  br i1 %tobool459.not.i, label %do.body454.i.defaults.i_crit_edge, label %if.then460.i

do.body454.i.defaults.i_crit_edge:                ; preds = %do.body454.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.then460.i:                                     ; preds = %do.body454.i
  %538 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %disk1, align 8
  %tobool462.not.i = icmp eq ptr %539, null
  %540 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %device, align 4
  br i1 %tobool462.not.i, label %cond.false468.i, label %cond.true463.i

cond.true463.i:                                   ; preds = %if.then460.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name466.i = getelementptr inbounds %struct.gendisk, ptr %539, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %541, ptr noundef %disk_name466.i, ptr noundef nonnull @.str.83) #17
  br label %defaults.i

cond.false468.i:                                  ; preds = %if.then460.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %541, ptr noundef null, ptr noundef nonnull @.str.83) #17
  br label %defaults.i

do.body475.i:                                     ; preds = %land.lhs.true449.i.do.body475.i_crit_edge, %land.lhs.true445.i.do.body475.i_crit_edge, %land.lhs.true441.i.do.body475.i_crit_edge, %bad_sense.i.do.body475.i_crit_edge
  %542 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %542, i32 4)
  %bf.load477.i = load i32, ptr %first_scan.i66, align 2
  %543 = and i32 %bf.load477.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %tobool480.not.i = icmp eq i32 %543, 0
  br i1 %tobool480.not.i, label %do.body475.i.defaults.i_crit_edge, label %if.then481.i

do.body475.i.defaults.i_crit_edge:                ; preds = %do.body475.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %defaults.i

if.then481.i:                                     ; preds = %do.body475.i
  %544 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %disk1, align 8
  %tobool483.not.i = icmp eq ptr %545, null
  %546 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %device, align 4
  br i1 %tobool483.not.i, label %cond.false489.i, label %cond.true484.i

cond.true484.i:                                   ; preds = %if.then481.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name487.i = getelementptr inbounds %struct.gendisk, ptr %545, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %547, ptr noundef %disk_name487.i, ptr noundef nonnull @.str.84) #17
  br label %defaults.i

cond.false489.i:                                  ; preds = %if.then481.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %547, ptr noundef null, ptr noundef nonnull @.str.84) #17
  br label %defaults.i

defaults.i:                                       ; preds = %cond.false489.i, %cond.true484.i, %do.body475.i.defaults.i_crit_edge, %cond.false468.i, %cond.true463.i, %do.body454.i.defaults.i_crit_edge, %cond.false215.i, %cond.true210.i, %do.body201.i.defaults.i_crit_edge, %cond.false191.i, %cond.true186.i, %do.body177.i.defaults.i_crit_edge, %cond.false139.i, %cond.true134.i, %do.body125.i.defaults.i_crit_edge, %if.then14.i.defaults.i_crit_edge
  %548 = ptrtoint ptr %skip_ms_page_8.i to i32
  call void @__asan_loadN_noabort(i32 %548, i32 8)
  %bf.load497.i = load i64, ptr %skip_ms_page_8.i, align 4
  %549 = and i64 %bf.load497.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %549)
  %tobool501.not.i = icmp eq i64 %549, 0
  %550 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %550, i32 4)
  %bf.load530.i = load i32, ptr %first_scan.i66, align 2
  %551 = and i32 %bf.load530.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %tobool533.not.i = icmp eq i32 %551, 0
  br i1 %tobool501.not.i, label %do.body528.i, label %do.body503.i

do.body503.i:                                     ; preds = %defaults.i
  br i1 %tobool533.not.i, label %do.body503.i.do.end522.i_crit_edge, label %if.then509.i

do.body503.i.do.end522.i_crit_edge:               ; preds = %do.body503.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end522.i

if.then509.i:                                     ; preds = %do.body503.i
  call void @__sanitizer_cov_trace_pc() #19
  %552 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %disk1, align 8
  %tobool511.not.i = icmp eq ptr %553, null
  %554 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %device, align 4
  %disk_name515.i = getelementptr inbounds %struct.gendisk, ptr %553, i32 0, i32 3
  %disk_name515.sink.i = select i1 %tobool511.not.i, ptr null, ptr %disk_name515.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %555, ptr noundef %disk_name515.sink.i, ptr noundef nonnull @.str.85) #17
  br label %do.end522.i

do.end522.i:                                      ; preds = %if.then509.i, %do.body503.i.do.end522.i_crit_edge
  %556 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %556, i32 4)
  %bf.load524.i = load i32, ptr %first_scan.i66, align 2
  %bf.set526.i = or i32 %bf.load524.i, 536870912
  br label %if.end552.i

do.body528.i:                                     ; preds = %defaults.i
  br i1 %tobool533.not.i, label %do.body528.i.do.end547.i_crit_edge, label %if.then534.i

do.body528.i.do.end547.i_crit_edge:               ; preds = %do.body528.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end547.i

if.then534.i:                                     ; preds = %do.body528.i
  call void @__sanitizer_cov_trace_pc() #19
  %557 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %disk1, align 8
  %tobool536.not.i = icmp eq ptr %558, null
  %559 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %device, align 4
  %disk_name540.i = getelementptr inbounds %struct.gendisk, ptr %558, i32 0, i32 3
  %disk_name540.sink.i = select i1 %tobool536.not.i, ptr null, ptr %disk_name540.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %560, ptr noundef %disk_name540.sink.i, ptr noundef nonnull @.str.86) #17
  br label %do.end547.i

do.end547.i:                                      ; preds = %if.then534.i, %do.body528.i.do.end547.i_crit_edge
  %561 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %561, i32 4)
  %bf.load549.i = load i32, ptr %first_scan.i66, align 2
  %bf.clear550.i = and i32 %bf.load549.i, -536870913
  br label %if.end552.i

if.end552.i:                                      ; preds = %do.end547.i, %do.end522.i
  %storemerge.i = phi i32 [ %bf.clear550.i, %do.end547.i ], [ %bf.set526.i, %do.end522.i ]
  %bf.clear559.i = and i32 %storemerge.i, -402653185
  %562 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_storeN_noabort(i32 %562, i32 4)
  store i32 %bf.clear559.i, ptr %first_scan.i66, align 2
  br label %sd_read_cache_type.exit

sd_read_cache_type.exit:                          ; preds = %if.end552.i, %cond.false415.i, %cond.true393.i, %lor.lhs.false369.i.sd_read_cache_type.exit_crit_edge, %sd_read_write_protect_flag.exit.sd_read_cache_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i103) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i102) #17
  %563 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i136) #17
  %565 = call ptr @memset(ptr %data.i136, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i137) #17
  %type.i139 = getelementptr inbounds %struct.scsi_device, ptr %564, i32 0, i32 22
  %566 = ptrtoint ptr %sshdr.i137 to i32
  call void @__asan_store8_noabort(i32 %566)
  store i64 -1, ptr %sshdr.i137, align 8
  %567 = ptrtoint ptr %type.i139 to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %type.i139, align 4
  %569 = zext i8 %568 to i64
  call void @__sanitizer_cov_trace_switch(i64 %569, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %568, label %sd_read_cache_type.exit.sd_read_app_tag_own.exit_crit_edge [
    i8 0, label %sd_read_cache_type.exit.if.end.i140_crit_edge
    i8 20, label %sd_read_cache_type.exit.if.end.i140_crit_edge426
  ]

sd_read_cache_type.exit.if.end.i140_crit_edge426: ; preds = %sd_read_cache_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i140

sd_read_cache_type.exit.if.end.i140_crit_edge:    ; preds = %sd_read_cache_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i140

sd_read_cache_type.exit.sd_read_app_tag_own.exit_crit_edge: ; preds = %sd_read_cache_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_app_tag_own.exit

if.end.i140:                                      ; preds = %sd_read_cache_type.exit.if.end.i140_crit_edge, %sd_read_cache_type.exit.if.end.i140_crit_edge426
  %protection_type.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 33
  %570 = ptrtoint ptr %protection_type.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %protection_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %cmp7.i = icmp eq i8 %571, 0
  br i1 %cmp7.i, label %if.end.i140.sd_read_app_tag_own.exit_crit_edge, label %if.end10.i

if.end.i140.sd_read_app_tag_own.exit_crit_edge:   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_app_tag_own.exit

if.end10.i:                                       ; preds = %if.end.i140
  %572 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %max_retries.i, align 8
  %call.i = call i32 @scsi_mode_sense(ptr noundef %564, i32 noundef 1, i32 noundef 10, ptr noundef %call7.i, i32 noundef 36, i32 noundef 3000, i32 noundef %573, ptr noundef nonnull %data.i136, ptr noundef nonnull %sshdr.i137) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %if.end10.i.do.body.i148_crit_edge, label %lor.lhs.false.i144

if.end10.i.do.body.i148_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i148

lor.lhs.false.i144:                               ; preds = %if.end10.i
  %header_length.i142 = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i136, i32 0, i32 4
  %574 = ptrtoint ptr %header_length.i142 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %header_length.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool.not.i143 = icmp eq i8 %575, 0
  br i1 %tobool.not.i143, label %lor.lhs.false.i144.do.body.i148_crit_edge, label %lor.lhs.false13.i

lor.lhs.false.i144.do.body.i148_crit_edge:        ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i148

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i144
  %576 = ptrtoint ptr %data.i136 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %data.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %577)
  %cmp14.i145 = icmp ult i32 %577, 6
  br i1 %cmp14.i145, label %lor.lhs.false13.i.do.body.i148_crit_edge, label %if.end27.i

lor.lhs.false13.i.do.body.i148_crit_edge:         ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i148

do.body.i148:                                     ; preds = %lor.lhs.false13.i.do.body.i148_crit_edge, %lor.lhs.false.i144.do.body.i148_crit_edge, %if.end10.i.do.body.i148_crit_edge
  %578 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %578, i32 4)
  %bf.load.i147 = load i32, ptr %first_scan.i66, align 2
  %579 = and i32 %bf.load.i147, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %579)
  %tobool17.not.i = icmp eq i32 %579, 0
  br i1 %tobool17.not.i, label %do.body.i148.do.end.i152_crit_edge, label %if.then18.i

do.body.i148.do.end.i152_crit_edge:               ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i152

if.then18.i:                                      ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #19
  %580 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %disk1, align 8
  %tobool19.not.i = icmp eq ptr %581, null
  %582 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %device, align 4
  %disk_name.i150 = getelementptr inbounds %struct.gendisk, ptr %581, i32 0, i32 3
  %disk_name.sink.i = select i1 %tobool19.not.i, ptr null, ptr %disk_name.i150
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %583, ptr noundef %disk_name.sink.i, ptr noundef nonnull @.str.87) #17
  br label %do.end.i152

do.end.i152:                                      ; preds = %if.then18.i, %do.body.i148.do.end.i152_crit_edge
  %584 = ptrtoint ptr %sshdr.i137 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %sshdr.i137, align 8
  %586 = and i8 %585, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %586)
  %cmp.i.i151 = icmp eq i8 %586, 112
  br i1 %cmp.i.i151, label %if.then25.i156, label %do.end.i152.sd_read_app_tag_own.exit_crit_edge

do.end.i152.sd_read_app_tag_own.exit_crit_edge:   ; preds = %do.end.i152
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_app_tag_own.exit

if.then25.i156:                                   ; preds = %do.end.i152
  call void @__sanitizer_cov_trace_pc() #19
  %587 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %device, align 4
  %589 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %disk1, align 8
  %tobool.not.i.i153 = icmp eq ptr %590, null
  %disk_name.i.i154 = getelementptr inbounds %struct.gendisk, ptr %590, i32 0, i32 3
  %spec.select.i.i155 = select i1 %tobool.not.i.i153, ptr null, ptr %disk_name.i.i154
  call void @scsi_print_sense_hdr(ptr noundef %588, ptr noundef %spec.select.i.i155, ptr noundef nonnull %sshdr.i137) #17
  br label %sd_read_app_tag_own.exit

if.end27.i:                                       ; preds = %lor.lhs.false13.i
  %conv29.i = zext i8 %575 to i32
  %block_descriptor_length.i157 = getelementptr inbounds %struct.scsi_mode_data, ptr %data.i136, i32 0, i32 1
  %591 = ptrtoint ptr %block_descriptor_length.i157 to i32
  call void @__asan_load2_noabort(i32 %591)
  %592 = load i16, ptr %block_descriptor_length.i157, align 4
  %conv30.i = zext i16 %592 to i32
  %add.i158 = add nuw nsw i32 %conv30.i, %conv29.i
  %arrayidx.i159 = getelementptr i8, ptr %call7.i, i32 %add.i158
  %593 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx.i159, align 1
  %595 = and i8 %594, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %595)
  %cmp32.not.i = icmp eq i8 %595, 10
  br i1 %cmp32.not.i, label %if.end55.i, label %do.body35.i

do.body35.i:                                      ; preds = %if.end27.i
  %596 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %596, i32 4)
  %bf.load37.i = load i32, ptr %first_scan.i66, align 2
  %597 = and i32 %bf.load37.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %597)
  %tobool40.not.i160 = icmp eq i32 %597, 0
  br i1 %tobool40.not.i160, label %do.body35.i.sd_read_app_tag_own.exit_crit_edge, label %if.then41.i162

do.body35.i.sd_read_app_tag_own.exit_crit_edge:   ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_app_tag_own.exit

if.then41.i162:                                   ; preds = %do.body35.i
  %598 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %disk1, align 8
  %tobool43.not.i161 = icmp eq ptr %599, null
  %600 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %device, align 4
  br i1 %tobool43.not.i161, label %cond.false49.i, label %cond.true44.i

cond.true44.i:                                    ; preds = %if.then41.i162
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name47.i = getelementptr inbounds %struct.gendisk, ptr %599, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %601, ptr noundef %disk_name47.i, ptr noundef nonnull @.str.88) #17
  br label %sd_read_app_tag_own.exit

cond.false49.i:                                   ; preds = %if.then41.i162
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %601, ptr noundef null, ptr noundef nonnull @.str.88) #17
  br label %sd_read_app_tag_own.exit

if.end55.i:                                       ; preds = %if.end27.i
  %add56.i = add nuw nsw i32 %add.i158, 5
  %arrayidx57.i = getelementptr i8, ptr %call7.i, i32 %add56.i
  %602 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %603)
  %cmp60.i = icmp sgt i8 %603, -1
  br i1 %cmp60.i, label %if.end55.i.sd_read_app_tag_own.exit_crit_edge, label %if.end63.i

if.end55.i.sd_read_app_tag_own.exit_crit_edge:    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_app_tag_own.exit

if.end63.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #19
  %604 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %604, i32 4)
  %bf.load64.i = load i32, ptr %first_scan.i66, align 2
  %bf.set.i163 = or i32 %bf.load64.i, -2147483648
  store i32 %bf.set.i163, ptr %first_scan.i66, align 2
  br label %sd_read_app_tag_own.exit

sd_read_app_tag_own.exit:                         ; preds = %if.end63.i, %if.end55.i.sd_read_app_tag_own.exit_crit_edge, %cond.false49.i, %cond.true44.i, %do.body35.i.sd_read_app_tag_own.exit_crit_edge, %if.then25.i156, %do.end.i152.sd_read_app_tag_own.exit_crit_edge, %if.end.i140.sd_read_app_tag_own.exit_crit_edge, %sd_read_cache_type.exit.sd_read_app_tag_own.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i137) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i136) #17
  %605 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %device, align 4
  %607 = ptrtoint ptr %606 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %606, align 8
  %no_write_same.i = getelementptr inbounds %struct.Scsi_Host, ptr %608, i32 0, i32 36
  %609 = ptrtoint ptr %no_write_same.i to i32
  call void @__asan_load2_noabort(i32 %609)
  %bf.load.i166 = load i16, ptr %no_write_same.i, align 8
  %610 = and i16 %bf.load.i166, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %610)
  %tobool.not.i167 = icmp eq i16 %610, 0
  br i1 %tobool.not.i167, label %if.end.i172, label %if.then.i169

if.then.i169:                                     ; preds = %sd_read_app_tag_own.exit
  call void @__sanitizer_cov_trace_pc() #19
  %no_write_same1.i = getelementptr inbounds %struct.scsi_device, ptr %606, i32 0, i32 41
  %611 = ptrtoint ptr %no_write_same1.i to i32
  call void @__asan_loadN_noabort(i32 %611, i32 8)
  %bf.load2.i = load i64, ptr %no_write_same1.i, align 4
  %bf.set.i168 = or i64 %bf.load2.i, 17592186044416
  store i64 %bf.set.i168, ptr %no_write_same1.i, align 4
  br label %sd_read_write_same.exit

if.end.i172:                                      ; preds = %sd_read_app_tag_own.exit
  %call.i170 = call i32 @scsi_report_opcode(ptr noundef %606, ptr noundef %call7.i, i32 noundef 512, i8 noundef zeroext 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp.i171 = icmp slt i32 %call.i170, 0
  br i1 %cmp.i171, label %if.then4.i, label %if.end.i172.if.end16.i176_crit_edge

if.end.i172.if.end16.i176_crit_edge:              ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i176

if.then4.i:                                       ; preds = %if.end.i172
  %no_report_opcodes.i = getelementptr inbounds %struct.scsi_device, ptr %606, i32 0, i32 41
  %612 = ptrtoint ptr %no_report_opcodes.i to i32
  call void @__asan_loadN_noabort(i32 %612, i32 8)
  %bf.load5.i173 = load i64, ptr %no_report_opcodes.i, align 4
  %bf.set7.i = or i64 %bf.load5.i173, 35184372088832
  store i64 %bf.set7.i, ptr %no_report_opcodes.i, align 4
  %call8.i174 = call i32 @scsi_get_vpd_page(ptr noundef %606, i8 noundef zeroext -119, ptr noundef %call7.i, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i174)
  %tobool9.not.i = icmp eq i32 %call8.i174, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then4.i.if.end16.i176_crit_edge

if.then4.i.if.end16.i176_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i176

if.then10.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  %613 = ptrtoint ptr %no_report_opcodes.i to i32
  call void @__asan_loadN_noabort(i32 %613, i32 8)
  %bf.load12.i = load i64, ptr %no_report_opcodes.i, align 4
  %bf.set14.i = or i64 %bf.load12.i, 17592186044416
  store i64 %bf.set14.i, ptr %no_report_opcodes.i, align 4
  br label %if.end16.i176

if.end16.i176:                                    ; preds = %if.then10.i, %if.then4.i.if.end16.i176_crit_edge, %if.end.i172.if.end16.i176_crit_edge
  %call17.i = call i32 @scsi_report_opcode(ptr noundef %606, ptr noundef %call7.i, i32 noundef 512, i8 noundef zeroext -109) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp18.i175 = icmp eq i32 %call17.i, 1
  br i1 %cmp18.i175, label %if.then19.i177, label %if.end16.i176.if.end23.i178_crit_edge

if.end16.i176.if.end23.i178_crit_edge:            ; preds = %if.end16.i176
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i178

if.then19.i177:                                   ; preds = %if.end16.i176
  call void @__sanitizer_cov_trace_pc() #19
  %614 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %614, i32 4)
  %bf.load20.i = load i32, ptr %first_scan.i66, align 2
  %bf.set22.i = or i32 %bf.load20.i, 262144
  store i32 %bf.set22.i, ptr %first_scan.i66, align 2
  br label %if.end23.i178

if.end23.i178:                                    ; preds = %if.then19.i177, %if.end16.i176.if.end23.i178_crit_edge
  %call24.i = call i32 @scsi_report_opcode(ptr noundef %606, ptr noundef %call7.i, i32 noundef 512, i8 noundef zeroext 65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 1
  br i1 %cmp25.i, label %if.then26.i, label %if.end23.i178.sd_read_write_same.exit_crit_edge

if.end23.i178.sd_read_write_same.exit_crit_edge:  ; preds = %if.end23.i178
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_write_same.exit

if.then26.i:                                      ; preds = %if.end23.i178
  call void @__sanitizer_cov_trace_pc() #19
  %615 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %615, i32 4)
  %bf.load27.i = load i32, ptr %first_scan.i66, align 2
  %bf.set29.i = or i32 %bf.load27.i, 524288
  store i32 %bf.set29.i, ptr %first_scan.i66, align 2
  br label %sd_read_write_same.exit

sd_read_write_same.exit:                          ; preds = %if.then26.i, %if.end23.i178.sd_read_write_same.exit_crit_edge, %if.then.i169
  %616 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %device, align 4
  %security_supported.i = getelementptr inbounds %struct.scsi_device, ptr %617, i32 0, i32 41
  %618 = ptrtoint ptr %security_supported.i to i32
  call void @__asan_loadN_noabort(i32 %618, i32 8)
  %bf.load.i181 = load i64, ptr %security_supported.i, align 4
  %619 = and i64 %bf.load.i181, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %619)
  %tobool.not.i182 = icmp eq i64 %619, 0
  br i1 %tobool.not.i182, label %sd_read_write_same.exit.sd_read_security.exit_crit_edge, label %if.end.i185

sd_read_write_same.exit.sd_read_security.exit_crit_edge: ; preds = %sd_read_write_same.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_security.exit

if.end.i185:                                      ; preds = %sd_read_write_same.exit
  %call.i183 = call i32 @scsi_report_opcode(ptr noundef %617, ptr noundef %call7.i, i32 noundef 512, i8 noundef zeroext -94) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i183)
  %cmp.i184 = icmp eq i32 %call.i183, 1
  br i1 %cmp.i184, label %land.lhs.true.i187, label %if.end.i185.sd_read_security.exit_crit_edge

if.end.i185.sd_read_security.exit_crit_edge:      ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_security.exit

land.lhs.true.i187:                               ; preds = %if.end.i185
  %call1.i186 = call i32 @scsi_report_opcode(ptr noundef %617, ptr noundef %call7.i, i32 noundef 512, i8 noundef zeroext -75) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i186)
  %cmp2.i = icmp eq i32 %call1.i186, 1
  br i1 %cmp2.i, label %if.then3.i, label %land.lhs.true.i187.sd_read_security.exit_crit_edge

land.lhs.true.i187.sd_read_security.exit_crit_edge: ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_security.exit

if.then3.i:                                       ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #19
  %620 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %620, i32 4)
  %bf.load4.i = load i32, ptr %first_scan.i66, align 2
  %bf.set.i188 = or i32 %bf.load4.i, 4096
  store i32 %bf.set.i188, ptr %first_scan.i66, align 2
  br label %sd_read_security.exit

sd_read_security.exit:                            ; preds = %if.then3.i, %land.lhs.true.i187.sd_read_security.exit_crit_edge, %if.end.i185.sd_read_security.exit_crit_edge, %sd_read_write_same.exit.sd_read_security.exit_crit_edge
  %621 = ptrtoint ptr %first_scan.i66 to i32
  call void @__asan_loadN_noabort(i32 %621, i32 4)
  %bf.load.i191 = load i32, ptr %first_scan.i66, align 2
  %622 = and i32 %bf.load.i191, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %tobool.not.i192 = icmp eq i32 %622, 0
  br i1 %tobool.not.i192, label %if.end.i194, label %sd_read_security.exit.if.end36_crit_edge

sd_read_security.exit.if.end36_crit_edge:         ; preds = %sd_read_security.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.end.i194:                                      ; preds = %sd_read_security.exit
  %623 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %623)
  %624 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %624)
  %tobool1.not.i = icmp eq i64 %624, 0
  br i1 %tobool1.not.i, label %if.end.i194.out.thread.i_crit_edge, label %if.end3.i

if.end.i194.out.thread.i_crit_edge:               ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread.i

if.end3.i:                                        ; preds = %if.end.i194
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8256, i32 noundef 3264, i32 noundef 2) #22
  %tobool4.not.i195 = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool4.not.i195, label %if.end3.i.out.thread.i_crit_edge, label %lor.lhs.false.i198

if.end3.i.out.thread.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread.i

lor.lhs.false.i198:                               ; preds = %if.end3.i
  %625 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %device, align 4
  %call5.i = call i32 @scsi_get_vpd_page(ptr noundef %626, i8 noundef zeroext -71, ptr noundef nonnull %call1.i.i.i, i32 noundef 8256) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i197 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i197, label %if.end8.i, label %lor.lhs.false.i198.out.thread.i_crit_edge

lor.lhs.false.i198.out.thread.i_crit_edge:        ; preds = %lor.lhs.false.i198
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread.i

if.end8.i:                                        ; preds = %lor.lhs.false.i198
  %arrayidx.i199 = getelementptr i8, ptr %call1.i.i.i, i32 2
  %627 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load2_noabort(i32 %627)
  %628 = load i16, ptr %arrayidx.i199, align 2
  %conv.i200 = zext i16 %628 to i32
  %add.i201 = add nuw nsw i32 %conv.i200, 3
  %629 = add i16 %628, -93
  call void @__sanitizer_cov_trace_const_cmp2(i16 8161, i16 %629)
  %630 = icmp ult i16 %629, 8161
  %and.i202 = and i32 %add.i201, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool15.not.i = icmp eq i32 %and.i202, 0
  %or.cond130.i = select i1 %630, i1 %tobool15.not.i, i1 false
  br i1 %or.cond130.i, label %if.end21.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end8.i
  %631 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %disk1, align 8
  %tobool17.not.i204 = icmp eq ptr %632, null
  %633 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %device, align 4
  br i1 %tobool17.not.i204, label %cond.false.i207, label %cond.true.i206

cond.true.i206:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name.i205 = getelementptr inbounds %struct.gendisk, ptr %632, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %634, ptr noundef %disk_name.i205, ptr noundef nonnull @.str.89) #17
  br label %out.thread.i

cond.false.i207:                                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %634, ptr noundef null, ptr noundef nonnull @.str.89) #17
  br label %out.thread.i

if.end21.i:                                       ; preds = %if.end8.i
  %sub.i208 = add nsw i32 %conv.i200, -61
  %div.i = sdiv i32 %sub.i208, 32
  %sub.off.i = add nsw i32 %conv.i200, -93
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.off.i)
  %635 = icmp ult i32 %sub.off.i, 32
  br i1 %635, label %if.end21.i.out.thread.i_crit_edge, label %if.end25.i210

if.end21.i.out.thread.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread.i

if.end25.i210:                                    ; preds = %if.end21.i
  %636 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %disk1, align 8
  %call27.i = call ptr @disk_alloc_independent_access_ranges(ptr noundef %637, i32 noundef %div.i) #17
  %tobool28.not.i209 = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i209, label %if.end25.i210.out.thread.i_crit_edge, label %if.end30.i

if.end25.i210.out.thread.i_crit_edge:             ; preds = %if.end25.i210
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread.i

if.end30.i:                                       ; preds = %if.end25.i210
  %sub.off157.i = add nsw i32 %conv.i200, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.off157.i)
  %638 = icmp ult i32 %sub.off157.i, 63
  br i1 %638, label %out.thread158.i, label %for.body.preheader.i

out.thread158.i:                                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %639 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %disk1, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %640, ptr noundef nonnull %call27.i) #17
  br label %if.end75.i

for.body.preheader.i:                             ; preds = %if.end30.i
  %arrayidx31.i = getelementptr i8, ptr %call1.i.i.i, i32 64
  %umax.i = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end49.i.for.body.i_crit_edge, %for.body.preheader.i
  %desc.0156.i = phi ptr [ %add.ptr56.i, %if.end49.i.for.body.i_crit_edge ], [ %arrayidx31.i, %for.body.preheader.i ]
  %i.0155.i = phi i32 [ %inc.i, %if.end49.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %641 = ptrtoint ptr %desc.0156.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %desc.0156.i, align 1
  %conv35.i = zext i8 %642 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0155.i, i32 %conv35.i)
  %cmp36.not.i = icmp eq i32 %i.0155.i, %conv35.i
  br i1 %cmp36.not.i, label %if.end49.i, label %if.then38.i212

if.then38.i212:                                   ; preds = %for.body.i
  %643 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %disk1, align 8
  %tobool40.not.i211 = icmp eq ptr %644, null
  %645 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %device, align 4
  br i1 %tobool40.not.i211, label %cond.false46.i215, label %cond.true41.i214

cond.true41.i214:                                 ; preds = %if.then38.i212
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name44.i213 = getelementptr inbounds %struct.gendisk, ptr %644, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %646, ptr noundef %disk_name44.i213, ptr noundef nonnull @.str.90) #17
  br label %out.thread.i

cond.false46.i215:                                ; preds = %if.then38.i212
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %646, ptr noundef null, ptr noundef nonnull @.str.90) #17
  br label %out.thread.i

if.end49.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %desc.0156.i, i32 8
  %647 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %647, i32 8)
  %648 = load i64, ptr %add.ptr.i, align 1
  %649 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %device, align 4
  %sector_size.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %650, i32 0, i32 20
  %651 = ptrtoint ptr %sector_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %sector_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %652)
  %tobool.not.i.i.i.i.i = icmp eq i32 %652, 0
  %653 = call i32 @llvm.ctlz.i32(i32 %652, i1 true) #17, !range !434
  %sub.i.op.i.i.i.i.op = sub nsw i32 22, %653
  %sub8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.i.i.op
  %sh_prom.i.i.i = zext i32 %sub8.i.i.i to i64
  %shl.i.i.i = shl i64 %648, %sh_prom.i.i.i
  %sector.i = getelementptr %struct.blk_independent_access_ranges, ptr %call27.i, i32 0, i32 3, i32 %i.0155.i, i32 2
  %654 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %654)
  store i64 %shl.i.i.i, ptr %sector.i, align 8
  %add.ptr52.i = getelementptr i8, ptr %desc.0156.i, i32 16
  %655 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_loadN_noabort(i32 %655, i32 8)
  %656 = load i64, ptr %add.ptr52.i, align 1
  %657 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %device, align 4
  %sector_size.i.i132.i = getelementptr inbounds %struct.scsi_device, ptr %658, i32 0, i32 20
  %659 = ptrtoint ptr %sector_size.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %sector_size.i.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %660)
  %tobool.not.i.i.i.i137.i = icmp eq i32 %660, 0
  %661 = call i32 @llvm.ctlz.i32(i32 %660, i1 true) #17, !range !434
  %sub.i.op.i.i.i138.i.op = sub nsw i32 22, %661
  %sub8.i.i142.i = select i1 %tobool.not.i.i.i.i137.i, i32 -10, i32 %sub.i.op.i.i.i138.i.op
  %sh_prom.i.i143.i = zext i32 %sub8.i.i142.i to i64
  %shl.i.i144.i = shl i64 %656, %sh_prom.i.i143.i
  %nr_sectors.i = getelementptr %struct.blk_independent_access_ranges, ptr %call27.i, i32 0, i32 3, i32 %i.0155.i, i32 3
  %662 = ptrtoint ptr %nr_sectors.i to i32
  call void @__asan_store8_noabort(i32 %662)
  store i64 %shl.i.i144.i, ptr %nr_sectors.i, align 8
  %inc.i = add nuw i32 %i.0155.i, 1
  %add.ptr56.i = getelementptr i8, ptr %desc.0156.i, i32 32
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %land.lhs.true.i218, label %if.end49.i.for.body.i_crit_edge

if.end49.i.for.body.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

out.thread.i:                                     ; preds = %cond.false46.i215, %cond.true41.i214, %if.end25.i210.out.thread.i_crit_edge, %if.end21.i.out.thread.i_crit_edge, %cond.false.i207, %cond.true.i206, %lor.lhs.false.i198.out.thread.i_crit_edge, %if.end3.i.out.thread.i_crit_edge, %if.end.i194.out.thread.i_crit_edge
  %iars.0.ph.i = phi ptr [ %call27.i, %cond.true41.i214 ], [ %call27.i, %cond.false46.i215 ], [ null, %if.end25.i210.out.thread.i_crit_edge ], [ null, %if.end21.i.out.thread.i_crit_edge ], [ null, %if.end.i194.out.thread.i_crit_edge ], [ null, %if.end3.i.out.thread.i_crit_edge ], [ null, %cond.false.i207 ], [ null, %cond.true.i206 ], [ null, %lor.lhs.false.i198.out.thread.i_crit_edge ]
  %buffer.0.ph.i = phi ptr [ %call1.i.i.i, %cond.true41.i214 ], [ %call1.i.i.i, %cond.false46.i215 ], [ %call1.i.i.i, %if.end25.i210.out.thread.i_crit_edge ], [ %call1.i.i.i, %if.end21.i.out.thread.i_crit_edge ], [ null, %if.end.i194.out.thread.i_crit_edge ], [ null, %if.end3.i.out.thread.i_crit_edge ], [ %call1.i.i.i, %cond.false.i207 ], [ %call1.i.i.i, %cond.true.i206 ], [ %call1.i.i.i, %lor.lhs.false.i198.out.thread.i_crit_edge ]
  %663 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %disk1, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %664, ptr noundef %iars.0.ph.i) #17
  br label %if.end75.i

land.lhs.true.i218:                               ; preds = %if.end49.i
  %665 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %disk1, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %666, ptr noundef nonnull %call27.i) #17
  %nr_actuators.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 36
  %667 = ptrtoint ptr %nr_actuators.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %nr_actuators.i, align 1
  %conv59.i = zext i8 %668 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv59.i)
  %cmp60.not.i = icmp eq i32 %div.i, %conv59.i
  br i1 %cmp60.not.i, label %land.lhs.true.i218.if.end75.i_crit_edge, label %if.then62.i

land.lhs.true.i218.if.end75.i_crit_edge:          ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75.i

if.then62.i:                                      ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #19
  %669 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %disk1, align 8
  %tobool64.not.i = icmp eq ptr %670, null
  %671 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %device, align 4
  %disk_name68.i = getelementptr inbounds %struct.gendisk, ptr %670, i32 0, i32 3
  %.sink.i219 = select i1 %tobool64.not.i, ptr null, ptr %disk_name68.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %672, ptr noundef %.sink.i219, ptr noundef nonnull @.str.91, i32 noundef %div.i) #17
  %conv73.i = trunc i32 %div.i to i8
  %673 = ptrtoint ptr %nr_actuators.i to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %conv73.i, ptr %nr_actuators.i, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then62.i, %land.lhs.true.i218.if.end75.i_crit_edge, %out.thread.i, %out.thread158.i
  %buffer.0151.i = phi ptr [ %buffer.0.ph.i, %out.thread.i ], [ %call1.i.i.i, %if.then62.i ], [ %call1.i.i.i, %land.lhs.true.i218.if.end75.i_crit_edge ], [ %call1.i.i.i, %out.thread158.i ]
  call void @kfree(ptr noundef %buffer.0151.i) #17
  br label %if.end36

if.end36:                                         ; preds = %if.end75.i, %sd_read_security.exit.if.end36_crit_edge, %sd_spinup_disk.exit.if.end36_crit_edge
  %WCE.i221 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %674 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %674, i32 4)
  %bf.load.i222 = load i32, ptr %WCE.i221, align 2
  %675 = and i32 %bf.load.i222, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %675)
  %tobool.not.i223 = icmp ne i32 %675, 0
  %676 = and i32 %bf.load.i222, 671088640
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %676)
  %.not.i224 = icmp eq i32 %676, 671088640
  %677 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %disk1, align 8
  %queue.i226 = getelementptr inbounds %struct.gendisk, ptr %678, i32 0, i32 9
  %679 = ptrtoint ptr %queue.i226 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %queue.i226, align 4
  call void @blk_queue_write_cache(ptr noundef %680, i1 noundef zeroext %tobool.not.i223, i1 noundef zeroext %.not.i224) #17
  %use_16_for_rw = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 41
  %681 = ptrtoint ptr %use_16_for_rw to i32
  call void @__asan_loadN_noabort(i32 %681, i32 8)
  %bf.load = load i64, ptr %use_16_for_rw, align 4
  %682 = and i64 %bf.load, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %682)
  %tobool37.not = icmp eq i64 %682, 0
  %cond = select i1 %tobool37.not, i32 65535, i32 -1
  %max_xfer_blocks = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 21
  %683 = ptrtoint ptr %max_xfer_blocks to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %max_xfer_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %684)
  %cmp41 = icmp eq i32 %684, 0
  %685 = call i32 @llvm.umin.i32(i32 %cond, i32 %684)
  %cond53 = select i1 %cmp41, i32 %cond, i32 %685
  %conv = zext i32 %cond53 to i64
  %sector_size.i227 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 20
  %686 = ptrtoint ptr %sector_size.i227 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %sector_size.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %687)
  %tobool.not.i.i.i232 = icmp eq i32 %687, 0
  %688 = call i32 @llvm.ctlz.i32(i32 %687, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %688
  %sub8.i = select i1 %tobool.not.i.i.i232, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shl.i233 = shl i64 %conv, %sh_prom.i
  %conv55 = trunc i64 %shl.i233 to i32
  %max_dev_sectors = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 4
  %689 = ptrtoint ptr %max_dev_sectors to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %conv55, ptr %max_dev_sectors, align 4
  %690 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %device, align 4
  %opt_xfer_blocks.i235 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 22
  %692 = ptrtoint ptr %opt_xfer_blocks.i235 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %opt_xfer_blocks.i235, align 8
  %sector_size.i.i = getelementptr inbounds %struct.scsi_device, ptr %691, i32 0, i32 20
  %694 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %sector_size.i.i, align 4
  %conv1.i.i = mul i32 %695, %693
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %693)
  %cmp.i236 = icmp eq i32 %693, 0
  br i1 %cmp.i236, label %if.end36.if.else_crit_edge, label %if.end.i238

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.end.i238:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %693, i32 %cond53)
  %cmp4.i237 = icmp ugt i32 %693, %cond53
  br i1 %cmp4.i237, label %do.body.i242, label %if.end15.i

do.body.i242:                                     ; preds = %if.end.i238
  %696 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %696, i32 4)
  %bf.load.i240 = load i32, ptr %WCE.i221, align 2
  %697 = and i32 %bf.load.i240, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %697)
  %tobool.not.i241 = icmp eq i32 %697, 0
  br i1 %tobool.not.i241, label %do.body.i242.if.else_crit_edge, label %if.then7.i

do.body.i242.if.else_crit_edge:                   ; preds = %do.body.i242
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then7.i:                                       ; preds = %do.body.i242
  %698 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %disk1, align 8
  %tobool8.not.i = icmp eq ptr %699, null
  br i1 %tobool8.not.i, label %cond.false.i246, label %cond.true.i245

cond.true.i245:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name.i244 = getelementptr inbounds %struct.gendisk, ptr %699, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef %disk_name.i244, ptr noundef nonnull @.str.92, i32 noundef %693, i32 noundef %cond53) #17
  br label %if.else

cond.false.i246:                                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef %693, i32 noundef %cond53) #17
  br label %if.else

if.end15.i:                                       ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %693)
  %cmp17.i247 = icmp ugt i32 %693, 65535
  br i1 %cmp17.i247, label %do.body20.i, label %if.end42.i250

do.body20.i:                                      ; preds = %if.end15.i
  %700 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %700, i32 4)
  %bf.load22.i = load i32, ptr %WCE.i221, align 2
  %701 = and i32 %bf.load22.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %701)
  %tobool25.not.i = icmp eq i32 %701, 0
  br i1 %tobool25.not.i, label %do.body20.i.if.else_crit_edge, label %if.then26.i249

do.body20.i.if.else_crit_edge:                    ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then26.i249:                                   ; preds = %do.body20.i
  %702 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %disk1, align 8
  %tobool28.not.i248 = icmp eq ptr %703, null
  br i1 %tobool28.not.i248, label %cond.false35.i, label %cond.true29.i

cond.true29.i:                                    ; preds = %if.then26.i249
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name32.i = getelementptr inbounds %struct.gendisk, ptr %703, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef %disk_name32.i, ptr noundef nonnull @.str.93, i32 noundef %693, i32 noundef 65535) #17
  br label %if.else

cond.false35.i:                                   ; preds = %if.then26.i249
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef null, ptr noundef nonnull @.str.93, i32 noundef %693, i32 noundef 65535) #17
  br label %if.else

if.end42.i250:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv1.i.i)
  %cmp43.i = icmp ult i32 %conv1.i.i, 4096
  br i1 %cmp43.i, label %do.body46.i, label %if.end66.i

do.body46.i:                                      ; preds = %if.end42.i250
  %704 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %704, i32 4)
  %bf.load48.i = load i32, ptr %WCE.i221, align 2
  %705 = and i32 %bf.load48.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %705)
  %tobool51.not.i = icmp eq i32 %705, 0
  br i1 %tobool51.not.i, label %do.body46.i.if.else_crit_edge, label %if.then52.i

do.body46.i.if.else_crit_edge:                    ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then52.i:                                      ; preds = %do.body46.i
  %706 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %disk1, align 8
  %tobool54.not.i = icmp eq ptr %707, null
  br i1 %tobool54.not.i, label %cond.false60.i, label %cond.true55.i

cond.true55.i:                                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name58.i = getelementptr inbounds %struct.gendisk, ptr %707, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef %disk_name58.i, ptr noundef nonnull @.str.94, i32 noundef %conv1.i.i, i32 noundef 4096) #17
  br label %if.else

cond.false60.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef %conv1.i.i, i32 noundef 4096) #17
  br label %if.else

if.end66.i:                                       ; preds = %if.end42.i250
  %physical_block_size.i251 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 28
  %708 = ptrtoint ptr %physical_block_size.i251 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %physical_block_size.i251, align 8
  %sub.i252 = add i32 %709, -1
  %and.i253 = and i32 %sub.i252, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool67.not.i = icmp eq i32 %and.i253, 0
  %710 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %710, i32 4)
  %bf.load94.i = load i32, ptr %WCE.i221, align 2
  %711 = and i32 %bf.load94.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %711)
  %tobool97.not.i = icmp eq i32 %711, 0
  br i1 %tobool67.not.i, label %do.body92.i, label %do.body69.i

do.body69.i:                                      ; preds = %if.end66.i
  br i1 %tobool97.not.i, label %do.body69.i.if.else_crit_edge, label %if.then75.i

do.body69.i.if.else_crit_edge:                    ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then75.i:                                      ; preds = %do.body69.i
  %712 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %disk1, align 8
  %tobool77.not.i = icmp eq ptr %713, null
  br i1 %tobool77.not.i, label %cond.false84.i, label %cond.true78.i

cond.true78.i:                                    ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name81.i = getelementptr inbounds %struct.gendisk, ptr %713, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef %disk_name81.i, ptr noundef nonnull @.str.95, i32 noundef %conv1.i.i, i32 noundef %709) #17
  br label %if.else

cond.false84.i:                                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %691, ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef %conv1.i.i, i32 noundef %709) #17
  br label %if.else

do.body92.i:                                      ; preds = %if.end66.i
  br i1 %tobool97.not.i, label %do.body92.i.if.then57_crit_edge, label %if.then98.i

do.body92.i.if.then57_crit_edge:                  ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then57

if.then98.i:                                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #19
  %714 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %disk1, align 8
  %tobool100.not.i = icmp eq ptr %715, null
  %disk_name104.i = getelementptr inbounds %struct.gendisk, ptr %715, i32 0, i32 3
  %.sink = select i1 %tobool100.not.i, ptr null, ptr %disk_name104.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %691, ptr noundef %.sink, ptr noundef nonnull @.str.96, i32 noundef %conv1.i.i) #17
  br label %if.then57

if.then57:                                        ; preds = %if.then98.i, %do.body92.i.if.then57_crit_edge
  %716 = ptrtoint ptr %opt_xfer_blocks.i235 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %opt_xfer_blocks.i235, align 8
  %718 = ptrtoint ptr %sector_size.i227 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %sector_size.i227, align 4
  %conv1.i = mul i32 %719, %717
  %io_opt = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 12
  %720 = ptrtoint ptr %io_opt to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 %conv1.i, ptr %io_opt, align 4
  %721 = load i32, ptr %opt_xfer_blocks.i235, align 8
  %conv62 = zext i32 %721 to i64
  %722 = load i32, ptr %sector_size.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %722)
  %tobool.not.i.i.i262 = icmp eq i32 %722, 0
  %723 = call i32 @llvm.ctlz.i32(i32 %722, i1 true) #17, !range !434
  %sub.i.op.i.i263.op = sub nsw i32 22, %723
  %sub8.i267 = select i1 %tobool.not.i.i.i262, i32 -10, i32 %sub.i.op.i.i263.op
  %sh_prom.i268 = zext i32 %sub8.i267 to i64
  %shl.i269 = shl i64 %conv62, %sh_prom.i268
  %conv64 = trunc i64 %shl.i269 to i32
  br label %if.end92

if.else:                                          ; preds = %cond.false84.i, %cond.true78.i, %do.body69.i.if.else_crit_edge, %cond.false60.i, %cond.true55.i, %do.body46.i.if.else_crit_edge, %cond.false35.i, %cond.true29.i, %do.body20.i.if.else_crit_edge, %cond.false.i246, %cond.true.i245, %do.body.i242.if.else_crit_edge, %if.end36.if.else_crit_edge
  %io_opt66 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 12
  %724 = ptrtoint ptr %io_opt66 to i32
  call void @__asan_store4_noabort(i32 %724)
  store i32 0, ptr %io_opt66, align 4
  %725 = ptrtoint ptr %sector_size.i227 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %sector_size.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %726)
  %tobool.not.i.i.i276 = icmp eq i32 %726, 0
  %727 = call i32 @llvm.ctlz.i32(i32 %726, i1 true) #17, !range !434
  %sub.i.op.i.i277.op = sub nsw i32 22, %727
  %sub8.i281 = select i1 %tobool.not.i.i.i276, i32 -10, i32 %sub.i.op.i.i277.op
  %sh_prom.i282 = zext i32 %sub8.i281 to i64
  %shl.i283 = shl i64 %conv, %sh_prom.i282
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i283)
  %cmp72 = icmp eq i64 %shl.i283, 0
  br i1 %cmp72, label %if.else.if.end92_crit_edge, label %cond.false79

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

cond.false79:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %728 = call i64 @llvm.umin.i64(i64 %shl.i283, i64 2560)
  %729 = trunc i64 %728 to i32
  br label %if.end92

if.end92:                                         ; preds = %cond.false79, %if.else.if.end92_crit_edge, %if.then57
  %rw_max.0 = phi i32 [ %conv64, %if.then57 ], [ %729, %cond.false79 ], [ 2560, %if.else.if.end92_crit_edge ]
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 3
  %730 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %max_hw_sectors.i, align 4
  %732 = call i32 @llvm.umin.i32(i32 %rw_max.0, i32 %731)
  %733 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %733, i32 4)
  %bf.load101 = load i32, ptr %WCE.i221, align 2
  %734 = and i32 %bf.load101, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %734)
  %tobool104.not = icmp eq i32 %734, 0
  br i1 %tobool104.not, label %lor.lhs.false, label %if.end92.if.then116_crit_edge

if.end92.if.then116_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then116

lor.lhs.false:                                    ; preds = %if.end92
  %max_sectors = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 6
  %735 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %max_sectors, align 4
  %737 = ptrtoint ptr %max_dev_sectors to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %max_dev_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %736, i32 %738)
  %cmp108 = icmp ugt i32 %736, %738
  call void @__sanitizer_cov_trace_cmp4(i32 %736, i32 %731)
  %cmp114 = icmp ugt i32 %736, %731
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp114
  br i1 %or.cond, label %lor.lhs.false.if.then116_crit_edge, label %lor.lhs.false.if.end119_crit_edge

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %if.end92.if.then116_crit_edge
  %max_sectors118 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 6
  %739 = ptrtoint ptr %max_sectors118 to i32
  call void @__asan_store4_noabort(i32 %739)
  store i32 %732, ptr %max_sectors118, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %lor.lhs.false.if.end119_crit_edge
  %740 = ptrtoint ptr %WCE.i221 to i32
  call void @__asan_loadN_noabort(i32 %740, i32 4)
  %bf.load121 = load i32, ptr %WCE.i221, align 2
  %bf.clear122 = and i32 %bf.load121, -67108865
  store i32 %bf.clear122, ptr %WCE.i221, align 2
  %741 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %741)
  %742 = load i64, ptr %capacity, align 8
  %743 = ptrtoint ptr %sector_size.i227 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %sector_size.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %744)
  %tobool.not.i.i.i290 = icmp eq i32 %744, 0
  %745 = call i32 @llvm.ctlz.i32(i32 %744, i1 true) #17, !range !434
  %sub.i.op.i.i291.op = sub nsw i32 22, %745
  %sub8.i295 = select i1 %tobool.not.i.i.i290, i32 -10, i32 %sub.i.op.i.i291.op
  %sh_prom.i296 = zext i32 %sub8.i295 to i64
  %shl.i297 = shl i64 %742, %sh_prom.i296
  %call125 = call zeroext i1 @set_capacity_and_notify(ptr noundef %disk, i64 noundef %shl.i297) #17
  call fastcc void @sd_config_write_same(ptr noundef %1)
  call void @kfree(ptr noundef nonnull %call7.i) #17
  %call126 = call i32 @sd_zbc_revalidate_zones(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end119.out_crit_edge, label %if.then128

if.end119.out_crit_edge:                          ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then128:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %call129 = call zeroext i1 @set_capacity_and_notify(ptr noundef %disk, i64 noundef 0) #17
  br label %out

out:                                              ; preds = %if.then128, %if.end119.out_crit_edge, %cond.false25, %cond.true20, %do.end10.out_crit_edge, %do.end10.out_crit_edge401, %do.end10.out_crit_edge402
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pm_runtime_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_dif_config_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_opal_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_sec_submit(ptr nocapture noundef readonly %data, i16 noundef zeroext %spsp, i8 noundef zeroext %secp, ptr noundef %buffer, i32 noundef %len, i1 noundef zeroext %send) #4 align 64 {
entry:
  %cdb = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdb) #17
  %2 = getelementptr inbounds i8, ptr %cdb, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 1
  %conv = select i1 %send, i8 -75, i8 -94
  %4 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %cdb, align 1
  %arrayidx1 = getelementptr inbounds [12 x i8], ptr %cdb, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %secp, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %cdb, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %spsp, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %cdb, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %len, ptr %arrayidx3, align 1
  %cond6 = select i1 %send, i32 1, i32 2
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %data, i32 0, i32 20
  %8 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_retries, align 8
  %call = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cdb, i32 noundef %cond6, ptr noundef %buffer, i32 noundef %len, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef %9, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  %spec.select = select i1 %cmp, i32 %call, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdb) #17
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_zbc_release_disk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_open(ptr noundef %bdev, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.scsi_disk_get.exit.thread_crit_edge, label %if.then.i

entry.scsi_disk_get.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_disk_get.exit.thread

if.then.i:                                        ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %call1.i = tail call i32 @scsi_device_get(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body, label %if.then.i.scsi_disk_get.exit.thread_crit_edge

if.then.i.scsi_disk_get.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_disk_get.exit.thread

scsi_disk_get.exit.thread:                        ; preds = %if.then.i.scsi_disk_get.exit.thread_crit_edge, %entry.scsi_disk_get.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %cleanup

do.body:                                          ; preds = %if.then.i
  %dev.i = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 2
  %call3.i = tail call ptr @get_device(ptr noundef %dev.i) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %6 = load i32, ptr @scsi_logging_level, align 4
  %7 = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.do.end11_crit_edge, label %do.body5, !prof !432

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk, align 8
  %tobool6.not = icmp eq ptr %9, null
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %disk_name.sink = select i1 %tobool6.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %11, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.20) #17
  br label %do.end11

do.end11:                                         ; preds = %do.body5, %do.body.do.end11_crit_edge
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %call13 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end11.error_out_crit_edge, label %if.end16

do.end11.error_out_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end16:                                         ; preds = %do.end11
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %removable.i = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 41
  %16 = ptrtoint ptr %removable.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load.i = load i64, ptr %removable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load.i)
  %tobool.not.i77 = icmp sgt i64 %bf.load.i, -1
  br i1 %tobool.not.i77, label %lor.lhs.false.i, label %if.end16.if.then.i78_crit_edge

if.end16.if.then.i78_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i78

lor.lhs.false.i:                                  ; preds = %if.end16
  %write_prot.i = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 32
  %17 = ptrtoint ptr %write_prot.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_prot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sd_need_revalidate.exit_crit_edge, label %lor.lhs.false.i.if.then.i78_crit_edge

lor.lhs.false.i.if.then.i78_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i78

lor.lhs.false.i.sd_need_revalidate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_need_revalidate.exit

if.then.i78:                                      ; preds = %lor.lhs.false.i.if.then.i78_crit_edge, %if.end16.if.then.i78_crit_edge
  %call.i = tail call zeroext i1 @bdev_check_media_change(ptr noundef %bdev) #17
  br i1 %call.i, label %if.then.i78.if.then18_crit_edge, label %if.then.i78.sd_need_revalidate.exit_crit_edge

if.then.i78.sd_need_revalidate.exit_crit_edge:    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_need_revalidate.exit

if.then.i78.if.then18_crit_edge:                  ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

sd_need_revalidate.exit:                          ; preds = %if.then.i78.sd_need_revalidate.exit_crit_edge, %lor.lhs.false.i.sd_need_revalidate.exit_crit_edge
  %19 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_disk, align 8
  %state.i = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.i.not, label %sd_need_revalidate.exit.if.end21_crit_edge, label %sd_need_revalidate.exit.if.then18_crit_edge

sd_need_revalidate.exit.if.then18_crit_edge:      ; preds = %sd_need_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

sd_need_revalidate.exit.if.end21_crit_edge:       ; preds = %sd_need_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then18:                                        ; preds = %sd_need_revalidate.exit.if.then18_crit_edge, %if.then.i78.if.then18_crit_edge
  %23 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_disk, align 8
  tail call fastcc void @sd_revalidate_disk(ptr noundef %24)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %sd_need_revalidate.exit.if.end21_crit_edge
  %removable = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 41
  %25 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool22.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end21
  %media_present = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 31
  %26 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %media_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not = icmp eq i8 %27, 0
  %and25 = and i32 %mode, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond = and i1 %tobool26.not, %tobool23.not
  br i1 %or.cond, label %land.lhs.true.error_out_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

land.lhs.true.error_out_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %write_prot = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 32
  %28 = ptrtoint ptr %write_prot to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_prot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool29.not = icmp eq i8 %29, 0
  %and31 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond75 = or i1 %tobool32.not, %tobool29.not
  br i1 %or.cond75, label %if.end34, label %if.end28.error_out_crit_edge

if.end28.error_out_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end34:                                         ; preds = %if.end28
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 69
  %30 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sdev_state.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %31, label %if.end38 [
    i32 7, label %if.end34.error_out_crit_edge
    i32 6, label %if.end34.error_out_crit_edge87
    i32 4, label %if.end34.error_out_crit_edge88
  ]

if.end34.error_out_crit_edge88:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end34.error_out_crit_edge87:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end34.error_out_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %error_out

if.end38:                                         ; preds = %if.end34
  %openers = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !438
  tail call void @llvm.prefetch.p0(ptr %openers, i32 1, i32 3, i32 1) #17
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %openers, ptr %openers, i32 1, ptr elementtype(i32) %openers) #17, !srcloc !439
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !440
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp40 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp40, label %land.lhs.true42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end38
  %34 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load44 = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load44)
  %tobool47.not = icmp sgt i64 %bf.load44, -1
  br i1 %tobool47.not, label %land.lhs.true42.cleanup_crit_edge, label %if.then48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true42
  %call49 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  %call52 = tail call i32 @scsi_set_medium_removal(ptr noundef %13, i8 noundef zeroext 1) #17
  br label %cleanup

error_out:                                        ; preds = %if.end34.error_out_crit_edge, %if.end34.error_out_crit_edge87, %if.end34.error_out_crit_edge88, %if.end28.error_out_crit_edge, %land.lhs.true.error_out_crit_edge, %do.end11.error_out_crit_edge
  %retval1.0 = phi i32 [ -6, %if.end34.error_out_crit_edge ], [ -6, %do.end11.error_out_crit_edge ], [ -123, %land.lhs.true.error_out_crit_edge ], [ -30, %if.end28.error_out_crit_edge ], [ -6, %if.end34.error_out_crit_edge87 ], [ -6, %if.end34.error_out_crit_edge88 ]
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  tail call void @put_device(ptr noundef %dev.i) #17
  tail call void @scsi_device_put(ptr noundef %36) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.then51, %if.then48.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %scsi_disk_get.exit.thread
  %retval.0 = phi i32 [ %retval1.0, %error_out ], [ 0, %if.then48.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %land.lhs.true42.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ -6, %scsi_disk_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %4 = load i32, ptr @scsi_logging_level, align 4
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.do.end9_crit_edge, label %do.body2, !prof !432

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %disk3 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %disk3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk3, align 8
  %tobool4.not = icmp eq ptr %7, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 3
  %disk_name.sink = select i1 %tobool4.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.23) #17
  br label %do.end9

do.end9:                                          ; preds = %do.body2, %entry.do.end9_crit_edge
  %openers = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !441
  tail call void @llvm.prefetch.p0(ptr %openers, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %openers, ptr %openers, i32 1, ptr elementtype(i32) %openers) #17, !srcloc !442
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp11 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp11, label %land.lhs.true, label %do.end9.if.end19_crit_edge

do.end9.if.end19_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end9
  %removable = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 41
  %9 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool12.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool12.not, label %land.lhs.true.if.end19_crit_edge, label %if.then13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end19_crit_edge, label %if.then16

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  %call17 = tail call i32 @scsi_set_medium_removal(ptr noundef %3, i8 noundef zeroext 0) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %do.end9.if.end19_crit_edge
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  %dev.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 2
  tail call void @put_device(ptr noundef %dev.i) #17
  tail call void @scsi_device_put(ptr noundef %11) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = inttoptr i32 %arg to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %7 = load i32, ptr @scsi_logging_level, align 4
  %8 = and i32 %7, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %entry.do.end13_crit_edge, label %do.body2, !prof !432

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %disk3 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %disk3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk3, align 8
  %tobool4.not = icmp eq ptr %10, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 3
  %disk_name.sink = select i1 %tobool4.not, ptr null, ptr %disk_name
  %disk_name7 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.24, ptr noundef %disk_name7, i32 noundef %cmd) #17
  br label %do.end13

do.end13:                                         ; preds = %do.body2, %entry.do.end13_crit_edge
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15
  %11 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.not, label %do.end13.if.end17_crit_edge, label %land.lhs.true

do.end13.if.end17_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

land.lhs.true:                                    ; preds = %do.end13
  %call15 = tail call zeroext i1 @capable(i32 noundef 17) #17
  br i1 %call15, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %do.end13.if.end17_crit_edge
  %and18 = and i32 %mode, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp ne i32 %and18, 0
  %call20 = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %5, i32 noundef %cmd, i1 noundef zeroext %cmp19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %cmd, label %if.end27 [
    i32 1092120796, label %if.end23.if.then25_crit_edge
    i32 1092120797, label %if.end23.if.then25_crit_edge51
    i32 1091072222, label %if.end23.if.then25_crit_edge52
    i32 1092120799, label %if.end23.if.then25_crit_edge53
    i32 1109422304, label %if.end23.if.then25_crit_edge54
    i32 1091596513, label %if.end23.if.then25_crit_edge55
    i32 1091072226, label %if.end23.if.then25_crit_edge56
    i32 1093169379, label %if.end23.if.then25_crit_edge57
    i32 1092120804, label %if.end23.if.then25_crit_edge58
    i32 1091596517, label %if.end23.if.then25_crit_edge59
    i32 1091596518, label %if.end23.if.then25_crit_edge60
    i32 1091596519, label %if.end23.if.then25_crit_edge61
    i32 1091072232, label %if.end23.if.then25_crit_edge62
    i32 1091596521, label %if.end23.if.then25_crit_edge63
    i32 1092645098, label %if.end23.if.then25_crit_edge64
    i32 1094217963, label %if.end23.if.then25_crit_edge65
  ]

if.end23.if.then25_crit_edge65:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge64:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge63:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge62:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge61:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge60:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge59:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge58:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge57:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge56:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge55:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge54:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge53:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge52:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge51:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end23.if.then25_crit_edge51, %if.end23.if.then25_crit_edge52, %if.end23.if.then25_crit_edge53, %if.end23.if.then25_crit_edge54, %if.end23.if.then25_crit_edge55, %if.end23.if.then25_crit_edge56, %if.end23.if.then25_crit_edge57, %if.end23.if.then25_crit_edge58, %if.end23.if.then25_crit_edge59, %if.end23.if.then25_crit_edge60, %if.end23.if.then25_crit_edge61, %if.end23.if.then25_crit_edge62, %if.end23.if.then25_crit_edge63, %if.end23.if.then25_crit_edge64, %if.end23.if.then25_crit_edge65
  %opal_dev = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %opal_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %opal_dev, align 4
  %call26 = tail call i32 @sed_ioctl(ptr noundef %15, i32 noundef %cmd, ptr noundef %6) #17
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call i32 @scsi_ioctl(ptr noundef %5, i32 noundef %mode, i32 noundef %cmd, ptr noundef %6) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then25 ], [ %call28, %if.end27 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_check_events(ptr nocapture noundef readonly %disk, i32 noundef %clearing) #4 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.scsi_disk_get.exit.thread_crit_edge, label %if.then.i

entry.scsi_disk_get.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_disk_get.exit.thread

if.then.i:                                        ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %call1.i = tail call i32 @scsi_device_get(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.end, label %if.then.i.scsi_disk_get.exit.thread_crit_edge

if.then.i.scsi_disk_get.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %scsi_disk_get.exit.thread

scsi_disk_get.exit.thread:                        ; preds = %if.then.i.scsi_disk_get.exit.thread_crit_edge, %entry.scsi_disk_get.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %cleanup46

if.end:                                           ; preds = %if.then.i
  %dev.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 2
  %call3.i = tail call ptr @get_device(ptr noundef %dev.i) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %6 = load i32, ptr @scsi_logging_level, align 4
  %7 = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.do.end13_crit_edge, label %do.body5, !prof !432

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %disk6 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %disk6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk6, align 8
  %tobool7.not = icmp eq ptr %9, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %disk_name.sink = select i1 %tobool7.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.25) #17
  br label %do.end13

do.end13:                                         ; preds = %do.body5, %if.end.do.end13_crit_edge
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 69
  %10 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdev_state.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %11, label %if.end17 [
    i32 7, label %do.end13.if.then16_crit_edge
    i32 6, label %do.end13.if.then16_crit_edge100
    i32 4, label %do.end13.if.then16_crit_edge101
  ]

do.end13.if.then16_crit_edge101:                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

do.end13.if.then16_crit_edge100:                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

do.end13.if.then16_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

if.then16:                                        ; preds = %do.end13.if.then16_crit_edge, %do.end13.if.then16_crit_edge100, %do.end13.if.then16_crit_edge101
  %media_present.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %media_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i69 = icmp eq i8 %14, 0
  br i1 %tobool.not.i69, label %if.then16.if.end.i_crit_edge, label %if.then.i71

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i71:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i, align 4
  %changed.i = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i = load i64, ptr %changed.i, align 4
  %bf.set.i = or i64 %bf.load.i, 4611686018427387904
  store i64 %bf.set.i, ptr %changed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i71, %if.then16.if.end.i_crit_edge
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %removable.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 41
  %20 = ptrtoint ptr %removable.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load2.i = load i64, ptr %removable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i)
  %tobool3.not.i = icmp sgt i64 %bf.load2.i, -1
  br i1 %tobool3.not.i, label %if.end.i.out_crit_edge, label %if.then4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %media_present.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %media_present.i, align 4
  %capacity.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %capacity.i, align 8
  br label %out

if.end17:                                         ; preds = %do.end13
  %call18 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end32_crit_edge, label %if.then20

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %23 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %sshdr, align 8
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_retries, align 8
  %call21 = call i32 @scsi_test_unit_ready(ptr noundef %5, i32 noundef 3000, i32 noundef %25, ptr noundef nonnull %sshdr) #17
  %26 = and i32 %call21, -2130771968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.then20
  %media_present.i72 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %media_present.i72 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %media_present.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i73 = icmp eq i8 %29, 0
  br i1 %tobool.not.i73, label %if.then26.if.end.i83_crit_edge, label %if.then.i78

if.then26.if.end.i83_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i83

if.then.i78:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device.i, align 4
  %changed.i75 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 41
  %32 = ptrtoint ptr %changed.i75 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i76 = load i64, ptr %changed.i75, align 4
  %bf.set.i77 = or i64 %bf.load.i76, 4611686018427387904
  store i64 %bf.set.i77, ptr %changed.i75, align 4
  br label %if.end.i83

if.end.i83:                                       ; preds = %if.then.i78, %if.then26.if.end.i83_crit_edge
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  %removable.i80 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %removable.i80 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load2.i81 = load i64, ptr %removable.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i81)
  %tobool3.not.i82 = icmp sgt i64 %bf.load2.i81, -1
  br i1 %tobool3.not.i82, label %if.end.i83.cleanup.thread_crit_edge, label %if.end.i83.cleanup.thread.sink.split_crit_edge

if.end.i83.cleanup.thread.sink.split_crit_edge:   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.sink.split

if.end.i83.cleanup.thread_crit_edge:              ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end27:                                         ; preds = %if.then20
  %36 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sshdr, align 8
  %38 = and i8 %37, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %38)
  %cmp.i.i = icmp eq i8 %38, 112
  br i1 %cmp.i.i, label %if.end.i87, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i87:                                       ; preds = %if.end27
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %39 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sense_key.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %40, label %if.end.i87.cleanup_crit_edge [
    i8 6, label %if.end.i87.sw.bb.i_crit_edge
    i8 2, label %if.end.i87.sw.bb.i_crit_edge102
  ]

if.end.i87.sw.bb.i_crit_edge102:                  ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i87.sw.bb.i_crit_edge:                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i87.cleanup_crit_edge:                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i87.sw.bb.i_crit_edge, %if.end.i87.sw.bb.i_crit_edge102
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %42 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %asc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %43)
  %cmp.i88 = icmp eq i8 %43, 58
  br i1 %cmp.i88, label %if.then3.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3.i:                                       ; preds = %sw.bb.i
  %media_present.i.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %44 = ptrtoint ptr %media_present.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %media_present.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i7.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i7.i, label %if.then3.i.if.end.i8.i_crit_edge, label %if.then.i.i

if.then3.i.if.end.i8.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i8.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i, align 4
  %changed.i.i = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 41
  %48 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %bf.load.i.i = load i64, ptr %changed.i.i, align 4
  %bf.set.i.i = or i64 %bf.load.i.i, 4611686018427387904
  store i64 %bf.set.i.i, ptr %changed.i.i, align 4
  br label %if.end.i8.i

if.end.i8.i:                                      ; preds = %if.then.i.i, %if.then3.i.if.end.i8.i_crit_edge
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i, align 4
  %removable.i.i = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 41
  %51 = ptrtoint ptr %removable.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %bf.load2.i.i = load i64, ptr %removable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i.i)
  %tobool3.not.i.i = icmp sgt i64 %bf.load2.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end.i8.i.cleanup.thread_crit_edge, label %if.end.i8.i.cleanup.thread.sink.split_crit_edge

if.end.i8.i.cleanup.thread.sink.split_crit_edge:  ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.sink.split

if.end.i8.i.cleanup.thread_crit_edge:             ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

cleanup.thread.sink.split:                        ; preds = %if.end.i8.i.cleanup.thread.sink.split_crit_edge, %if.end.i83.cleanup.thread.sink.split_crit_edge
  %media_present.i72.sink = phi ptr [ %media_present.i72, %if.end.i83.cleanup.thread.sink.split_crit_edge ], [ %media_present.i.i, %if.end.i8.i.cleanup.thread.sink.split_crit_edge ]
  %52 = ptrtoint ptr %media_present.i72.sink to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %media_present.i72.sink, align 4
  %capacity.i84 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 19
  %53 = ptrtoint ptr %capacity.i84 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %capacity.i84, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end.i8.i.cleanup.thread_crit_edge, %if.end.i83.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  br label %out

cleanup:                                          ; preds = %sw.bb.i.cleanup_crit_edge, %if.end.i87.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %if.end17.if.end32_crit_edge
  %media_present = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %54 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %media_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool33.not = icmp eq i8 %55, 0
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %changed = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %56 = ptrtoint ptr %changed to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %bf.load = load i64, ptr %changed, align 4
  %bf.set = or i64 %bf.load, 4611686018427387904
  store i64 %bf.set, ptr %changed, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %57 = ptrtoint ptr %media_present to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %media_present, align 4
  br label %out

out:                                              ; preds = %if.end35, %cleanup.thread, %if.then4.i, %if.end.i.out_crit_edge
  %changed37 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %58 = ptrtoint ptr %changed37 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load38 = load i64, ptr %changed37, align 4
  %bf.clear43 = and i64 %bf.load38, -4611686018427387905
  store i64 %bf.clear43, ptr %changed37, align 4
  %59 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @sd_ref_mutex, i32 noundef 0) #17
  call void @put_device(ptr noundef %dev.i) #17
  call void @scsi_device_put(ptr noundef %60) #17
  call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  %61 = lshr i64 %bf.load38, 62
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 1
  br label %cleanup46

cleanup46:                                        ; preds = %out, %scsi_disk_get.exit.thread
  %retval.0 = phi i32 [ %63, %out ], [ 0, %scsi_disk_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_unlock_native_capacity(ptr nocapture noundef readonly %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostt, align 8
  %unlock_native_capacity = getelementptr inbounds %struct.scsi_host_template, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %unlock_native_capacity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_native_capacity, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %9(ptr noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_getgeo(ptr noundef %bdev, ptr nocapture noundef writeonly %geo) #4 align 64 {
entry:
  %diskinfo = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %capacity2 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %capacity2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %capacity2, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %12
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shl.i = shl i64 %9, %sh_prom.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diskinfo) #17
  %13 = getelementptr inbounds [4 x i32], ptr %diskinfo, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i32], ptr %diskinfo, i32 0, i32 2
  %15 = getelementptr inbounds i8, ptr %diskinfo, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4
  %17 = ptrtoint ptr %diskinfo to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %diskinfo, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %13, align 4
  %shr = lshr i64 %shl.i, 11
  %conv = trunc i64 %shr to i32
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %14, align 4
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 11
  %20 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hostt, align 8
  %bios_param = getelementptr inbounds %struct.scsi_host_template, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %bios_param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bios_param, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = call i32 %23(ptr noundef %5, ptr noundef %bdev, i64 noundef %shl.i, ptr noundef nonnull %diskinfo) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = call i32 @scsicam_bios_param(ptr noundef %bdev, i64 noundef %shl.i, ptr noundef nonnull %diskinfo) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = ptrtoint ptr %diskinfo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %diskinfo, align 4
  %conv12 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv12, ptr %geo, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %13, align 4
  %conv14 = trunc i32 %28 to i8
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %29 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv14, ptr %sectors, align 1
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %14, align 4
  %conv16 = trunc i32 %31 to i16
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %32 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv16, ptr %cylinders, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diskinfo) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_zbc_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_get_unique_id(ptr nocapture noundef readonly %disk, ptr nocapture noundef writeonly %id, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !422) #17
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !444
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg83 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 34
  %8 = ptrtoint ptr %vpd_pg83 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vpd_pg83, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @sd_get_unique_id.__warned, align 1
  br i1 %.b62, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @sd_get_unique_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1768, ptr noundef nonnull @.str.26) #17
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.out_unlock_crit_edge, label %if.end12

do.end8.out_unlock_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end12:                                         ; preds = %do.end8
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %add.ptr = getelementptr %struct.scsi_vpd, ptr %9, i32 1, i32 0, i32 1
  %len15 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len15, align 4
  %add.ptr1672 = getelementptr i8, ptr %data, i32 %11
  %cmp73 = icmp ult ptr %add.ptr, %add.ptr1672
  br i1 %cmp73, label %if.end12.for.body_crit_edge, label %if.end12.out_unlock_crit_edge

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %d.075 = phi ptr [ %add.ptr47, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end12.for.body_crit_edge ]
  %ret.074 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -22, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %d.075, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %14 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17.not = icmp eq i32 %14, 0
  %and23 = and i32 %conv, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %type)
  %cmp24.not = icmp eq i32 %and23, %type
  %or.cond = and i1 %cmp17.not, %cmp24.not
  br i1 %or.cond, label %if.end27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %arrayidx28 = getelementptr i8, ptr %d.075, i32 3
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %16, label %if.end27.for.inc_crit_edge [
    i8 8, label %if.end27.if.end39_crit_edge
    i8 12, label %if.end27.if.end39_crit_edge77
    i8 16, label %if.end27.if.end39_crit_edge78
  ]

if.end27.if.end39_crit_edge78:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.end27.if.end39_crit_edge77:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end39:                                         ; preds = %if.end27.if.end39_crit_edge, %if.end27.if.end39_crit_edge77, %if.end27.if.end39_crit_edge78
  %conv29 = zext i8 %16 to i32
  %add.ptr40 = getelementptr i8, ptr %d.075, i32 4
  %18 = call ptr @memcpy(ptr %id, ptr %add.ptr40, i32 %conv29)
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp41 = icmp eq i8 %16, 16
  br i1 %cmp41, label %if.end39.out_unlock_crit_edge, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.074, %for.body.for.inc_crit_edge ], [ %conv29, %if.end39.for.inc_crit_edge ], [ %ret.074, %if.end27.for.inc_crit_edge ]
  %arrayidx45 = getelementptr i8, ptr %d.075, i32 3
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv46, 4
  %add.ptr47 = getelementptr i8, ptr %d.075, i32 %add
  %21 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len15, align 4
  %add.ptr16 = getelementptr i8, ptr %data, i32 %22
  %cmp = icmp ult ptr %add.ptr47, %add.ptr16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_unlock_crit_edge

for.inc.out_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

out_unlock:                                       ; preds = %for.inc.out_unlock_crit_edge, %if.end39.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge, %do.end8.out_unlock_crit_edge
  %ret.2 = phi i32 [ -6, %do.end8.out_unlock_crit_edge ], [ -22, %if.end12.out_unlock_crit_edge ], [ 16, %if.end39.out_unlock_crit_edge ], [ %ret.1, %for.inc.out_unlock_crit_edge ]
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i63, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %out_unlock
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !445
  %23 = tail call i32 @llvm.read_register.i32(metadata !422) #17
  %and.i.i.i.i.i70 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bdev_check_media_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sed_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsicam_bios_param(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_pr_register(ptr nocapture noundef readonly %bdev, i64 noundef %old_key, i64 noundef %new_key, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool2.not = icmp eq i32 %flags, 0
  %conv = select i1 %tobool2.not, i8 0, i8 6
  %call = tail call fastcc i32 @sd_pr_command(ptr noundef %bdev, i8 noundef zeroext %conv, i64 noundef %old_key, i64 noundef %new_key, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_pr_reserve(ptr nocapture noundef readonly %bdev, i64 noundef %key, i32 noundef %type, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %if.end.sd_pr_type.exit_crit_edge

if.end.sd_pr_type.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_pr_type.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_reserve, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sd_pr_type.exit

sd_pr_type.exit:                                  ; preds = %switch.lookup, %if.end.sd_pr_type.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end.sd_pr_type.exit_crit_edge ]
  %call1 = tail call fastcc i32 @sd_pr_command(ptr noundef %bdev, i8 noundef zeroext 1, i64 noundef %key, i64 noundef 0, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0)
  br label %return

return:                                           ; preds = %sd_pr_type.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %sd_pr_type.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_pr_release(ptr nocapture noundef readonly %bdev, i64 noundef %key, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sd_pr_type.exit_crit_edge

entry.sd_pr_type.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_pr_type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_release, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sd_pr_type.exit

sd_pr_type.exit:                                  ; preds = %switch.lookup, %entry.sd_pr_type.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.sd_pr_type.exit_crit_edge ]
  %call1 = tail call fastcc i32 @sd_pr_command(ptr noundef %bdev, i8 noundef zeroext 2, i64 noundef %key, i64 noundef 0, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_pr_preempt(ptr nocapture noundef readonly %bdev, i64 noundef %old_key, i64 noundef %new_key, i32 noundef %type, i1 noundef zeroext %abort) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sd_pr_type.exit_crit_edge

entry.sd_pr_type.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_pr_type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_preempt, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sd_pr_type.exit

sd_pr_type.exit:                                  ; preds = %switch.lookup, %entry.sd_pr_type.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.sd_pr_type.exit_crit_edge ]
  %conv = select i1 %abort, i8 5, i8 4
  %call1 = tail call fastcc i32 @sd_pr_command(ptr noundef %bdev, i8 noundef zeroext %conv, i64 noundef %old_key, i64 noundef %new_key, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_pr_clear(ptr nocapture noundef readonly %bdev, i64 noundef %key) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sd_pr_command(ptr noundef %bdev, i8 noundef zeroext 3, i64 noundef %key, i64 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_pr_command(ptr nocapture noundef readonly %bdev, i8 noundef zeroext %sa, i64 noundef %key, i64 noundef %sa_key, i8 noundef zeroext %type, i8 noundef zeroext %flags) unnamed_addr #4 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %cmd = alloca [16 x i8], align 1
  %data = alloca [24 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %6 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #17
  %7 = getelementptr inbounds i8, ptr %cmd, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #17
  %9 = getelementptr inbounds i8, ptr %data, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %9, align 8
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 95, ptr %cmd, align 1
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sa, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %type, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 24, ptr %arrayidx3, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %key, ptr %data, align 8
  %arrayidx5 = getelementptr inbounds [24 x i8], ptr %data, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sa_key, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [24 x i8], ptr %data, i32 0, i32 20
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %flags, ptr %arrayidx6, align 4
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_retries, align 8
  %call.i = call i32 @__scsi_execute(ptr noundef %5, ptr noundef nonnull %cmd, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 24, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef %19, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %20 = and i32 %call.i, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %.not = icmp eq i32 %20, 2
  br i1 %.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sshdr, align 8
  %23 = and i8 %22, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %23)
  %cmp.i = icmp eq i8 %23, 112
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef %call.i) #17
  call void @scsi_print_sense_hdr(ptr noundef %5, ptr noundef null, ptr noundef nonnull %sshdr) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_zbc_read_zones(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_config_write_same(ptr nocapture noundef %sdkp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sector_size, align 4
  %no_write_same = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %8 = ptrtoint ptr %no_write_same to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %no_write_same, align 4
  %9 = and i64 %bf.load, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  %max_ws_blocks2 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_ws_blocks2, align 4
  br label %out

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_ws_blocks2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp = icmp ugt i32 %12, 65535
  br i1 %cmp, label %cond.false8, label %if.else

cond.false8:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8388607)
  br label %if.end62

if.else:                                          ; preds = %if.end
  %ws16 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %14 = ptrtoint ptr %ws16 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load18 = load i32, ptr %ws16, align 2
  %15 = and i32 %bf.load18, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  %17 = and i64 %bf.load, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool32.not = icmp eq i64 %17, 0
  %or.cond159 = select i1 %16, i1 %tobool32.not, i1 false
  br i1 %or.cond159, label %if.else55, label %if.then33

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp38 = icmp eq i32 %12, 0
  %cond53 = select i1 %cmp38, i32 65535, i32 %12
  br label %if.end62

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set = or i64 %bf.load, 17592186044416
  %18 = ptrtoint ptr %no_write_same to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %bf.set, ptr %no_write_same, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %if.then33, %cond.false8
  %cond53.sink = phi i32 [ %cond53, %if.then33 ], [ 0, %if.else55 ], [ %13, %cond.false8 ]
  %19 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond53.sink, ptr %max_ws_blocks2, align 4
  %lbprz = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %20 = ptrtoint ptr %lbprz to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load63 = load i32, ptr %lbprz, align 2
  %21 = and i32 %bf.load63, 20971520
  call void @__sanitizer_cov_trace_const_cmp4(i32 20971520, i32 %21)
  %.not = icmp eq i32 %21, 20971520
  br i1 %.not, label %if.end62.if.end94_crit_edge, label %if.else72

if.end62.if.end94_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.else72:                                        ; preds = %if.end62
  %22 = and i32 %bf.load63, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 18874368, i32 %22)
  %.not166 = icmp eq i32 %22, 18874368
  br i1 %.not166, label %if.else72.if.end94_crit_edge, label %if.else85

if.else72.if.end94_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.else85:                                        ; preds = %if.else72
  %23 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_ws_blocks2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool87.not = icmp eq i32 %24, 0
  %zeroing_mode91 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 35
  br i1 %tobool87.not, label %if.end94.thread, label %if.end94.thread164

if.end94.thread164:                               ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %zeroing_mode91 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %zeroing_mode91, align 8
  br label %land.lhs.true97

if.end94.thread:                                  ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %zeroing_mode91 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %zeroing_mode91, align 8
  br label %out

if.end94:                                         ; preds = %if.else72.if.end94_crit_edge, %if.end62.if.end94_crit_edge
  %.sink = phi i8 [ 2, %if.end62.if.end94_crit_edge ], [ 3, %if.else72.if.end94_crit_edge ]
  %zeroing_mode84 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 35
  %27 = ptrtoint ptr %zeroing_mode84 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %zeroing_mode84, align 8
  %28 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %max_ws_blocks2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool96.not = icmp eq i32 %.pr, 0
  br i1 %tobool96.not, label %if.end94.out_crit_edge, label %if.end94.land.lhs.true97_crit_edge

if.end94.land.lhs.true97_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true97

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true97:                                  ; preds = %if.end94.land.lhs.true97_crit_edge, %if.end94.thread164
  %29 = phi i32 [ %24, %if.end94.thread164 ], [ %.pr, %if.end94.land.lhs.true97_crit_edge ]
  %physical_block_size = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %30 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %physical_block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %7)
  %cmp98 = icmp ugt i32 %31, %7
  br i1 %cmp98, label %bytes_to_logical.exit, label %land.lhs.true97.out_crit_edge

land.lhs.true97.out_crit_edge:                    ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

bytes_to_logical.exit:                            ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 true) #17, !range !434
  %sub.i.op.i.i = xor i32 %36, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %shr.i = lshr i32 %31, %sub.i.i
  %neg = sub i32 0, %shr.i
  %and = and i32 %29, %neg
  %37 = ptrtoint ptr %max_ws_blocks2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and, ptr %max_ws_blocks2, align 4
  br label %out

out:                                              ; preds = %bytes_to_logical.exit, %land.lhs.true97.out_crit_edge, %if.end94.out_crit_edge, %if.end94.thread, %if.then
  %max_ws_blocks105 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  %38 = ptrtoint ptr %max_ws_blocks105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_ws_blocks105, align 4
  %shr = lshr i32 %7, 9
  %mul = mul i32 %39, %shr
  tail call void @blk_queue_max_write_same_sectors(ptr noundef %3, i32 noundef %mul) #17
  %40 = ptrtoint ptr %max_ws_blocks105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_ws_blocks105, align 4
  %mul108 = mul i32 %41, %shr
  tail call void @blk_queue_max_write_zeroes_sectors(ptr noundef %3, i32 noundef %mul108) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_zbc_revalidate_zones(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_capacity_16(ptr noundef %sdkp, ptr noundef %sdp, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  %cmd = alloca [16 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #17
  %0 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %no_read_capacity_16 = getelementptr inbounds %struct.scsi_device, ptr %sdp, i32 0, i32 41
  %5 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %sshdr, align 8
  %6 = ptrtoint ptr %no_read_capacity_16 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load = load i64, ptr %no_read_capacity_16, align 4
  %7 = and i64 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 20
  %8 = getelementptr inbounds i8, ptr %cmd, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %sense_valid.0 = phi i32 [ %sense_valid.2, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %retries.0 = phi i32 [ %retries.1, %do.cond.do.body_crit_edge ], [ 3, %do.body.preheader ]
  %reset_retries.0 = phi i32 [ %reset_retries.2, %do.cond.do.body_crit_edge ], [ 10, %do.body.preheader ]
  %9 = call ptr @memset(ptr %8, i32 0, i32 14)
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -98, ptr %cmd, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %1, align 1
  %13 = call ptr @memset(ptr %buffer, i32 0, i32 32)
  %14 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_retries, align 8
  %call.i = call i32 @__scsi_execute(ptr noundef %sdp, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buffer, i32 noundef 32, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef %15, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %16 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sshdr, align 8
  %18 = and i8 %17, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 112
  br i1 %cmp.i.i, label %if.end.i, label %if.end7.thread

if.end.i:                                         ; preds = %do.body
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %20, label %if.end.i.if.end7_crit_edge [
    i8 6, label %if.end.i.sw.bb.i_crit_edge
    i8 2, label %if.end.i.sw.bb.i_crit_edge201
  ]

if.end.i.sw.bb.i_crit_edge201:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge201
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %23)
  %cmp.i = icmp eq i8 %23, 58
  br i1 %cmp.i, label %if.then3.i, label %sw.bb.i.if.end7_crit_edge

sw.bb.i.if.end7_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then3.i:                                       ; preds = %sw.bb.i
  %media_present.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 31
  %24 = ptrtoint ptr %media_present.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %media_present.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i7.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i7.i, label %if.then3.i.if.end.i8.i_crit_edge, label %if.then.i.i

if.then3.i.if.end.i8.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i8.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %device.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %26 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i.i, align 4
  %changed.i.i = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 41
  %28 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i = load i64, ptr %changed.i.i, align 4
  %bf.set.i.i = or i64 %bf.load.i.i, 4611686018427387904
  store i64 %bf.set.i.i, ptr %changed.i.i, align 4
  br label %if.end.i8.i

if.end.i8.i:                                      ; preds = %if.then.i.i, %if.then3.i.if.end.i8.i_crit_edge
  %device1.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %29 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device1.i.i, align 4
  %removable.i.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 41
  %31 = ptrtoint ptr %removable.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load2.i.i = load i64, ptr %removable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i.i)
  %tobool3.not.i.i = icmp sgt i64 %bf.load2.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end.i8.i.cleanup_crit_edge, label %if.then4.i.i

if.end.i8.i.cleanup_crit_edge:                    ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %media_present.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %media_present.i.i, align 4
  %capacity.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %33 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %capacity.i.i, align 8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true.critedge, label %if.end7.if.end50_crit_edge

if.end7.if.end50_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.end7.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp176 = icmp sgt i32 %call.i, 0
  %spec.select = select i1 %cmp176, i32 0, i32 %sense_valid.0
  br label %if.end50

land.lhs.true.critedge:                           ; preds = %if.end7
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %35, label %land.lhs.true.critedge.if.end50_crit_edge [
    i8 5, label %land.lhs.true14
    i8 6, label %land.lhs.true34
  ]

land.lhs.true.critedge.if.end50_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

land.lhs.true14:                                  ; preds = %land.lhs.true.critedge
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %38, label %land.lhs.true14.if.end50_crit_edge [
    i8 32, label %land.lhs.true14.land.lhs.true22_crit_edge
    i8 36, label %land.lhs.true14.land.lhs.true22_crit_edge202
  ]

land.lhs.true14.land.lhs.true22_crit_edge202:     ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true22

land.lhs.true14.land.lhs.true22_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true22

land.lhs.true14.if.end50_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

land.lhs.true22:                                  ; preds = %land.lhs.true14.land.lhs.true22_crit_edge, %land.lhs.true14.land.lhs.true22_crit_edge202
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp24 = icmp eq i8 %41, 0
  br i1 %cmp24, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end50_crit_edge

land.lhs.true22.if.end50_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true34:                                  ; preds = %land.lhs.true.critedge
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %43)
  %cmp37 = icmp eq i8 %43, 41
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true34.if.end50_crit_edge

land.lhs.true34.if.end50_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp42 = icmp eq i8 %45, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true39.if.end50_crit_edge

land.lhs.true39.if.end50_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then44:                                        ; preds = %land.lhs.true39
  %dec = add i32 %reset_retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp45 = icmp sgt i32 %dec, 0
  br i1 %cmp45, label %if.then44.do.cond_crit_edge, label %if.then44.if.end50_crit_edge

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then44.do.cond_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

if.end50:                                         ; preds = %if.then44.if.end50_crit_edge, %land.lhs.true39.if.end50_crit_edge, %land.lhs.true34.if.end50_crit_edge, %land.lhs.true22.if.end50_crit_edge, %land.lhs.true14.if.end50_crit_edge, %land.lhs.true.critedge.if.end50_crit_edge, %if.end7.thread, %if.end7.if.end50_crit_edge
  %sense_valid.1 = phi i32 [ 1, %if.then44.if.end50_crit_edge ], [ 1, %land.lhs.true39.if.end50_crit_edge ], [ 1, %land.lhs.true34.if.end50_crit_edge ], [ %sense_valid.0, %if.end7.if.end50_crit_edge ], [ 1, %land.lhs.true22.if.end50_crit_edge ], [ 1, %land.lhs.true14.if.end50_crit_edge ], [ %spec.select, %if.end7.thread ], [ 1, %land.lhs.true.critedge.if.end50_crit_edge ]
  %reset_retries.1 = phi i32 [ %dec, %if.then44.if.end50_crit_edge ], [ %reset_retries.0, %land.lhs.true39.if.end50_crit_edge ], [ %reset_retries.0, %land.lhs.true34.if.end50_crit_edge ], [ %reset_retries.0, %if.end7.if.end50_crit_edge ], [ %reset_retries.0, %land.lhs.true22.if.end50_crit_edge ], [ %reset_retries.0, %land.lhs.true14.if.end50_crit_edge ], [ %reset_retries.0, %if.end7.thread ], [ %reset_retries.0, %land.lhs.true.critedge.if.end50_crit_edge ]
  %dec51 = add i32 %retries.0, -1
  br label %do.cond

do.cond:                                          ; preds = %if.end50, %if.then44.do.cond_crit_edge
  %sense_valid.2 = phi i32 [ 1, %if.then44.do.cond_crit_edge ], [ %sense_valid.1, %if.end50 ]
  %retries.1 = phi i32 [ %retries.0, %if.then44.do.cond_crit_edge ], [ %dec51, %if.end50 ]
  %reset_retries.2 = phi i32 [ %dec, %if.then44.do.cond_crit_edge ], [ %reset_retries.1, %if.end50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.1)
  %tobool53.not = icmp eq i32 %retries.1, 0
  %or.cond = select i1 %tobool52.not, i1 true, i1 %tobool53.not
  br i1 %or.cond, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond
  br i1 %tobool52.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @sd_print_result(ptr noundef %sdkp, ptr noundef nonnull @.str.50, i32 noundef %call.i)
  call fastcc void @read_capacity_error(ptr noundef %sdkp, ptr noundef %sdp, ptr noundef nonnull %sshdr, i32 noundef %sense_valid.2)
  br label %cleanup

if.end56:                                         ; preds = %do.end
  %arrayidx57 = getelementptr i8, ptr %buffer, i32 8
  %46 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx57, align 1
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %buffer, align 1
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i, align 4
  %no_dif.i.i = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 41
  %52 = ptrtoint ptr %no_dif.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i.i165 = load i64, ptr %no_dif.i.i, align 4
  %53 = and i64 %bf.load.i.i165, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool.not.i.i = icmp eq i64 %53, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end56.sd_read_protection_type.exit.thread_crit_edge

if.end56.sd_read_protection_type.exit.thread_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_protection_type.exit.thread

if.end.i.i:                                       ; preds = %if.end56
  %scsi_level.i.i = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 23
  %54 = ptrtoint ptr %scsi_level.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %scsi_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp.i.i166 = icmp ugt i8 %55, 3
  br i1 %cmp.i.i166, label %scsi_device_protection.exit.i, label %if.end.i.i.sd_read_protection_type.exit.thread_crit_edge

if.end.i.i.sd_read_protection_type.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_protection_type.exit.thread

scsi_device_protection.exit.i:                    ; preds = %if.end.i.i
  %inquiry.i.i = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 29
  %56 = ptrtoint ptr %inquiry.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inquiry.i.i, align 8
  %arrayidx.i.i = getelementptr i8, ptr %57, i32 5
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.i167 = icmp eq i8 %60, 0
  br i1 %cmp.i167, label %scsi_device_protection.exit.i.sd_read_protection_type.exit.thread_crit_edge, label %lor.lhs.false.i

scsi_device_protection.exit.i.sd_read_protection_type.exit.thread_crit_edge: ; preds = %scsi_device_protection.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_protection_type.exit.thread

lor.lhs.false.i:                                  ; preds = %scsi_device_protection.exit.i
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 12
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp1.i = icmp eq i8 %63, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.sd_read_protection_type.exit.thread_crit_edge, label %if.end.i168

lor.lhs.false.i.sd_read_protection_type.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_protection_type.exit.thread

if.end.i168:                                      ; preds = %lor.lhs.false.i
  %64 = lshr i8 %62, 1
  %and5.i = and i8 %64, 7
  %add.i = add nuw nsw i8 %and5.i, 1
  %conv7.i = zext i8 %add.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and5.i)
  %cmp8.i = icmp ugt i8 %and5.i, 2
  br i1 %cmp8.i, label %if.end.i168.if.end15.i_crit_edge, label %if.end.i95.i

if.end.i168.if.end15.i_crit_edge:                 ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

if.end.i95.i:                                     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #19
  %65 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %51, align 8
  %prot_capabilities.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 41
  %67 = ptrtoint ptr %prot_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prot_capabilities.i.i, align 4
  %arrayidx.i92.i = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %conv7.i
  %69 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i92.i, align 1
  %conv.i.i = zext i8 %70 to i32
  %and.i93.i = and i32 %68, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i)
  %tobool.not.i94.i = icmp ne i32 %and.i93.i, 0
  %spec.select.i = zext i1 %tobool.not.i94.i to i32
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i95.i, %if.end.i168.if.end15.i_crit_edge
  %ret.0.i = phi i32 [ -19, %if.end.i168.if.end15.i_crit_edge ], [ %spec.select.i, %if.end.i95.i ]
  %first_scan.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %71 = ptrtoint ptr %first_scan.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load.i = load i32, ptr %first_scan.i, align 2
  %72 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool16.not.i = icmp eq i32 %72, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %if.end15.i.if.then23.i_crit_edge

if.end15.i.if.then23.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23.i

lor.lhs.false17.i:                                ; preds = %if.end15.i
  %protection_type19.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 33
  %73 = ptrtoint ptr %protection_type19.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %protection_type19.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i, i8 %74)
  %cmp21.not.i = icmp eq i8 %add.i, %74
  br i1 %cmp21.not.i, label %sd_read_protection_type.exit, label %lor.lhs.false17.i.if.then23.i_crit_edge

lor.lhs.false17.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false17.i.if.then23.i_crit_edge, %if.end15.i.if.then23.i_crit_edge
  %75 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %ret.0.i, label %if.then23.i.sd_read_protection_type.exit.thread184_crit_edge [
    i32 -19, label %sw.bb.i169
    i32 1, label %sw.bb30.i
    i32 0, label %sw.bb43.i
  ]

if.then23.i.sd_read_protection_type.exit.thread184_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sd_read_protection_type.exit.thread184

sw.bb.i169:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %76 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disk.i, align 8
  %tobool24.not.i = icmp eq ptr %77, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %77, i32 0, i32 3
  %.sink = select i1 %tobool24.not.i, ptr null, ptr %disk_name.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %51, ptr noundef %.sink, ptr noundef nonnull @.str.54, i32 noundef %conv7.i) #17
  br label %sd_read_protection_type.exit.thread184

sw.bb30.i:                                        ; preds = %if.then23.i
  %disk31.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %78 = ptrtoint ptr %disk31.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %disk31.i, align 8
  %tobool32.not.i = icmp eq ptr %79, null
  br i1 %tobool32.not.i, label %cond.false39.i, label %cond.true33.i

cond.true33.i:                                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name36.i = getelementptr inbounds %struct.gendisk, ptr %79, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %51, ptr noundef %disk_name36.i, ptr noundef nonnull @.str.55, i32 noundef %conv7.i) #17
  br label %sd_read_protection_type.exit.thread

cond.false39.i:                                   ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %51, ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef %conv7.i) #17
  br label %sd_read_protection_type.exit.thread

sw.bb43.i:                                        ; preds = %if.then23.i
  %disk44.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %80 = ptrtoint ptr %disk44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %disk44.i, align 8
  %tobool45.not.i = icmp eq ptr %81, null
  br i1 %tobool45.not.i, label %cond.false52.i, label %cond.true46.i

cond.true46.i:                                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name49.i = getelementptr inbounds %struct.gendisk, ptr %81, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %51, ptr noundef %disk_name49.i, ptr noundef nonnull @.str.56, i32 noundef %conv7.i) #17
  br label %sd_read_protection_type.exit.thread

cond.false52.i:                                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %51, ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef %conv7.i) #17
  br label %sd_read_protection_type.exit.thread

sd_read_protection_type.exit.thread:              ; preds = %cond.false52.i, %cond.true46.i, %cond.false39.i, %cond.true33.i, %lor.lhs.false.i.sd_read_protection_type.exit.thread_crit_edge, %scsi_device_protection.exit.i.sd_read_protection_type.exit.thread_crit_edge, %if.end.i.i.sd_read_protection_type.exit.thread_crit_edge, %if.end56.sd_read_protection_type.exit.thread_crit_edge
  %add.sink.i.ph = phi i8 [ %add.i, %cond.true46.i ], [ %add.i, %cond.false52.i ], [ %add.i, %cond.true33.i ], [ %add.i, %cond.false39.i ], [ 0, %scsi_device_protection.exit.i.sd_read_protection_type.exit.thread_crit_edge ], [ 0, %lor.lhs.false.i.sd_read_protection_type.exit.thread_crit_edge ], [ 0, %if.end56.sd_read_protection_type.exit.thread_crit_edge ], [ 0, %if.end.i.i.sd_read_protection_type.exit.thread_crit_edge ]
  %protection_type57.i181 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 33
  %82 = ptrtoint ptr %protection_type57.i181 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %add.sink.i.ph, ptr %protection_type57.i181, align 2
  br label %if.end65

sd_read_protection_type.exit.thread184:           ; preds = %sw.bb.i169, %if.then23.i.sd_read_protection_type.exit.thread184_crit_edge
  %protection_type57.i187 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 33
  %83 = ptrtoint ptr %protection_type57.i187 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %add.i, ptr %protection_type57.i187, align 2
  br label %if.then64

sd_read_protection_type.exit:                     ; preds = %lor.lhs.false17.i
  %84 = ptrtoint ptr %protection_type19.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %add.i, ptr %protection_type19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp62 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp62, label %sd_read_protection_type.exit.if.then64_crit_edge, label %sd_read_protection_type.exit.if.end65_crit_edge

sd_read_protection_type.exit.if.end65_crit_edge:  ; preds = %sd_read_protection_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

sd_read_protection_type.exit.if.then64_crit_edge: ; preds = %sd_read_protection_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

if.then64:                                        ; preds = %sd_read_protection_type.exit.if.then64_crit_edge, %sd_read_protection_type.exit.thread184
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %85 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %capacity, align 8
  br label %cleanup

if.end65:                                         ; preds = %sd_read_protection_type.exit.if.end65_crit_edge, %sd_read_protection_type.exit.thread
  %arrayidx66 = getelementptr i8, ptr %buffer, i32 13
  %86 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx66, align 1
  %88 = and i8 %87, 15
  %and = zext i8 %88 to i32
  %mul = shl i32 %47, %and
  %physical_block_size = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %89 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul, ptr %physical_block_size, align 8
  %arrayidx68 = getelementptr i8, ptr %buffer, i32 12
  %90 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx68, align 1
  %92 = lshr i8 %91, 4
  %93 = and i8 %92, 3
  %and70 = zext i8 %93 to i32
  %rc_basis = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %94 = ptrtoint ptr %rc_basis to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %bf.load71 = load i32, ptr %rc_basis, align 2
  %bf.shl = shl nuw nsw i32 %and70, 16
  %bf.clear72 = and i32 %bf.load71, -196609
  %bf.set = or i32 %bf.shl, %bf.clear72
  store i32 %bf.set, ptr %rc_basis, align 2
  %arrayidx73 = getelementptr i8, ptr %buffer, i32 14
  %95 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx73, align 1
  %97 = and i8 %96, 63
  %and75 = zext i8 %97 to i32
  %shl76 = shl nuw nsw i32 %and75, 8
  %arrayidx77 = getelementptr i8, ptr %buffer, i32 15
  %98 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %99 to i32
  %or = or i32 %shl76, %conv78
  %mul79 = mul i32 %or, %47
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdp, i32 0, i32 1
  %100 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %request_queue, align 4
  call void @blk_queue_alignment_offset(ptr noundef %101, i32 noundef %mul79) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul79)
  %tobool80.not = icmp eq i32 %mul79, 0
  br i1 %tobool80.not, label %if.end65.if.end91_crit_edge, label %land.lhs.true81

if.end65.if.end91_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

land.lhs.true81:                                  ; preds = %if.end65
  %102 = ptrtoint ptr %rc_basis to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %bf.load82 = load i32, ptr %rc_basis, align 2
  %103 = and i32 %bf.load82, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool85.not = icmp eq i32 %103, 0
  br i1 %tobool85.not, label %land.lhs.true81.if.end91_crit_edge, label %if.then86

land.lhs.true81.if.end91_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

if.then86:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #19
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %104 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %disk, align 8
  %tobool87.not = icmp eq ptr %105, null
  %106 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device.i, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %105, i32 0, i32 3
  %disk_name.sink = select i1 %tobool87.not, ptr null, ptr %disk_name
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %107, ptr noundef %disk_name.sink, ptr noundef nonnull @.str.51, i32 noundef %mul79) #17
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %land.lhs.true81.if.end91_crit_edge, %if.end65.if.end91_crit_edge
  %108 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %109)
  %tobool95.not = icmp sgt i8 %109, -1
  br i1 %tobool95.not, label %if.end91.if.end109_crit_edge, label %if.then96

if.end91.if.end109_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

if.then96:                                        ; preds = %if.end91
  %110 = ptrtoint ptr %rc_basis to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %bf.load97 = load i32, ptr %rc_basis, align 2
  %bf.set99 = or i32 %bf.load97, 33554432
  store i32 %bf.set99, ptr %rc_basis, align 2
  %111 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx73, align 1
  %113 = and i8 %112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool103.not = icmp eq i8 %113, 0
  br i1 %tobool103.not, label %if.then96.if.end108_crit_edge, label %if.then104

if.then96.if.end108_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.then104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set107 = or i32 %bf.load97, 50331648
  %114 = ptrtoint ptr %rc_basis to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %bf.set107, ptr %rc_basis, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.then96.if.end108_crit_edge
  %disk.i171 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %115 = ptrtoint ptr %disk.i171 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %disk.i171, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %queue.i, align 4
  %119 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device.i, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %120, i32 0, i32 20
  %121 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sector_size.i, align 4
  %unmap_alignment.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 26
  %123 = ptrtoint ptr %unmap_alignment.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %unmap_alignment.i, align 8
  %mul.i = mul i32 %124, %122
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %118, i32 0, i32 37, i32 19
  %125 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul.i, ptr %discard_alignment.i, align 4
  %126 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %physical_block_size, align 8
  %unmap_granularity.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 25
  %128 = ptrtoint ptr %unmap_granularity.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %unmap_granularity.i, align 4
  %mul1.i = mul i32 %129, %122
  %130 = call i32 @llvm.umax.i32(i32 %127, i32 %mul1.i) #17
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %118, i32 0, i32 37, i32 18
  %131 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %discard_granularity.i, align 4
  %provisioning_mode.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 34
  %132 = ptrtoint ptr %provisioning_mode.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 2, ptr %provisioning_mode.i, align 1
  %133 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %device.i, align 4
  %unmap_limit_for_ws.i = getelementptr inbounds %struct.scsi_device, ptr %134, i32 0, i32 41
  %135 = ptrtoint ptr %unmap_limit_for_ws.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %bf.load.i173 = load i64, ptr %unmap_limit_for_ws.i, align 4
  %136 = and i64 %bf.load.i173, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %tobool.not.i = icmp eq i64 %136, 0
  %max_unmap_blocks26.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 24
  %max_ws_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  %max_blocks.0.in.i = select i1 %tobool.not.i, ptr %max_ws_blocks.i, ptr %max_unmap_blocks26.i
  %137 = ptrtoint ptr %max_blocks.0.in.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %max_blocks.0.i = load i32, ptr %max_blocks.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_blocks.0.i)
  %cmp30.i = icmp eq i32 %max_blocks.0.i, 0
  %138 = call i32 @llvm.umin.i32(i32 %max_blocks.0.i, i32 8388607) #17
  %cond48.i = select i1 %cmp30.i, i32 8388607, i32 %138
  %shr.i = lshr i32 %122, 9
  %mul108.i = mul i32 %cond48.i, %shr.i
  call void @blk_queue_max_discard_sectors(ptr noundef %118, i32 noundef %mul108.i) #17
  call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %118) #17
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end91.if.end109_crit_edge
  %add = add i64 %49, 1
  %capacity110 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %139 = ptrtoint ptr %capacity110 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add, ptr %capacity110, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.then64, %if.then55, %land.lhs.true22.cleanup_crit_edge, %if.then4.i.i, %if.end.i8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then55 ], [ -19, %if.then64 ], [ %47, %if.end109 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.i8.i.cleanup_crit_edge ], [ -19, %if.then4.i.i ], [ -22, %land.lhs.true22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_capacity_10(ptr nocapture noundef %sdkp, ptr noundef %sdp, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  %cmd = alloca [16 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #17
  %0 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 10
  %2 = call ptr @memset(ptr %1, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %3 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 20
  %6 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %sshdr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %sense_valid.0 = phi i32 [ 0, %entry ], [ %sense_valid.2, %do.cond.do.body_crit_edge ]
  %retries.0 = phi i32 [ 3, %entry ], [ %retries.1, %do.cond.do.body_crit_edge ]
  %reset_retries.0 = phi i32 [ 10, %entry ], [ %reset_retries.2, %do.cond.do.body_crit_edge ]
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 37, ptr %cmd, align 1
  %8 = call ptr @memset(ptr %0, i32 0, i32 9)
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %buffer, align 1
  %10 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_retries, align 8
  %call.i = call i32 @__scsi_execute(ptr noundef %sdp, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buffer, i32 noundef 8, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef %11, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %12 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sshdr, align 8
  %14 = and i8 %13, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 112
  br i1 %cmp.i.i, label %if.end.i, label %if.end.thread

if.end.i:                                         ; preds = %do.body
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %16, label %if.end.i.if.end_crit_edge [
    i8 6, label %if.end.i.sw.bb.i_crit_edge
    i8 2, label %if.end.i.sw.bb.i_crit_edge86
  ]

if.end.i.sw.bb.i_crit_edge86:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge86
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %19)
  %cmp.i = icmp eq i8 %19, 58
  br i1 %cmp.i, label %if.then3.i, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then3.i:                                       ; preds = %sw.bb.i
  %media_present.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 31
  %20 = ptrtoint ptr %media_present.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %media_present.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i7.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i7.i, label %if.then3.i.if.end.i8.i_crit_edge, label %if.then.i.i

if.then3.i.if.end.i8.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i8.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %device.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %22 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i.i, align 4
  %changed.i.i = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 41
  %24 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %bf.load.i.i = load i64, ptr %changed.i.i, align 4
  %bf.set.i.i = or i64 %bf.load.i.i, 4611686018427387904
  store i64 %bf.set.i.i, ptr %changed.i.i, align 4
  br label %if.end.i8.i

if.end.i8.i:                                      ; preds = %if.then.i.i, %if.then3.i.if.end.i8.i_crit_edge
  %device1.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %25 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device1.i.i, align 4
  %removable.i.i = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 41
  %27 = ptrtoint ptr %removable.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load2.i.i = load i64, ptr %removable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i.i)
  %tobool3.not.i.i = icmp sgt i64 %bf.load2.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end.i8.i.cleanup_crit_edge, label %if.then4.i.i

if.end.i8.i.cleanup_crit_edge:                    ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %media_present.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %media_present.i.i, align 4
  %capacity.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %29 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %capacity.i.i, align 8
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true.critedge, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.end.thread:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp78 = icmp sgt i32 %call.i, 0
  %spec.select = select i1 %cmp78, i32 0, i32 %sense_valid.0
  br label %if.end23

land.lhs.true.critedge:                           ; preds = %if.end
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %31)
  %cmp7 = icmp eq i8 %31, 6
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.critedge.if.end23_crit_edge

land.lhs.true.critedge.if.end23_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true9:                                   ; preds = %land.lhs.true.critedge
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %33)
  %cmp11 = icmp eq i8 %33, 41
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true9.if.end23_crit_edge

land.lhs.true9.if.end23_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp15 = icmp eq i8 %35, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true13.if.end23_crit_edge

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true13
  %dec = add i32 %reset_retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp18 = icmp sgt i32 %dec, 0
  br i1 %cmp18, label %if.then17.do.cond_crit_edge, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then17.do.cond_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %land.lhs.true13.if.end23_crit_edge, %land.lhs.true9.if.end23_crit_edge, %land.lhs.true.critedge.if.end23_crit_edge, %if.end.thread, %if.end.if.end23_crit_edge
  %sense_valid.1 = phi i32 [ 1, %if.then17.if.end23_crit_edge ], [ 1, %land.lhs.true13.if.end23_crit_edge ], [ 1, %land.lhs.true9.if.end23_crit_edge ], [ 1, %land.lhs.true.critedge.if.end23_crit_edge ], [ %sense_valid.0, %if.end.if.end23_crit_edge ], [ %spec.select, %if.end.thread ]
  %reset_retries.1 = phi i32 [ %dec, %if.then17.if.end23_crit_edge ], [ %reset_retries.0, %land.lhs.true13.if.end23_crit_edge ], [ %reset_retries.0, %land.lhs.true9.if.end23_crit_edge ], [ %reset_retries.0, %land.lhs.true.critedge.if.end23_crit_edge ], [ %reset_retries.0, %if.end.if.end23_crit_edge ], [ %reset_retries.0, %if.end.thread ]
  %dec24 = add i32 %retries.0, -1
  br label %do.cond

do.cond:                                          ; preds = %if.end23, %if.then17.do.cond_crit_edge
  %sense_valid.2 = phi i32 [ 1, %if.then17.do.cond_crit_edge ], [ %sense_valid.1, %if.end23 ]
  %retries.1 = phi i32 [ %retries.0, %if.then17.do.cond_crit_edge ], [ %dec24, %if.end23 ]
  %reset_retries.2 = phi i32 [ %dec, %if.then17.do.cond_crit_edge ], [ %reset_retries.1, %if.end23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.1)
  %tobool26.not = icmp eq i32 %retries.1, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond
  br i1 %tobool25.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @sd_print_result(ptr noundef %sdkp, ptr noundef nonnull @.str.57, i32 noundef %call.i)
  call fastcc void @read_capacity_error(ptr noundef %sdkp, ptr noundef %sdp, ptr noundef nonnull %sshdr, i32 noundef %sense_valid.2)
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %arrayidx30 = getelementptr i8, ptr %buffer, i32 4
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx30, align 1
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %buffer, align 1
  %no_read_capacity_16 = getelementptr inbounds %struct.scsi_device, ptr %sdp, i32 0, i32 41
  %40 = ptrtoint ptr %no_read_capacity_16 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %bf.load = load i64, ptr %no_read_capacity_16, align 4
  %41 = and i64 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool35.not = icmp ne i64 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp37 = icmp eq i32 %39, -1
  %or.cond72 = select i1 %tobool35.not, i1 %cmp37, i1 false
  br i1 %or.cond72, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %42 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %capacity, align 8
  %physical_block_size = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %43 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %37, ptr %physical_block_size, align 8
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  %conv34 = zext i32 %39 to i64
  %add = add nuw nsw i64 %conv34, 1
  %capacity41 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %44 = ptrtoint ptr %capacity41 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add, ptr %capacity41, align 8
  %physical_block_size42 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %45 = ptrtoint ptr %physical_block_size42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %37, ptr %physical_block_size42, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then28, %if.then4.i.i, %if.end.i8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then28 ], [ %37, %if.then39 ], [ %37, %if.end40 ], [ -19, %if.end.i8.i.cleanup_crit_edge ], [ -19, %if.then4.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_capacity_error(ptr nocapture noundef %sdkp, ptr nocapture noundef readonly %sdp, ptr noundef %sshdr, i32 noundef %sense_valid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_valid)
  %tobool.not = icmp eq i32 %sense_valid, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %tobool1.not = icmp eq ptr %1, null
  %device3 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef %disk_name, ptr noundef nonnull @.str.52) #17
  br label %if.end9

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.52) #17
  br label %if.end9

if.end:                                           ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %6 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %disk_name.i
  tail call void @scsi_print_sense_hdr(ptr noundef %5, ptr noundef %spec.select.i, ptr noundef %sshdr) #17
  %removable = getelementptr inbounds %struct.scsi_device, ptr %sdp, i32 0, i32 41
  %8 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool4.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %land.lhs.true6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %9 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sense_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  br i1 %cmp, label %if.then8, label %land.lhs.true6.if.end9_crit_edge

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  %media_present.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 31
  %11 = ptrtoint ptr %media_present.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %media_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i1 = icmp eq i8 %12, 0
  br i1 %tobool.not.i1, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %changed.i = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 41
  %15 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i = load i64, ptr %changed.i, align 4
  %bf.set.i = or i64 %bf.load.i, 4611686018427387904
  store i64 %bf.set.i, ptr %changed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %removable.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 41
  %18 = ptrtoint ptr %removable.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load2.i = load i64, ptr %removable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load2.i)
  %tobool3.not.i = icmp sgt i64 %bf.load2.i, -1
  br i1 %tobool3.not.i, label %if.end.i.if.end9_crit_edge, label %if.then4.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %media_present.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %media_present.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4.i, %if.end.i.if.end9_crit_edge, %land.lhs.true6.if.end9_crit_edge, %if.end.if.end9_crit_edge, %cond.false, %cond.true
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %20 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %capacity, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_alignment_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_config_discard(ptr nocapture noundef %sdkp, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sector_size, align 4
  %unmap_alignment = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 26
  %8 = ptrtoint ptr %unmap_alignment to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unmap_alignment, align 8
  %mul = mul i32 %9, %7
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 19
  %10 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %discard_alignment, align 4
  %physical_block_size = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %11 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %physical_block_size, align 8
  %unmap_granularity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 25
  %13 = ptrtoint ptr %unmap_granularity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unmap_granularity, align 4
  %mul1 = mul i32 %14, %7
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 %mul1)
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 18
  %16 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %discard_granularity, align 4
  %conv = trunc i32 %mode to i8
  %provisioning_mode = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 34
  %17 = ptrtoint ptr %provisioning_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %provisioning_mode, align 1
  %18 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge163
    i32 1, label %sw.bb3
    i32 2, label %sw.bb24
    i32 3, label %sw.bb49
    i32 4, label %sw.bb84
  ]

entry.sw.bb_crit_edge163:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge163
  tail call void @blk_queue_max_discard_sectors(ptr noundef %3, i32 noundef 0) #17
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %3) #17
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %max_unmap_blocks = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 24
  %19 = ptrtoint ptr %max_unmap_blocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_unmap_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5 = icmp eq i32 %20, 0
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 8388607)
  %cond23 = select i1 %cmp5, i32 8388607, i32 %21
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %unmap_limit_for_ws = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 41
  %24 = ptrtoint ptr %unmap_limit_for_ws to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %bf.load = load i64, ptr %unmap_limit_for_ws, align 4
  %25 = and i64 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not = icmp eq i64 %25, 0
  %max_unmap_blocks26 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 24
  %max_ws_blocks = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  %max_blocks.0.in = select i1 %tobool.not, ptr %max_ws_blocks, ptr %max_unmap_blocks26
  %26 = ptrtoint ptr %max_blocks.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %max_blocks.0 = load i32, ptr %max_blocks.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_blocks.0)
  %cmp30 = icmp eq i32 %max_blocks.0, 0
  %27 = tail call i32 @llvm.umin.i32(i32 %max_blocks.0, i32 8388607)
  %cond48 = select i1 %cmp30, i32 8388607, i32 %27
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %unmap_limit_for_ws51 = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 41
  %30 = ptrtoint ptr %unmap_limit_for_ws51 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load52 = load i64, ptr %unmap_limit_for_ws51, align 4
  %31 = and i64 %bf.load52, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool56.not = icmp eq i64 %31, 0
  %max_unmap_blocks58 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 24
  %max_ws_blocks60 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  %max_blocks.1.in = select i1 %tobool56.not, ptr %max_ws_blocks60, ptr %max_unmap_blocks58
  %32 = ptrtoint ptr %max_blocks.1.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %max_blocks.1 = load i32, ptr %max_blocks.1.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_blocks.1)
  %cmp65 = icmp eq i32 %max_blocks.1, 0
  %33 = tail call i32 @llvm.umin.i32(i32 %max_blocks.1, i32 65535)
  %cond83 = select i1 %cmp65, i32 65535, i32 %33
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %max_ws_blocks86 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 23
  %34 = ptrtoint ptr %max_ws_blocks86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_ws_blocks86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp89 = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 65535)
  %cond107 = select i1 %cmp89, i32 65535, i32 %36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb84, %sw.bb49, %sw.bb24, %sw.bb3, %entry.sw.epilog_crit_edge
  %max_blocks.2 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %cond107, %sw.bb84 ], [ %cond83, %sw.bb49 ], [ %cond48, %sw.bb24 ], [ %cond23, %sw.bb3 ]
  %shr = lshr i32 %7, 9
  %mul108 = mul i32 %max_blocks.2, %shr
  tail call void @blk_queue_max_discard_sectors(ptr noundef %3, i32 noundef %mul108) #17
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_vpd_page(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_sense(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_report_opcode(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @disk_alloc_independent_access_ranges(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_set_independent_access_ranges(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_same_sectors(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_opal_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_sync_cache(ptr nocapture noundef readonly %sdkp, ptr noundef %sshdr) unnamed_addr #4 align 64 {
entry:
  %my_sshdr = alloca %struct.scsi_sense_hdr, align 8
  %cmd = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_queue, align 4
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_timeout, align 8
  %mul = shl i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %my_sshdr) #17
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %my_sshdr, i32 0, i32 2
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %my_sshdr, i32 0, i32 3
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 69
  %8 = ptrtoint ptr %my_sshdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %my_sshdr, align 8
  %9 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sdev_state.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %10, label %if.end [
    i32 7, label %entry.cleanup37_crit_edge
    i32 6, label %entry.cleanup37_crit_edge70
    i32 4, label %entry.cleanup37_crit_edge71
  ]

entry.cleanup37_crit_edge71:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

entry.cleanup37_crit_edge70:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sshdr, null
  %spec.store.select = select i1 %tobool1.not, ptr %my_sshdr, ptr %sshdr
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #17
  %12 = getelementptr inbounds i8, ptr %cmd, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 9)
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 53, ptr %cmd, align 1
  %15 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_retries, align 8
  %call4 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %spec.store.select, i32 noundef %mul, i32 noundef %16, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #17
  br i1 %cmp5, label %if.end.cleanup37_crit_edge, label %for.cond

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

for.cond:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #17
  %17 = getelementptr inbounds i8, ptr %cmd, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 9)
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 53, ptr %cmd, align 1
  %20 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_retries, align 8
  %call4.1 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %spec.store.select, i32 noundef %mul, i32 noundef %21, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #17
  br i1 %cmp5.1, label %for.cond.cleanup37_crit_edge, label %for.cond.1

for.cond.cleanup37_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

for.cond.1:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #17
  %22 = getelementptr inbounds i8, ptr %cmd, i32 1
  %23 = call ptr @memset(ptr %22, i32 0, i32 9)
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 53, ptr %cmd, align 1
  %25 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_retries, align 8
  %call4.2 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %spec.store.select, i32 noundef %mul, i32 noundef %26, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #17
  br i1 %cmp5.2, label %for.cond.1.cleanup37_crit_edge, label %for.cond.2

for.cond.1.cleanup37_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

for.cond.2:                                       ; preds = %for.cond.1
  call void @sd_print_result(ptr noundef %sdkp, ptr noundef nonnull @.str.99, i32 noundef %call4.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp10 = icmp slt i32 %call4.2, 0
  br i1 %cmp10, label %for.cond.2.cleanup37_crit_edge, label %if.end12

for.cond.2.cleanup37_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

if.end12:                                         ; preds = %for.cond.2
  %27 = and i32 %call4.2, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %.not = icmp eq i32 %27, 2
  br i1 %.not, label %land.lhs.true, label %if.end12.if.end34_crit_edge

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end12
  %28 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %spec.store.select, align 1
  %30 = and i8 %29, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %30)
  %cmp.i = icmp eq i8 %30, 112
  br i1 %cmp.i, label %if.then16, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then16:                                        ; preds = %land.lhs.true
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %33 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %disk_name.i
  call void @scsi_print_sense_hdr(ptr noundef %32, ptr noundef %spec.select.i, ptr noundef nonnull %spec.store.select) #17
  %sshdr.sroa.gep = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %spec.store.select.sroa.sel = select i1 %tobool1.not, ptr %6, ptr %sshdr.sroa.gep
  %35 = ptrtoint ptr %spec.store.select.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %spec.store.select.sroa.sel, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %36, label %if.then16.if.end34_crit_edge [
    i8 58, label %if.then16.cleanup37_crit_edge
    i8 32, label %if.then16.cleanup37_crit_edge72
    i8 116, label %land.lhs.true28
  ]

if.then16.cleanup37_crit_edge72:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

if.then16.cleanup37_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

if.then16.if.end34_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true28:                                  ; preds = %if.then16
  %sshdr.sroa.gep63 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %spec.store.select.sroa.sel64 = select i1 %tobool1.not, ptr %7, ptr %sshdr.sroa.gep63
  %38 = ptrtoint ptr %spec.store.select.sroa.sel64 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spec.store.select.sroa.sel64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %39)
  %cmp30 = icmp eq i8 %39, 113
  br i1 %cmp30, label %land.lhs.true28.cleanup37_crit_edge, label %land.lhs.true28.if.end34_crit_edge

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true28.cleanup37_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

if.end34:                                         ; preds = %land.lhs.true28.if.end34_crit_edge, %if.then16.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end12.if.end34_crit_edge
  %40 = lshr i32 %call4.2, 16
  %trunc = trunc i32 %40 to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %switch.tableidx)
  %41 = icmp ult i8 %switch.tableidx, 13
  br i1 %41, label %switch.lookup, label %if.end34.cleanup37_crit_edge

if.end34.cleanup37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup37

switch.lookup:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %42 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.sd_sync_cache, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %switch.lookup, %if.end34.cleanup37_crit_edge, %land.lhs.true28.cleanup37_crit_edge, %if.then16.cleanup37_crit_edge, %if.then16.cleanup37_crit_edge72, %for.cond.2.cleanup37_crit_edge, %for.cond.1.cleanup37_crit_edge, %for.cond.cleanup37_crit_edge, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge, %entry.cleanup37_crit_edge70, %entry.cleanup37_crit_edge71
  %retval.0 = phi i32 [ -19, %entry.cleanup37_crit_edge ], [ %call4.2, %for.cond.2.cleanup37_crit_edge ], [ 0, %if.then16.cleanup37_crit_edge ], [ 0, %if.then16.cleanup37_crit_edge72 ], [ 0, %land.lhs.true28.cleanup37_crit_edge ], [ -19, %entry.cleanup37_crit_edge70 ], [ -19, %entry.cleanup37_crit_edge71 ], [ 0, %for.cond.1.cleanup37_crit_edge ], [ 0, %for.cond.cleanup37_crit_edge ], [ 0, %if.end.cleanup37_crit_edge ], [ %switch.load, %switch.lookup ], [ -5, %if.end34.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %my_sshdr) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_start_stop_device(ptr nocapture noundef readonly %sdkp, i32 noundef %start) unnamed_addr #4 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #17
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.sd_start_stop_device.cmd, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %2 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %sshdr, align 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %start_stop_pwr_cond = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 41
  %8 = ptrtoint ptr %start_stop_pwr_cond to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %start_stop_pwr_cond, align 4
  %9 = and i64 %bf.load, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool2.not = icmp eq i64 %9, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cond = select i1 %tobool.not, i8 48, i8 16
  %arrayidx5 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %or7 = or i8 %11, %cond
  store i8 %or7, ptr %arrayidx5, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 69
  %12 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdev_state.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %13, label %do.end [
    i32 7, label %if.end9.cleanup_crit_edge
    i32 6, label %if.end9.cleanup_crit_edge46
    i32 4, label %if.end9.cleanup_crit_edge47
  ]

if.end9.cleanup_crit_edge47:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9.cleanup_crit_edge46:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end9
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 20
  %15 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_retries, align 8
  %call13 = call i32 @__scsi_execute(ptr noundef %4, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef %16, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end.if.end26.thread44_crit_edge, label %if.then15

do.end.if.end26.thread44_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.thread44

if.then15:                                        ; preds = %do.end
  call void @sd_print_result(ptr noundef %sdkp, ptr noundef nonnull @.str.100, i32 noundef %call13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp sgt i32 %call13, 0
  br i1 %cmp, label %land.lhs.true, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %17 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sshdr, align 8
  %19 = and i8 %18, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %19)
  %cmp.i = icmp eq i8 %19, 112
  br i1 %cmp.i, label %if.end26, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %22 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %disk_name.i
  call void @scsi_print_sense_hdr(ptr noundef %21, ptr noundef %spec.select.i, ptr noundef nonnull %sshdr) #17
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %25)
  %cmp21 = icmp eq i8 %25, 58
  br i1 %cmp21, label %if.end26.if.end26.thread44_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26.if.end26.thread44_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.thread44

if.end26.thread44:                                ; preds = %if.end26.if.end26.thread44_crit_edge, %do.end.if.end26.thread44_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26.thread44, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge46, %if.end9.cleanup_crit_edge47
  %retval.0 = phi i32 [ -19, %if.end9.cleanup_crit_edge ], [ 0, %if.end26.thread44 ], [ -5, %if.end26.cleanup_crit_edge ], [ -5, %if.then15.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge46 ], [ -19, %if.end9.cleanup_crit_edge47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_suspend_system(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @sd_suspend_common(ptr noundef %dev, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %pm_runtime_suspended.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %pm_runtime_suspended.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_resume_system(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i3 = icmp eq ptr %4, null
  br i1 %tobool.not.i3, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %if.end
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 4
  %manage_start_stop.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 41
  %7 = ptrtoint ptr %manage_start_stop.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i4 = load i64, ptr %manage_start_stop.i, align 4
  %8 = and i64 %bf.load.i4, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool1.not.i = icmp eq i64 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk.i, align 8
  %tobool4.not.i = icmp eq ptr %10, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 3
  %.sink.i = select i1 %tobool4.not.i, ptr null, ptr %disk_name.i
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %6, ptr noundef %.sink.i, ptr noundef nonnull @.str.101) #17
  %call8.i = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %4, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end3.i.return_crit_edge

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  %opal_dev.i = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %opal_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %opal_dev.i, align 4
  %call11.i = tail call zeroext i1 @opal_unlock_from_suspend(ptr noundef %12) #17
  br label %return

return:                                           ; preds = %if.then10.i, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %pm_runtime_suspended.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.then10.i ], [ %call8.i, %if.end3.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_suspend_runtime(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sd_suspend_common(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_resume_runtime(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ignore_media_change = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %ignore_media_change to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %ignore_media_change, align 4
  %5 = and i64 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %if.end.if.end11_crit_edge, label %do.end

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

do.end:                                           ; preds = %if.end
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue, align 4
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_timeout, align 8
  %call3 = tail call i32 @__scsi_execute(ptr noundef %3, ptr noundef nonnull @sd_resume_runtime.cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef %9, i32 noundef 1, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %if.then5

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 8
  %tobool6.not = icmp eq ptr %11, null
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 3
  %.sink = select i1 %tobool6.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %13, ptr noundef %.sink, ptr noundef nonnull @.str.102) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %do.end.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.end.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %manage_start_stop.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 41
  %18 = ptrtoint ptr %manage_start_stop.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load.i = load i64, ptr %manage_start_stop.i, align 4
  %19 = and i64 %bf.load.i, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool1.not.i = icmp eq i64 %19, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk.i, align 8
  %tobool4.not.i = icmp eq ptr %21, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 3
  %.sink.i = select i1 %tobool4.not.i, ptr null, ptr %disk_name.i
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %17, ptr noundef %.sink.i, ptr noundef nonnull @.str.101) #17
  %call8.i = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %15, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  %opal_dev.i = getelementptr inbounds %struct.scsi_disk, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %opal_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opal_dev.i, align 4
  %call11.i = tail call zeroext i1 @opal_unlock_from_suspend(ptr noundef %23) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then10.i ], [ %call8.i, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_suspend_common(ptr nocapture noundef readonly %dev, i1 noundef zeroext %ignore_stop_errors) unnamed_addr #4 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %tobool.not = icmp eq ptr %1, null
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %WCE = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %WCE to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %WCE, align 2
  %5 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end20_crit_edge, label %land.lhs.true

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %media_present = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %media_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %media_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end20_crit_edge, label %if.then3

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then3:                                         ; preds = %land.lhs.true
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk, align 8
  %tobool4.not = icmp eq ptr %9, null
  %device6 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device6, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %.sink = select i1 %tobool4.not, ptr null, ptr %disk_name
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %11, ptr noundef %.sink, ptr noundef nonnull @.str.97) #17
  %call7 = call fastcc i32 @sd_sync_cache(ptr noundef nonnull %1, ptr noundef nonnull %sshdr)
  %12 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call7, label %if.end12 [
    i32 0, label %if.then3.if.end20_crit_edge
    i32 -19, label %if.then3.cleanup_crit_edge
  ]

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.end12:                                         ; preds = %if.then3
  %13 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sshdr, align 8
  %15 = and i8 %14, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %15)
  %cmp.i = icmp eq i8 %15, 112
  br i1 %cmp.i, label %lor.lhs.false, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp15.not = icmp eq i8 %17, 5
  br i1 %cmp15.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.end20:                                         ; preds = %lor.lhs.false.if.end20_crit_edge, %if.then3.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %device21 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device21, align 4
  %manage_start_stop = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 41
  %20 = ptrtoint ptr %manage_start_stop to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load22 = load i64, ptr %manage_start_stop, align 4
  %21 = and i64 %bf.load22, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool25.not = icmp eq i64 %21, 0
  br i1 %tobool25.not, label %if.end20.cleanup_crit_edge, label %if.then26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %disk27 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %disk27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk27, align 8
  %tobool28.not = icmp eq ptr %23, null
  %disk_name32 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 3
  %.sink62 = select i1 %tobool28.not, ptr null, ptr %disk_name32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.14, ptr noundef %19, ptr noundef %.sink62, ptr noundef nonnull @.str.98) #17
  %call37 = call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %1, i32 noundef 0)
  %spec.store.select = select i1 %ignore_stop_errors, i32 0, i32 %call37
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ %call7, %lor.lhs.false.cleanup_crit_edge ], [ %call7, %if.end12.cleanup_crit_edge ], [ %spec.store.select, %if.then26 ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @opal_unlock_from_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_unmap_cmnd(ptr noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %__sector.i = getelementptr i8, ptr %cmd, i32 -152
  %6 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__sector.i, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %12
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %conv70.in.in.in = getelementptr i8, ptr %cmd, i32 -160
  %13 = ptrtoint ptr %conv70.in.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %conv70.in.in = load i32, ptr %conv70.in.in.in, align 8
  %sh_prom.i.pn = zext i32 %sub8.i to i64
  %shr.i68 = lshr i64 %7, %sh_prom.i.pn
  %14 = load ptr, ptr @sd_page_pool, align 4
  %call7 = tail call noalias ptr @mempool_alloc(ptr noundef %14, i32 noundef 2592) #17
  %15 = getelementptr i8, ptr %cmd, i32 -56
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %15, align 8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv70.in = lshr i32 %conv70.in.in, 9
  %conv70 = zext i32 %conv70.in to i64
  %sub.i.op.i.i53.op = sub nsw i32 22, %12
  %sub8.i57 = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i53.op
  %sh_prom.i58 = zext i32 %sub8.i57 to i64
  %shr.i59 = lshr i64 %conv70, %sh_prom.i58
  %conv6 = trunc i64 %shr.i59 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %17, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call7, i32 noundef %or.i.i) #17
  %18 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  %bv_offset = getelementptr i8, ptr %cmd, i32 -48
  %19 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bv_offset, align 8
  %bv_len = getelementptr i8, ptr %cmd, i32 -52
  %20 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 24, ptr %bv_len, align 4
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %21 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_flags, align 8
  %or = or i32 %22, 262144
  store i32 %or, ptr %rq_flags, align 8
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %23 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10, ptr %cmd_len, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 66, ptr %25, align 1
  %27 = load ptr, ptr %cmnd, align 4
  %arrayidx11 = getelementptr i8, ptr %27, i32 8
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 24, ptr %arrayidx11, align 1
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %shr.i.i = lshr i32 %32, 30
  %33 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %shr.i.i, label %if.end.bvec_virt.exit_crit_edge [
    i32 2, label %if.end.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.end.bvec_virt.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %34 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i.not.i = icmp eq i32 %34, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !432

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.103, i32 noundef 240, i32 noundef 9, ptr noundef null) #17
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.end.bvec_virt.exit_crit_edge
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %15, align 4
  %call38.i = tail call ptr @page_address(ptr noundef %36) #17
  %37 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %38
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 22, ptr %add.ptr.i, align 1
  %arrayidx14 = getelementptr i8, ptr %add.ptr.i, i32 2
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 16, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %add.ptr.i, i32 8
  %41 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %shr.i68, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %add.ptr.i, i32 16
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %conv6, ptr %arrayidx16, align 1
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 20
  %43 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_retries, align 8
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %45 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %allowed, align 4
  %transfersize = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %46 = ptrtoint ptr %transfersize to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 24, ptr %transfersize, align 4
  %timeout = getelementptr i8, ptr %cmd, i32 -164
  %47 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3000, ptr %timeout, align 4
  %call17 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #17
  br label %cleanup

cleanup:                                          ; preds = %bvec_virt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call17, %bvec_virt.exit ], [ 9, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %cmd, i1 noundef zeroext %unmap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 8
  %__sector.i = getelementptr i8, ptr %cmd, i32 -152
  %8 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__sector.i, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %12
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %conv73.in.in.in = getelementptr i8, ptr %cmd, i32 -160
  %13 = ptrtoint ptr %conv73.in.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %conv73.in.in = load i32, ptr %conv73.in.in.in, align 8
  %sh_prom.i.pn = zext i32 %sub8.i to i64
  %shr.i71 = lshr i64 %9, %sh_prom.i.pn
  %conv73.in = lshr i32 %conv73.in.in, 9
  %conv73 = zext i32 %conv73.in to i64
  %sub.i.op.i.i56.op = sub nsw i32 22, %12
  %sub8.i60 = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i56.op
  %sh_prom.i61 = zext i32 %sub8.i60 to i64
  %shr.i62 = lshr i64 %conv73, %sh_prom.i61
  %conv6 = trunc i64 %shr.i62 to i32
  %14 = load ptr, ptr @sd_page_pool, align 4
  %call7 = tail call noalias ptr @mempool_alloc(ptr noundef %14, i32 noundef 2592) #17
  %15 = getelementptr i8, ptr %cmd, i32 -56
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %15, align 8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %17, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call7, i32 noundef %or.i.i) #17
  %18 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  %bv_offset = getelementptr i8, ptr %cmd, i32 -48
  %19 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bv_offset, align 8
  %bv_len = getelementptr i8, ptr %cmd, i32 -52
  %20 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %bv_len, align 4
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %21 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_flags, align 8
  %or = or i32 %22, 262144
  store i32 %or, ptr %rq_flags, align 8
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %23 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %cmd_len, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -109, ptr %25, align 1
  br i1 %unmap, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmnd, align 4
  %arrayidx13 = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %cond = phi i32 [ 3000, %if.then11 ], [ 12000, %if.end.if.end14_crit_edge ]
  %30 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmnd, align 4
  %arrayidx16 = getelementptr i8, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %shr.i71, ptr %arrayidx16, align 1
  %33 = load ptr, ptr %cmnd, align 4
  %arrayidx18 = getelementptr i8, ptr %33, i32 10
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %conv6, ptr %arrayidx18, align 1
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 20
  %35 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_retries, align 8
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %37 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %allowed, align 4
  %transfersize = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %38 = ptrtoint ptr %transfersize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %11, ptr %transfersize, align 4
  %timeout = getelementptr i8, ptr %cmd, i32 -164
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %timeout, align 4
  %call21 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call21, %if.end14 ], [ 9, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %cmd, i1 noundef zeroext %unmap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 8
  %__sector.i = getelementptr i8, ptr %cmd, i32 -152
  %8 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__sector.i, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %12
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %conv75.in.in.in = getelementptr i8, ptr %cmd, i32 -160
  %13 = ptrtoint ptr %conv75.in.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %conv75.in.in = load i32, ptr %conv75.in.in.in, align 8
  %sh_prom.i.pn = zext i32 %sub8.i to i64
  %shr.i73 = lshr i64 %9, %sh_prom.i.pn
  %conv75.in = lshr i32 %conv75.in.in, 9
  %conv75 = zext i32 %conv75.in to i64
  %sub.i.op.i.i58.op = sub nsw i32 22, %12
  %sub8.i62 = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i58.op
  %sh_prom.i63 = zext i32 %sub8.i62 to i64
  %shr.i64 = lshr i64 %conv75, %sh_prom.i63
  %14 = load ptr, ptr @sd_page_pool, align 4
  %call7 = tail call noalias ptr @mempool_alloc(ptr noundef %14, i32 noundef 2592) #17
  %15 = getelementptr i8, ptr %cmd, i32 -56
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %15, align 8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %17, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call7, i32 noundef %or.i.i) #17
  %18 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  %bv_offset = getelementptr i8, ptr %cmd, i32 -48
  %19 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bv_offset, align 8
  %bv_len = getelementptr i8, ptr %cmd, i32 -52
  %20 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %bv_len, align 4
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %21 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_flags, align 8
  %or = or i32 %22, 262144
  store i32 %or, ptr %rq_flags, align 8
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %23 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10, ptr %cmd_len, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 65, ptr %25, align 1
  br i1 %unmap, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmnd, align 4
  %arrayidx13 = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %cond = phi i32 [ 3000, %if.then11 ], [ 12000, %if.end.if.end14_crit_edge ]
  %conv15 = trunc i64 %shr.i73 to i32
  %30 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmnd, align 4
  %arrayidx17 = getelementptr i8, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %conv15, ptr %arrayidx17, align 1
  %conv18 = trunc i64 %shr.i64 to i16
  %33 = load ptr, ptr %cmnd, align 4
  %arrayidx20 = getelementptr i8, ptr %33, i32 7
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv18, ptr %arrayidx20, align 1
  %max_retries = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 20
  %35 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_retries, align 8
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %37 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %allowed, align 4
  %transfersize = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %38 = ptrtoint ptr %transfersize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %11, ptr %transfersize, align 4
  %timeout = getelementptr i8, ptr %cmd, i32 -164
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %timeout, align 4
  %call23 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call23, %if.end14 ], [ 9, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sd_zbc_prepare_zone_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_protect_cmnd(ptr nocapture noundef %scmd, i32 noundef %dix, i32 noundef %dif) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bio1 = getelementptr i8, ptr %scmd, i32 -144
  %0 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio1, align 8
  %cmd_flags = getelementptr i8, ptr %scmd, i32 -180
  %2 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dix)
  %tobool3.not = icmp eq i32 %dix, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dif)
  %tobool4 = icmp ne i32 %dif, 0
  %and.i = shl i32 %3, 2
  %4 = and i32 %and.i, 4
  %shl5.i = select i1 %tobool3.not, i32 0, i32 2
  %conv7.i = zext i1 %tobool4 to i32
  %or.i = or i32 %shl5.i, %conv7.i
  %or8.i = or i32 %or.i, %4
  %arrayidx.i = getelementptr [8 x i32], ptr @sd_prot_op.ops, i32 0, i32 %or8.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  br i1 %tobool3.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %entry
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_opf.i.i, align 8
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %bio_integrity.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

bio_integrity.exit.i:                             ; preds = %if.then
  %10 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %bio_integrity.exit.i.if.end_crit_edge, label %bio_integrity_flagged.exit

bio_integrity.exit.i.if.end_crit_edge:            ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

bio_integrity_flagged.exit:                       ; preds = %bio_integrity.exit.i
  %bip_flags.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %bip_flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bip_flags.i, align 4
  %15 = and i16 %14, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.i.not = icmp eq i16 %15, 0
  br i1 %tobool1.i.not, label %bio_integrity_flagged.exit.if.end_crit_edge, label %if.then8

bio_integrity_flagged.exit.if.end_crit_edge:      ; preds = %bio_integrity_flagged.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then8:                                         ; preds = %bio_integrity_flagged.exit
  call void @__sanitizer_cov_trace_pc() #19
  %prot_flags = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %16 = ptrtoint ptr %prot_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prot_flags, align 2
  %18 = or i8 %17, 16
  store i8 %18, ptr %prot_flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then8, %bio_integrity_flagged.exit.if.end_crit_edge, %bio_integrity.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %19 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf.i.i, align 8
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i75 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i75, label %if.end.if.then13_crit_edge, label %bio_integrity.exit.i77

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

bio_integrity.exit.i77:                           ; preds = %if.end
  %22 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool.not.i76 = icmp eq ptr %24, null
  br i1 %tobool.not.i76, label %bio_integrity.exit.i77.if.then13_crit_edge, label %bio_integrity_flagged.exit84

bio_integrity.exit.i77.if.then13_crit_edge:       ; preds = %bio_integrity.exit.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

bio_integrity_flagged.exit84:                     ; preds = %bio_integrity.exit.i77
  %bip_flags.i78 = getelementptr inbounds %struct.bio_integrity_payload, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %bip_flags.i78 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bip_flags.i78, align 4
  %27 = and i16 %26, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool1.i81.not = icmp eq i16 %27, 0
  br i1 %tobool1.i81.not, label %bio_integrity_flagged.exit84.if.then13_crit_edge, label %bio_integrity_flagged.exit84.if.end19_crit_edge

bio_integrity_flagged.exit84.if.end19_crit_edge:  ; preds = %bio_integrity_flagged.exit84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

bio_integrity_flagged.exit84.if.then13_crit_edge: ; preds = %bio_integrity_flagged.exit84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

if.then13:                                        ; preds = %bio_integrity_flagged.exit84.if.then13_crit_edge, %bio_integrity.exit.i77.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %prot_flags14 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %28 = ptrtoint ptr %prot_flags14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %prot_flags14, align 2
  %30 = or i8 %29, 2
  store i8 %30, ptr %prot_flags14, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %bio_integrity_flagged.exit84.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dif)
  %cmp20.not = icmp eq i32 %dif, 3
  br i1 %cmp20.not, label %if.end19.if.end37_crit_edge, label %if.then22

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then22:                                        ; preds = %if.end19
  %prot_flags23 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %31 = ptrtoint ptr %prot_flags23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prot_flags23, align 2
  %33 = or i8 %32, 8
  store i8 %33, ptr %prot_flags23, align 2
  %bi_opf.i.i85 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf.i.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_opf.i.i85, align 8
  %36 = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i86 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i86, label %if.then22.if.then31_crit_edge, label %bio_integrity.exit.i88

if.then22.if.then31_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31

bio_integrity.exit.i88:                           ; preds = %if.then22
  %37 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.not.i87 = icmp eq ptr %39, null
  br i1 %tobool.not.i87, label %bio_integrity.exit.i88.if.then31_crit_edge, label %bio_integrity_flagged.exit95

bio_integrity.exit.i88.if.then31_crit_edge:       ; preds = %bio_integrity.exit.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31

bio_integrity_flagged.exit95:                     ; preds = %bio_integrity.exit.i88
  %bip_flags.i89 = getelementptr inbounds %struct.bio_integrity_payload, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %bip_flags.i89 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bip_flags.i89, align 4
  %42 = and i16 %41, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool1.i92.not = icmp eq i16 %42, 0
  br i1 %tobool1.i92.not, label %bio_integrity_flagged.exit95.if.then31_crit_edge, label %bio_integrity_flagged.exit95.if.end37_crit_edge

bio_integrity_flagged.exit95.if.end37_crit_edge:  ; preds = %bio_integrity_flagged.exit95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

bio_integrity_flagged.exit95.if.then31_crit_edge: ; preds = %bio_integrity_flagged.exit95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31

if.then31:                                        ; preds = %bio_integrity_flagged.exit95.if.then31_crit_edge, %bio_integrity.exit.i88.if.then31_crit_edge, %if.then22.if.then31_crit_edge
  %43 = or i8 %32, 12
  %44 = ptrtoint ptr %prot_flags23 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %prot_flags23, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %bio_integrity_flagged.exit95.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  br i1 %tobool4, label %if.then39, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then39:                                        ; preds = %if.end37
  %prot_flags40 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %45 = ptrtoint ptr %prot_flags40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %prot_flags40, align 2
  %47 = or i8 %46, 1
  store i8 %47, ptr %prot_flags40, align 2
  %bi_opf.i.i96 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf.i.i96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_opf.i.i96, align 8
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i97 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i97, label %if.then39.if.end47_crit_edge, label %bio_integrity.exit.i99

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

bio_integrity.exit.i99:                           ; preds = %if.then39
  %51 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool.not.i98 = icmp eq ptr %53, null
  br i1 %tobool.not.i98, label %bio_integrity.exit.i99.if.end47_crit_edge, label %bio_integrity_flagged.exit106

bio_integrity.exit.i99.if.end47_crit_edge:        ; preds = %bio_integrity.exit.i99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

bio_integrity_flagged.exit106:                    ; preds = %bio_integrity.exit.i99
  call void @__sanitizer_cov_trace_pc() #19
  %bip_flags.i100 = getelementptr inbounds %struct.bio_integrity_payload, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %bip_flags.i100 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bip_flags.i100, align 4
  %56 = and i16 %55, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool1.i103.not = icmp eq i16 %56, 0
  %spec.select = select i1 %tobool1.i103.not, i8 32, i8 96
  br label %if.end47

if.end47:                                         ; preds = %bio_integrity_flagged.exit106, %bio_integrity.exit.i99.if.end47_crit_edge, %if.then39.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %protect.0 = phi i8 [ 0, %if.end37.if.end47_crit_edge ], [ 32, %bio_integrity.exit.i99.if.end47_crit_edge ], [ 32, %if.then39.if.end47_crit_edge ], [ %spec.select, %bio_integrity_flagged.exit106 ]
  %conv48 = trunc i32 %6 to i8
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 10
  %57 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv48, ptr %prot_op.i, align 4
  %conv49 = trunc i32 %dif to i8
  %prot_type.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 11
  %58 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv49, ptr %prot_type.i, align 1
  %arrayidx.i107 = getelementptr [7 x i32], ptr @sd_prot_flag_mask.flag_mask, i32 0, i32 %6
  %59 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i107, align 4
  %prot_flags51 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 12
  %61 = ptrtoint ptr %prot_flags51 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %prot_flags51, align 2
  %63 = trunc i32 %60 to i8
  %conv54 = and i8 %62, %63
  store i8 %conv54, ptr %prot_flags51, align 2
  ret i8 %protect.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_rw32_cmnd(ptr nocapture noundef %cmd, i1 noundef zeroext %write, i64 noundef %lba, i32 noundef %nr_blocks, i8 noundef zeroext %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sd_cdb_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 2592) #17
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %1 = ptrtoint ptr %cmnd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %cmnd, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !436

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %2 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 32, ptr %cmd_len, align 4
  %3 = getelementptr inbounds i8, ptr %call, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 27)
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 127, ptr %call, align 1
  %arrayidx7 = getelementptr i8, ptr %call, i32 7
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %arrayidx7, align 1
  %conv10 = select i1 %write, i8 11, i8 9
  %arrayidx12 = getelementptr i8, ptr %call, i32 9
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr i8, ptr %call, i32 10
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %flags, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr i8, ptr %call, i32 12
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %lba, ptr %arrayidx16, align 1
  %conv17 = trunc i64 %lba to i32
  %arrayidx19 = getelementptr i8, ptr %call, i32 20
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %conv17, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr i8, ptr %call, i32 28
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %nr_blocks, ptr %arrayidx21, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end ], [ 9, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_rw6_cmnd(ptr noundef %cmd, i1 noundef zeroext %write, i64 noundef %lba, i32 noundef %nr_blocks, i8 noundef zeroext %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_blocks)
  %cmp = icmp eq i32 %nr_blocks, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b81 = load i1, ptr @sd_setup_rw6_cmnd.__already_done, align 1
  br i1 %.b81, label %land.rhs.return_crit_edge, label %if.then, !prof !432

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @sd_setup_rw6_cmnd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1189, i32 noundef 9, ptr noundef null) #17
  br label %return

if.end38:                                         ; preds = %entry
  %0 = and i8 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool39.not = icmp eq i8 %0, 0
  br i1 %tobool39.not, label %if.end47, label %if.then46, !prof !432

if.then46:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.53, ptr noundef %cmd, ptr noundef nonnull @.str.111) #17
  br label %return

if.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %1 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6, ptr %cmd_len, align 4
  %conv50 = select i1 %write, i8 10, i8 8
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv50, ptr %3, align 1
  %shr = lshr i64 %lba, 16
  %5 = trunc i64 %shr to i8
  %conv52 = and i8 %5, 31
  %6 = load ptr, ptr %cmnd, align 4
  %arrayidx54 = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv52, ptr %arrayidx54, align 1
  %shr55 = lshr i64 %lba, 8
  %conv57 = trunc i64 %shr55 to i8
  %8 = load ptr, ptr %cmnd, align 4
  %arrayidx59 = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv57, ptr %arrayidx59, align 1
  %conv61 = trunc i64 %lba to i8
  %10 = load ptr, ptr %cmnd, align 4
  %arrayidx63 = getelementptr i8, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv61, ptr %arrayidx63, align 1
  %conv64 = trunc i32 %nr_blocks to i8
  %12 = load ptr, ptr %cmnd, align 4
  %arrayidx66 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv64, ptr %arrayidx66, align 1
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx68 = getelementptr i8, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx68, align 1
  br label %return

return:                                           ; preds = %if.end47, %if.then46, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i8 [ 10, %if.then46 ], [ 0, %if.end47 ], [ 10, %if.then ], [ 10, %land.rhs.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_free_sgtables(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_command_normalize_sense(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_completed_bytes(ptr nocapture noundef readonly %scmd) unnamed_addr #4 align 64 {
entry:
  %bad_lba = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bad_lba) #17
  %2 = ptrtoint ptr %bad_lba to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %bad_lba, align 8, !annotation !437
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ugt i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %7 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sense_buffer, align 4
  %call2 = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %8, i32 noundef 96, ptr noundef nonnull %bad_lba) #17
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sector_size, align 4
  %__sector.i = getelementptr i8, ptr %scmd, i32 -152
  %11 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__sector.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  %13 = call i32 @llvm.ctlz.i32(i32 %10, i1 true) #17, !range !434
  %sub.i.op.i.i.op = sub nsw i32 22, %13
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %sub.i.op.i.i44 = xor i32 %13, 31
  %sub.i.i45 = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i44
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %shr.i48 = lshr i32 %15, %sub.i.i45
  %conv8.i = zext i32 %shr.i48 to i64
  %16 = ptrtoint ptr %bad_lba to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bad_lba, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %shr.i)
  %cmp9 = icmp uge i64 %17, %shr.i
  %add = add i64 %shr.i, %conv8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %add)
  %cmp10.not = icmp ult i64 %17, %add
  %or.cond = select i1 %cmp9, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %scmd, i32 0, i32 5
  %18 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resid_len.i, align 4
  %sub = sub i32 %15, %19
  %sub15 = sub i64 %17, %shr.i
  %20 = trunc i64 %sub15 to i32
  %conv1.i = mul i32 %10, %20
  %21 = call i32 @llvm.umin.i32(i32 %conv1.i, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bad_lba) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_zbc_complete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_get_sense_info_fld(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_disk_release(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %disk1 = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %index = getelementptr i8, ptr %dev, i32 1196
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @sd_index_ida, i32 noundef %5) #17
  tail call void @blk_mq_freeze_queue(ptr noundef %3) #17
  tail call void @blk_mq_unfreeze_queue(ptr noundef %3) #17
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 8
  tail call void @put_disk(ptr noundef %1) #17
  %device = getelementptr i8, ptr %dev, i32 -4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #17
  tail call void @sd_zbc_release_disk(ptr noundef %add.ptr) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %RCD = getelementptr i8, ptr %dev, i32 1218
  %0 = ptrtoint ptr %RCD to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %RCD, align 2
  %bf.lshr = lshr i32 %bf.load, 28
  %add = and i32 %bf.lshr, 3
  %arrayidx = getelementptr [4 x ptr], ptr @sd_cache_types, i32 0, i32 %add
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.117, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_type_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %buffer = alloca [64 x i8], align 1
  %data = alloca %struct.scsi_mode_data, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #17
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #17
  %3 = call ptr @memset(ptr %data, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #17
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %sshdr, align 8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.208)
  switch i8 %6, label %entry.cleanup_crit_edge [
    i8 0, label %entry.if.end_crit_edge
    i8 20, label %entry.if.end_crit_edge120
  ]

entry.if.end_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge120
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(11) @cache_type_store.temp, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr9 = getelementptr i8, ptr %buf, i32 10
  %cache_override = getelementptr i8, ptr %dev, i32 1218
  %8 = ptrtoint ptr %cache_override to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load = load i32, ptr %cache_override, align 2
  %bf.set = or i32 %bf.load, 1073741824
  store i32 %bf.set, ptr %cache_override, align 2
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cache_override10 = getelementptr i8, ptr %dev, i32 1218
  %9 = ptrtoint ptr %cache_override10 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load11 = load i32, ptr %cache_override10, align 2
  %bf.clear12 = and i32 %bf.load11, -1073741825
  store i32 %bf.clear12, ptr %cache_override10, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %buf.addr.0 = phi ptr [ %add.ptr9, %if.then8 ], [ %buf, %if.else ]
  %call15 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @sd_cache_types, i32 noundef 4, ptr noundef %buf.addr.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %and = and i32 %call15, 1
  %and20 = and i32 %call15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.land.end_crit_edge, label %land.rhs

if.end19.land.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %write_prot = getelementptr i8, ptr %dev, i32 1213
  %10 = ptrtoint ptr %write_prot to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_prot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  %phi.cast = zext i1 %tobool22.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end19.land.end_crit_edge
  %12 = phi i32 [ 0, %if.end19.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %cache_override24 = getelementptr i8, ptr %dev, i32 1218
  %13 = ptrtoint ptr %cache_override24 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load25 = load i32, ptr %cache_override24, align 2
  %14 = and i32 %bf.load25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %if.end37, label %if.then28

if.then28:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  %bf.shl = shl nuw nsw i32 %12, 29
  %bf.clear30 = and i32 %bf.load25, -805306369
  %bf.set31 = or i32 %bf.clear30, %bf.shl
  %bf.shl34 = shl nuw nsw i32 %and, 28
  %bf.set36 = or i32 %bf.set31, %bf.shl34
  %15 = ptrtoint ptr %cache_override24 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %bf.set36, ptr %cache_override24, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp ne i32 %12, 0
  %16 = and i32 %bf.set31, 671088640
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %16)
  %.not.i = icmp eq i32 %16, 671088640
  %disk.i = getelementptr i8, ptr %dev, i32 928
  %17 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue.i, align 4
  tail call void @blk_queue_write_cache(ptr noundef %20, i1 noundef zeroext %tobool.not.i, i1 noundef zeroext %.not.i) #17
  br label %cleanup

if.end37:                                         ; preds = %land.end
  %max_retries = getelementptr i8, ptr %dev, i32 1168
  %21 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_retries, align 8
  %call38 = call i32 @scsi_mode_sense(ptr noundef %1, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %buffer, i32 noundef 64, i32 noundef 3000, i32 noundef %22, ptr noundef nonnull %data, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %header_length = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %header_length to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %header_length, align 4
  %conv42 = zext i8 %26 to i32
  %block_descriptor_length = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %block_descriptor_length to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %block_descriptor_length, align 4
  %conv43 = zext i16 %28 to i32
  %29 = add nuw nsw i32 %conv42, %conv43
  %sub44 = sub i32 %24, %29
  %30 = call i32 @llvm.umin.i32(i32 %sub44, i32 64)
  %add.ptr52 = getelementptr i8, ptr %buffer, i32 %conv42
  %add.ptr55 = getelementptr i8, ptr %add.ptr52, i32 %conv43
  %arrayidx = getelementptr i8, ptr %add.ptr55, i32 2
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %33 = and i8 %32, -6
  %shl = shl nuw nsw i32 %12, 2
  %or = or i32 %shl, %and
  %34 = trunc i32 %or to i8
  %conv62 = or i8 %33, %34
  store i8 %conv62, ptr %arrayidx, align 1
  %35 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr55, align 1
  %37 = lshr i8 %36, 7
  %and65.lobit = zext i8 %37 to i32
  %and70 = and i8 %36, 127
  store i8 %and70, ptr %add.ptr55, align 1
  %device_specific = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %device_specific to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %device_specific, align 1
  %39 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_retries, align 8
  %call73 = call i32 @scsi_mode_select(ptr noundef %1, i32 noundef 1, i32 noundef %and65.lobit, ptr noundef %add.ptr55, i32 noundef %30, i32 noundef 3000, i32 noundef %40, ptr noundef nonnull %data, ptr noundef nonnull %sshdr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end79, label %if.then75

if.then75:                                        ; preds = %if.end41
  %41 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sshdr, align 8
  %43 = and i8 %42, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %43)
  %cmp.i = icmp eq i8 %43, 112
  br i1 %cmp.i, label %if.then77, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %disk.i118 = getelementptr i8, ptr %dev, i32 928
  %46 = ptrtoint ptr %disk.i118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disk.i118, align 8
  %tobool.not.i119 = icmp eq ptr %47, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i119, ptr null, ptr %disk_name.i
  call void @scsi_print_sense_hdr(ptr noundef %45, ptr noundef %spec.select.i, ptr noundef nonnull %sshdr) #17
  br label %cleanup

if.end79:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %disk = getelementptr i8, ptr %dev, i32 928
  %48 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disk, align 8
  call fastcc void @sd_revalidate_disk(ptr noundef %49)
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then77, %if.then75.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then28, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then28 ], [ %count, %if.end79 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ -22, %if.then77 ], [ -22, %if.then75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_select(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @FUA_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %DPOFUA = getelementptr i8, ptr %dev, i32 1218
  %0 = ptrtoint ptr %DPOFUA to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %DPOFUA, align 2
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %bf.clear)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allow_restart_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %allow_restart = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %allow_restart to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %allow_restart, align 4
  %bf.lshr = lshr i64 %bf.load, 36
  %3 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %3, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %bf.cast)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allow_restart_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #17
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %v, align 1, !annotation !437
  %device = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.scsi_device, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.209)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.if.end7_crit_edge
    i8 20, label %if.end.if.end7_crit_edge17
  ]

if.end.if.end7_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge17
  %call8 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %v, align 1, !range !446
  %allow_restart = getelementptr inbounds %struct.scsi_device, ptr %2, i32 0, i32 41
  %8 = zext i8 %7 to i64
  %9 = ptrtoint ptr %allow_restart to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load = load i64, ptr %allow_restart, align 4
  %bf.shl = shl nuw nsw i64 %8, 36
  %bf.clear = and i64 %bf.load, -68719476737
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %allow_restart, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manage_start_stop_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %manage_start_stop = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %manage_start_stop to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %manage_start_stop, align 4
  %bf.lshr = lshr i64 %bf.load, 35
  %3 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %3, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %bf.cast)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manage_start_stop_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #17
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %v, align 1, !annotation !437
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %v, align 1, !range !446
  %manage_start_stop = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %5 = zext i8 %4 to i64
  %6 = ptrtoint ptr %manage_start_stop to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load = load i64, ptr %manage_start_stop, align 4
  %bf.shl = shl nuw nsw i64 %5, 35
  %bf.clear = and i64 %bf.load, -34359738369
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %manage_start_stop, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protection_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %protection_type = getelementptr i8, ptr %dev, i32 1214
  %0 = ptrtoint ptr %protection_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protection_type, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protection_type_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !437
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then4, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %conv = trunc i32 %2 to i8
  %protection_type = getelementptr i8, ptr %dev, i32 1214
  %3 = ptrtoint ptr %protection_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %protection_type, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %count, %if.then4 ], [ %count, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protection_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %protection_type = getelementptr i8, ptr %dev, i32 1214
  %4 = ptrtoint ptr %protection_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protection_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp ugt i8 %5, 3
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %scsi_host_dix_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

scsi_host_dix_capable.exit:                       ; preds = %entry
  %conv = zext i8 %5 to i32
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot_capabilities.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %and.i = and i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %conv
  %arrayidx.i30 = getelementptr [4 x i8], ptr @scsi_host_dix_capable.cap, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i30, align 1
  %conv.i31 = zext i8 %11 to i32
  %and.i32 = and i32 %7, %conv.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not = icmp eq i32 %and.i32, 0
  br i1 %tobool.not, label %scsi_host_dix_capable.exit.if.end_crit_edge, label %scsi_host_dix_capable.exit.if.end13.thread_crit_edge

scsi_host_dix_capable.exit.if.end13.thread_crit_edge: ; preds = %scsi_host_dix_capable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.thread

scsi_host_dix_capable.exit.if.end_crit_edge:      ; preds = %scsi_host_dix_capable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %scsi_host_dix_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i4044 = phi i32 [ %spec.select.i, %scsi_host_dix_capable.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %prot_capabilities.i35 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 41
  %12 = ptrtoint ptr %prot_capabilities.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prot_capabilities.i35, align 4
  %and.i36 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool7.not = icmp eq i32 %and.i36, 0
  %spec.select = select i1 %tobool7.not, i32 %retval.0.i4044, i32 0
  %14 = or i32 %spec.select, %and.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.128, i32 6)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %spec.select55 = select i1 %tobool7.not, i32 %retval.0.i4044, i32 0
  %spec.select56 = select i1 %tobool7.not, ptr @.str.131, ptr @.str.130
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end13, %scsi_host_dix_capable.exit.if.end13.thread_crit_edge
  %dif.05054 = phi i32 [ %spec.select.i, %scsi_host_dix_capable.exit.if.end13.thread_crit_edge ], [ %spec.select55, %if.end13 ]
  %17 = phi ptr [ @.str.130, %scsi_host_dix_capable.exit.if.end13.thread_crit_edge ], [ %spec.select56, %if.end13 ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.129, ptr noundef nonnull %17, i32 noundef %dif.05054)
  br label %cleanup

cleanup:                                          ; preds = %if.end13.thread, %if.then11
  %retval.0 = phi i32 [ %call15, %if.end13.thread ], [ 5, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @app_tag_own_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ATO = getelementptr i8, ptr %dev, i32 1218
  %0 = ptrtoint ptr %ATO to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %ATO, align 2
  %bf.lshr = lshr i32 %bf.load, 31
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %bf.lshr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thin_provisioning_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lbpme = getelementptr i8, ptr %dev, i32 1218
  %0 = ptrtoint ptr %lbpme to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %lbpme, align 2
  %bf.lshr = lshr i32 %bf.load, 25
  %bf.clear = and i32 %bf.lshr, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %bf.clear)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @provisioning_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %provisioning_mode = getelementptr i8, ptr %dev, i32 1215
  %0 = ptrtoint ptr %provisioning_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %provisioning_mode, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @lbp_mode, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.117, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @provisioning_mode_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %zoned.i = getelementptr i8, ptr %dev, i32 1218
  %2 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %3 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %cmp.i = icmp eq i32 %3, 16384
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %sd_is_zoned.exit

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then2

sd_is_zoned.exit:                                 ; preds = %if.end
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %7)
  %cmp1.i.not = icmp eq i8 %7, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.if.then2_crit_edge, label %if.end3

sd_is_zoned.exit.if.then2_crit_edge:              ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then2

if.then2:                                         ; preds = %sd_is_zoned.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %disk.i = getelementptr i8, ptr %dev, i32 928
  %8 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sector_size.i, align 4
  %unmap_alignment.i = getelementptr i8, ptr %dev, i32 1192
  %16 = ptrtoint ptr %unmap_alignment.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unmap_alignment.i, align 8
  %mul.i = mul i32 %17, %15
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 19
  %18 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.i, ptr %discard_alignment.i, align 4
  %physical_block_size.i = getelementptr i8, ptr %dev, i32 1200
  %19 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %physical_block_size.i, align 8
  %unmap_granularity.i = getelementptr i8, ptr %dev, i32 1188
  %21 = ptrtoint ptr %unmap_granularity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unmap_granularity.i, align 4
  %mul1.i = mul i32 %22, %15
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %mul1.i) #17
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 18
  %24 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %discard_granularity.i, align 4
  %provisioning_mode.i = getelementptr i8, ptr %dev, i32 1215
  %25 = ptrtoint ptr %provisioning_mode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %provisioning_mode.i, align 1
  tail call void @blk_queue_max_discard_sectors(ptr noundef %11, i32 noundef 0) #17
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %11) #17
  br label %cleanup

if.end3:                                          ; preds = %sd_is_zoned.exit
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.not = icmp eq i8 %27, 0
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @lbp_mode, i32 noundef 6, ptr noundef %buf) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @sd_config_discard(ptr noundef %add.ptr, i32 noundef %call7)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then2 ], [ %count, %if.end11 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zeroing_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %zeroing_mode = getelementptr i8, ptr %dev, i32 1216
  %0 = ptrtoint ptr %zeroing_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %zeroing_mode, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @zeroing_mode, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.117, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zeroing_mode_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @zeroing_mode, i32 noundef 4, ptr noundef %buf) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = trunc i32 %call1 to i8
  %zeroing_mode = getelementptr i8, ptr %dev, i32 1216
  %0 = ptrtoint ptr %zeroing_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %zeroing_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_write_same_blocks_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %max_ws_blocks = getelementptr i8, ptr %dev, i32 1180
  %0 = ptrtoint ptr %max_ws_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_ws_blocks, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_write_same_blocks_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #17
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max, align 4, !annotation !437
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.210)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.if.end7_crit_edge
    i8 20, label %if.end.if.end7_crit_edge32
  ]

if.end.if.end7_crit_edge32:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge32
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %max) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %no_write_same = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %8 = ptrtoint ptr %no_write_same to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %no_write_same, align 4
  %bf.set = or i64 %bf.load, 17592186044416
  store i64 %bf.set, ptr %no_write_same, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %7)
  %cmp14 = icmp ult i32 %7, 8388608
  br i1 %cmp14, label %if.then16, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %no_write_same17 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %no_write_same17 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load18 = load i64, ptr %no_write_same17, align 4
  %bf.clear19 = and i64 %bf.load18, -17592186044417
  store i64 %bf.clear19, ptr %no_write_same17, align 4
  %max_ws_blocks = getelementptr i8, ptr %dev, i32 1180
  %10 = ptrtoint ptr %max_ws_blocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %max_ws_blocks, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.else.if.end22_crit_edge, %if.then13
  call fastcc void @sd_config_write_same(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end22 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_medium_access_timeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %max_medium_access_timeouts = getelementptr i8, ptr %dev, i32 1204
  %0 = ptrtoint ptr %max_medium_access_timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_medium_access_timeouts, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.123, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_medium_access_timeouts_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %max_medium_access_timeouts = getelementptr i8, ptr %dev, i32 1204
  %call1 = tail call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef %max_medium_access_timeouts) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call1, %if.end ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zoned_cap_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp = icmp eq i8 %3, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.148, i32 14)
  br label %cleanup

if.end:                                           ; preds = %entry
  %zoned = getelementptr i8, ptr %dev, i32 1218
  %5 = ptrtoint ptr %zoned to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %zoned, align 2
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %bf.clear, label %if.end15 [
    i32 1, label %if.then4
    i32 2, label %if.then13
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.149, i32 12)
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.150, i32 15)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.128, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ 13, %if.then ], [ 11, %if.then4 ], [ 14, %if.then13 ], [ 5, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_retries_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %max_retries = getelementptr i8, ptr %dev, i32 1168
  %0 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_retries, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.152, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_retries_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %retries = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #17
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retries, align 4, !annotation !437
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %retries) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1 = icmp slt i32 %4, 6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %max_retries = getelementptr i8, ptr %dev, i32 1168
  %5 = ptrtoint ptr %max_retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_retries, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.153, i32 noundef 5) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then2 ], [ -22, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_default_probe(i32 noundef %devt) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !89, !90, !92, !94, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !112, !114, !115, !116, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !171, !173, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !265, !267, !269, !271, !273, !274, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !301, !303, !304, !306, !308, !310, !312, !314, !316, !318, !320, !321, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !339, !341, !343, !345, !347, !348, !350, !351, !353, !354, !356, !358, !360, !362, !364, !366, !368, !369, !371, !373, !375, !377, !379, !381, !382, !384, !385, !387, !388, !390, !392, !394, !396, !397, !399, !401, !403, !404, !405, !406, !408, !410, !412, !413, !414, !416, !417, !418, !420, !421}
!llvm.named.register.sp = !{!422}
!llvm.module.flags = !{!423, !424, !425, !426, !427, !428, !429, !430}
!llvm.ident = !{!431}

!0 = !{ptr @__UNIQUE_ID_author286, !1, !"__UNIQUE_ID_author286", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sd.c", i32 76, i32 1}
!2 = !{ptr @__UNIQUE_ID_description287, !3, !"__UNIQUE_ID_description287", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sd.c", i32 77, i32 1}
!4 = !{ptr @__UNIQUE_ID_file288, !5, !"__UNIQUE_ID_file288", i1 false, i1 false}
!5 = !{!"../drivers/scsi/sd.c", i32 78, i32 1}
!6 = !{ptr @__UNIQUE_ID_license289, !5, !"__UNIQUE_ID_license289", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias290, !8, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!8 = !{!"../drivers/scsi/sd.c", i32 80, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias291, !10, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!10 = !{!"../drivers/scsi/sd.c", i32 81, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias292, !12, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!12 = !{!"../drivers/scsi/sd.c", i32 82, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias293, !14, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sd.c", i32 83, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias294, !16, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!16 = !{!"../drivers/scsi/sd.c", i32 84, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias295, !18, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!18 = !{!"../drivers/scsi/sd.c", i32 85, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias296, !20, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!20 = !{!"../drivers/scsi/sd.c", i32 86, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias297, !22, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!22 = !{!"../drivers/scsi/sd.c", i32 87, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias298, !24, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!24 = !{!"../drivers/scsi/sd.c", i32 88, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias299, !26, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!26 = !{!"../drivers/scsi/sd.c", i32 89, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias300, !28, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!28 = !{!"../drivers/scsi/sd.c", i32 90, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias301, !30, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!30 = !{!"../drivers/scsi/sd.c", i32 91, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias302, !32, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!32 = !{!"../drivers/scsi/sd.c", i32 92, i32 1}
!33 = !{ptr @__UNIQUE_ID_alias303, !34, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!34 = !{!"../drivers/scsi/sd.c", i32 93, i32 1}
!35 = !{ptr @__UNIQUE_ID_alias304, !36, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!36 = !{!"../drivers/scsi/sd.c", i32 94, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias305, !38, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!38 = !{!"../drivers/scsi/sd.c", i32 95, i32 1}
!39 = !{ptr @__UNIQUE_ID_alias306, !40, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!40 = !{!"../drivers/scsi/sd.c", i32 96, i32 1}
!41 = !{ptr @__UNIQUE_ID_alias307, !42, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!42 = !{!"../drivers/scsi/sd.c", i32 97, i32 1}
!43 = !{ptr @__UNIQUE_ID_alias308, !44, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!44 = !{!"../drivers/scsi/sd.c", i32 98, i32 1}
!45 = !{ptr @__UNIQUE_ID_alias309, !46, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!46 = !{!"../drivers/scsi/sd.c", i32 99, i32 1}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/sd.c", i32 3929, i32 2}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @exit_sd._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @exit_sd._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/sd.c", i32 3939, i32 34}
!55 = !{ptr @__initcall__kmod_sd_mod__346_3942_init_sd6, !56, !"__initcall__kmod_sd_mod__346_3942_init_sd6", i1 false, i1 false}
!56 = !{!"../drivers/scsi/sd.c", i32 3942, i32 1}
!57 = !{ptr @__exitcall_exit_sd, !58, !"__exitcall_exit_sd", i1 false, i1 false}
!58 = !{!"../drivers/scsi/sd.c", i32 3943, i32 1}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/sd.c", i32 3956, i32 3}
!61 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/sd.c", i32 3961, i32 3}
!66 = !{ptr @sd_cdb_cache, !67, !"sd_cdb_cache", i1 false, i1 false}
!67 = !{!"../drivers/scsi/sd.c", i32 130, i32 27}
!68 = !{ptr @sd_cdb_pool, !69, !"sd_cdb_pool", i1 false, i1 false}
!69 = !{!"../drivers/scsi/sd.c", i32 131, i32 19}
!70 = !{ptr @sd_page_pool, !71, !"sd_page_pool", i1 false, i1 false}
!71 = !{!"../drivers/scsi/sd.c", i32 132, i32 19}
!72 = !{ptr @sd_template, !73, !"sd_template", i1 false, i1 false}
!73 = !{!"../drivers/scsi/sd.c", i32 612, i32 27}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/sd.c", i32 3493, i32 2}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/sd.c", i32 3508, i32 3}
!78 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/sd.c", i32 3514, i32 3}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/sd.c", i32 3537, i32 27}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/sd.c", i32 3594, i32 4}
!85 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/sd.c", i32 3597, i32 2}
!88 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sd_bio_compl_lkclass, !91, !"sd_bio_compl_lkclass", i1 false, i1 false}
!91 = !{!"../drivers/scsi/sd.c", i32 133, i32 30}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/sd.c", i32 123, i32 8}
!94 = !{ptr @sd_index_ida, !93, !"sd_index_ida", i1 false, i1 false}
!95 = !{ptr @sd_fops, !96, !"sd_fops", i1 false, i1 false}
!96 = !{!"../drivers/scsi/sd.c", i32 1891, i32 45}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/sd.c", i32 1429, i32 2}
!99 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/sd.c", i32 128, i32 8}
!101 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sd_ref_mutex, !100, !"sd_ref_mutex", i1 false, i1 false}
!103 = !{ptr @.str.23, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/sd.c", i32 1499, i32 2}
!105 = !{ptr @.str.24, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/sd.c", i32 1557, i32 2}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/sd.c", i32 1629, i32 2}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../drivers/scsi/sd.c", i32 1768, i32 8}
!111 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!114 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!118 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sd_pr_ops, !120, !"sd_pr_ops", i1 false, i1 false}
!120 = !{!"../drivers/scsi/sd.c", i32 1883, i32 28}
!121 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/sd.c", i32 1841, i32 3}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/sd.c", i32 3283, i32 2}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/sd.c", i32 3295, i32 3}
!127 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/sd.c", i32 2183, i32 6}
!129 = !{ptr @.str.34, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/sd.c", i32 2199, i32 27}
!131 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/sd.c", i32 2224, i32 5}
!133 = !{ptr @.str.36, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/sd.c", i32 2240, i32 4}
!135 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sd_spinup_disk._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @sd_spinup_disk._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.38, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/sd.c", i32 2260, i32 5}
!140 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/sd.c", i32 2270, i32 4}
!142 = !{ptr @sd_spinup_disk._entry.39, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @sd_spinup_disk._entry_ptr.41, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/sd.c", i32 2272, i32 4}
!146 = !{ptr @sd_spinup_disk._entry.42, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @sd_spinup_disk._entry_ptr.44, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/sd.c", i32 2543, i32 4}
!150 = !{ptr @.str.46, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/sd.c", i32 2547, i32 5}
!152 = !{ptr @.str.47, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/sd.c", i32 2570, i32 3}
!154 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/sd.c", i32 2579, i32 3}
!156 = !{ptr @.str.49, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/sd.c", i32 2587, i32 3}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/sd.c", i32 2403, i32 25}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/sd.c", i32 2426, i32 3}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/sd.c", i32 2326, i32 3}
!164 = !{ptr @.str.53, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/sd.c", i32 2300, i32 4}
!166 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/sd.c", i32 2305, i32 4}
!169 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/sd.c", i32 2309, i32 4}
!171 = !{ptr @scsi_host_dif_capable.cap, !172, !"cap", i1 false, i1 false}
!172 = !{!"../include/scsi/scsi_host.h", i32 836, i32 23}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/sd.c", i32 2480, i32 25}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/sd.c", i32 3051, i32 3}
!177 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.60, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/sd.c", i32 3055, i32 4}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/sd.c", i32 3058, i32 4}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/sd.c", i32 2632, i32 2}
!185 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/sd.c", i32 2638, i32 3}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/sd.c", i32 2675, i32 3}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/sd.c", i32 2707, i32 3}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/sd.c", i32 2713, i32 4}
!193 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.70, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/sd.c", i32 2715, i32 4}
!197 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/sd.c", i32 2773, i32 3}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/sd.c", i32 2787, i32 3}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/sd.c", i32 2810, i32 6}
!204 = !{ptr @.str.75, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/sd.c", i32 2834, i32 3}
!206 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/sd.c", i32 2849, i32 4}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/sd.c", i32 2853, i32 4}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/sd.c", i32 2864, i32 4}
!212 = !{ptr @.str.79, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.82, !211, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/sd.c", i32 2879, i32 3}
!218 = !{ptr @.str.84, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/sd.c", i32 2881, i32 3}
!220 = !{ptr @.str.85, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/sd.c", i32 2886, i32 3}
!222 = !{ptr @.str.86, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/sd.c", i32 2890, i32 3}
!224 = !{ptr @.str.87, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/sd.c", i32 2920, i32 3}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/sd.c", i32 2932, i32 3}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/sd.c", i32 3176, i32 3}
!230 = !{ptr @.str.90, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/sd.c", i32 3196, i32 4}
!232 = !{ptr @.str.91, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/sd.c", i32 3209, i32 3}
!234 = !{ptr @.str.92, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/sd.c", i32 3233, i32 3}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/sd.c", i32 3241, i32 3}
!238 = !{ptr @.str.94, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/sd.c", i32 3249, i32 3}
!240 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/sd.c", i32 3257, i32 3}
!242 = !{ptr @.str.96, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/sd.c", i32 3264, i32 2}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/sd.c", i32 3735, i32 3}
!246 = !{ptr @.str.98, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/sd.c", i32 3740, i32 3}
!248 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/sd.c", i32 1717, i32 25}
!250 = !{ptr @.str.100, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/sd.c", i32 3703, i32 25}
!252 = !{ptr @sd_pm_ops, !253, !"sd_pm_ops", i1 false, i1 false}
!253 = !{!"../drivers/scsi/sd.c", i32 603, i32 32}
!254 = !{ptr @.str.101, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/sd.c", i32 3811, i32 2}
!256 = !{ptr @sd_resume_runtime.cmd, !257, !"cmd", i1 false, i1 false}
!257 = !{!"../drivers/scsi/sd.c", i32 3838, i32 19}
!258 = !{ptr @.str.102, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/sd.c", i32 3843, i32 4}
!260 = distinct !{null, !261, !"__already_done", i1 false, i1 false}
!261 = !{!"../drivers/scsi/sd.c", i32 1368, i32 3}
!262 = distinct !{null, !263, !"__already_done", i1 false, i1 false}
!263 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!264 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.104, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/sd.c", i32 1234, i32 30}
!267 = !{ptr @.str.105, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/sd.c", i32 1239, i32 30}
!269 = !{ptr @.str.106, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/sd.c", i32 1244, i32 30}
!271 = !{ptr @.str.107, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/sd.c", i32 1307, i32 2}
!273 = !{ptr @__func__.sd_setup_read_write_cmnd, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.108, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/sd.c", i32 1312, i32 2}
!276 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.110, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @sd_prot_op.ops, !279, !"ops", i1 false, i1 false}
!279 = !{!"../drivers/scsi/sd.c", i32 722, i32 28}
!280 = !{ptr @sd_prot_flag_mask.flag_mask, !281, !"flag_mask", i1 false, i1 false}
!281 = !{!"../drivers/scsi/sd.c", i32 742, i32 28}
!282 = distinct !{null, !283, !"__already_done", i1 false, i1 false}
!283 = !{!"../drivers/scsi/sd.c", i32 1189, i32 6}
!284 = !{ptr @.str.111, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/sd.c", i32 1198, i32 30}
!286 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/sd.c", i32 2065, i32 4}
!288 = !{ptr @.str.113, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/sd.c", i32 2138, i32 2}
!290 = !{ptr @.str.114, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/sd.c", i32 1967, i32 8}
!292 = !{ptr @.str.115, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/sd.c", i32 597, i32 11}
!294 = !{ptr @sd_disk_class, !295, !"sd_disk_class", i1 false, i1 false}
!295 = !{!"../drivers/scsi/sd.c", i32 596, i32 21}
!296 = !{ptr @sd_disk_groups, !297, !"sd_disk_groups", i1 false, i1 false}
!297 = !{!"../drivers/scsi/sd.c", i32 594, i32 1}
!298 = !{ptr @sd_disk_group, !297, !"sd_disk_group", i1 false, i1 false}
!299 = !{ptr @sd_disk_attrs, !300, !"sd_disk_attrs", i1 false, i1 false}
!300 = !{!"../drivers/scsi/sd.c", i32 577, i32 26}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/sd.c", i32 291, i32 8}
!303 = !{ptr @dev_attr_cache_type, !302, !"dev_attr_cache_type", i1 false, i1 false}
!304 = !{ptr @.str.117, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/sd.c", i32 289, i32 22}
!306 = !{ptr @.str.118, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/sd.c", i32 136, i32 2}
!308 = !{ptr @.str.119, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/sd.c", i32 136, i32 19}
!310 = !{ptr @.str.120, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/sd.c", i32 136, i32 27}
!312 = !{ptr @.str.121, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/sd.c", i32 137, i32 2}
!314 = !{ptr @sd_cache_types, !315, !"sd_cache_types", i1 false, i1 false}
!315 = !{!"../drivers/scsi/sd.c", i32 135, i32 20}
!316 = !{ptr @cache_type_store.temp, !317, !"temp", i1 false, i1 false}
!317 = !{!"../drivers/scsi/sd.c", i32 164, i32 20}
!318 = !{ptr @.str.122, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/sd.c", i32 300, i32 8}
!320 = !{ptr @dev_attr_FUA, !319, !"dev_attr_FUA", i1 false, i1 false}
!321 = !{ptr @.str.123, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/sd.c", i32 298, i32 22}
!323 = !{ptr @.str.124, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/sd.c", i32 281, i32 8}
!325 = !{ptr @dev_attr_allow_restart, !324, !"dev_attr_allow_restart", i1 false, i1 false}
!326 = !{ptr @.str.125, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/sd.c", i32 250, i32 8}
!328 = !{ptr @dev_attr_manage_start_stop, !327, !"dev_attr_manage_start_stop", i1 false, i1 false}
!329 = !{ptr @.str.126, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/sd.c", i32 332, i32 8}
!331 = !{ptr @dev_attr_protection_type, !330, !"dev_attr_protection_type", i1 false, i1 false}
!332 = !{ptr @.str.127, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/sd.c", i32 355, i32 8}
!334 = !{ptr @dev_attr_protection_mode, !333, !"dev_attr_protection_mode", i1 false, i1 false}
!335 = !{ptr @.str.128, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/sd.c", i32 351, i32 23}
!337 = !{ptr @.str.129, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/sd.c", i32 353, i32 22}
!339 = !{ptr @.str.130, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/sd.c", i32 353, i32 38}
!341 = !{ptr @.str.131, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/sd.c", i32 353, i32 46}
!343 = !{ptr @scsi_host_dix_capable.cap, !344, !"cap", i1 false, i1 false}
!344 = !{!"../include/scsi/scsi_host.h", i32 850, i32 23}
!345 = !{ptr @.str.132, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/sd.c", i32 364, i32 8}
!347 = !{ptr @dev_attr_app_tag_own, !346, !"dev_attr_app_tag_own", i1 false, i1 false}
!348 = !{ptr @.str.133, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/sd.c", i32 374, i32 8}
!350 = !{ptr @dev_attr_thin_provisioning, !349, !"dev_attr_thin_provisioning", i1 false, i1 false}
!351 = !{ptr @.str.134, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/sd.c", i32 422, i32 8}
!353 = !{ptr @dev_attr_provisioning_mode, !352, !"dev_attr_provisioning_mode", i1 false, i1 false}
!354 = !{ptr @.str.135, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/sd.c", i32 378, i32 19}
!356 = !{ptr @.str.136, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/sd.c", i32 379, i32 20}
!358 = !{ptr @.str.137, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/sd.c", i32 380, i32 19}
!360 = !{ptr @.str.138, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/sd.c", i32 381, i32 19}
!362 = !{ptr @.str.139, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/sd.c", i32 382, i32 19}
!364 = !{ptr @lbp_mode, !365, !"lbp_mode", i1 false, i1 false}
!365 = !{!"../drivers/scsi/sd.c", i32 377, i32 20}
!366 = !{ptr @.str.140, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/sd.c", i32 459, i32 8}
!368 = !{ptr @dev_attr_zeroing_mode, !367, !"dev_attr_zeroing_mode", i1 false, i1 false}
!369 = !{ptr @.str.141, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/sd.c", i32 426, i32 21}
!371 = !{ptr @.str.142, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/sd.c", i32 427, i32 18}
!373 = !{ptr @.str.143, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/sd.c", i32 428, i32 25}
!375 = !{ptr @.str.144, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/sd.c", i32 429, i32 25}
!377 = !{ptr @zeroing_mode, !378, !"zeroing_mode", i1 false, i1 false}
!378 = !{!"../drivers/scsi/sd.c", i32 425, i32 20}
!379 = !{ptr @.str.145, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/sd.c", i32 527, i32 8}
!381 = !{ptr @dev_attr_max_write_same_blocks, !380, !"dev_attr_max_write_same_blocks", i1 false, i1 false}
!382 = !{ptr @.str.146, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/sd.c", i32 485, i32 8}
!384 = !{ptr @dev_attr_max_medium_access_timeouts, !383, !"dev_attr_max_medium_access_timeouts", i1 false, i1 false}
!385 = !{ptr @.str.147, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/sd.c", i32 542, i32 8}
!387 = !{ptr @dev_attr_zoned_cap, !386, !"dev_attr_zoned_cap", i1 false, i1 false}
!388 = !{ptr @.str.148, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/sd.c", i32 535, i32 23}
!390 = !{ptr @.str.149, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/sd.c", i32 537, i32 23}
!392 = !{ptr @.str.150, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/sd.c", i32 539, i32 23}
!394 = !{ptr @.str.151, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/sd.c", i32 575, i32 8}
!396 = !{ptr @dev_attr_max_retries, !395, !"dev_attr_max_retries", i1 false, i1 false}
!397 = !{ptr @.str.152, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/sd.c", i32 572, i32 22}
!399 = !{ptr @.str.153, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/sd.c", i32 561, i32 2}
!401 = !{ptr @.str.154, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/sd.c", i32 3860, i32 2}
!403 = !{ptr @.str.155, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @init_sd._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @init_sd._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @init_sd.__key, !407, !"__key", i1 false, i1 false}
!407 = !{!"../drivers/scsi/sd.c", i32 3871, i32 8}
!408 = !{ptr @.str.156, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/sd.c", i32 3875, i32 35}
!410 = !{ptr @.str.158, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/sd.c", i32 3878, i32 3}
!412 = !{ptr @init_sd._entry.157, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @init_sd._entry_ptr.159, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.161, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/sd.c", i32 3885, i32 3}
!416 = !{ptr @init_sd._entry.160, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @init_sd._entry_ptr.162, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.164, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/sd.c", i32 3892, i32 3}
!420 = !{ptr @init_sd._entry.163, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @init_sd._entry_ptr.165, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{!"sp"}
!423 = !{i32 1, !"wchar_size", i32 2}
!424 = !{i32 1, !"min_enum_size", i32 4}
!425 = !{i32 8, !"branch-target-enforcement", i32 0}
!426 = !{i32 8, !"sign-return-address", i32 0}
!427 = !{i32 8, !"sign-return-address-all", i32 0}
!428 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!429 = !{i32 7, !"uwtable", i32 1}
!430 = !{i32 7, !"frame-pointer", i32 2}
!431 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!432 = !{!"branch_weights", i32 2000, i32 1}
!433 = !{i64 2155029909, i64 2155030391, i64 2155029946, i64 2155030002, i64 2155030036, i64 2155030060, i64 2155030101, i64 2155030122, i64 2155030150, i64 2155030184}
!434 = !{i32 0, i32 33}
!435 = !{i64 2155100933, i64 2155101416, i64 2155100970, i64 2155101026, i64 2155101060, i64 2155101084, i64 2155101125, i64 2155101146, i64 2155101174, i64 2155101208}
!436 = !{!"branch_weights", i32 1, i32 2000}
!437 = !{!"auto-init"}
!438 = !{i64 2148529375}
!439 = !{i64 2148444660, i64 2148444692, i64 2148444721, i64 2148444755, i64 2148444786, i64 2148444809}
!440 = !{i64 2148529604}
!441 = !{i64 2148532416}
!442 = !{i64 2148447125, i64 2148447157, i64 2148447186, i64 2148447220, i64 2148447251, i64 2148447274}
!443 = !{i64 2148532645}
!444 = !{i64 2149460099}
!445 = !{i64 2149460365}
!446 = !{i8 0, i8 2}
