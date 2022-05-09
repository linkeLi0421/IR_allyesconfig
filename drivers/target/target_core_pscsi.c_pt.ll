; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_pscsi.c_pt.bc'
source_filename = "../drivers/target/target_core_pscsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.match_token = type { i32, ptr }
%struct.pscsi_hba_virt = type { i32, i32, ptr, [116 x i8] }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref = type { i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pscsi_dev_virt = type { %struct.se_device, i32, i32, i32, i32, i32, ptr, ptr, ptr, [16 x i8] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.substring_t = type { ptr, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.t10_vpd = type { [254 x i8], i32, i32, i32, i32, i32, %struct.list_head }
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@pscsi_ops = internal constant { %struct.target_backend_ops, [44 x i8] } { %struct.target_backend_ops { [16 x i8] c"pscsi\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer, [4 x i8] zeroinitializer, ptr null, i8 7, i8 0, ptr @pscsi_attach_hba, ptr @pscsi_detach_hba, ptr @pscsi_pmode_enable_hba, ptr @pscsi_alloc_device, ptr @pscsi_configure_device, ptr @pscsi_destroy_device, ptr @pscsi_free_device, ptr null, ptr null, ptr @pscsi_set_configfs_dev_params, ptr @pscsi_show_configfs_dev_params, ptr @pscsi_parse_cdb, ptr null, ptr @pscsi_get_device_type, ptr @pscsi_get_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @passthrough_attrib_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description315 = internal constant [57 x i8] c"target_core_pscsi.description=TCM PSCSI subsystem plugin\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [45 x i8] c"target_core_pscsi.author=nab@Linux-iSCSI.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [56 x i8] c"target_core_pscsi.file=drivers/target/target_core_pscsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [30 x i8] c"target_core_pscsi.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_target_core_pscsi__319_1108_pscsi_module_init6 = internal global ptr @pscsi_module_init, section ".initcall6.init", align 4
@__exitcall_pscsi_module_exit = internal global ptr @pscsi_module_exit, section ".exitcall.exit", align 4
@passthrough_attrib_attrs = external dso_local global [0 x ptr], align 4
@pscsi_attach_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate struct pscsi_hba_virt\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pscsi_attach_hba\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/target/target_core_pscsi.c\00", [61 x i8] zeroinitializer }, align 32
@pscsi_attach_hba._entry_ptr = internal global ptr @pscsi_attach_hba._entry, section ".printk_index", align 4
@pscsi_attach_hba.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"target_core_pscsi\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"CORE_HBA[%d] - TCM SCSI HBA Driver %s on Generic Target Core Stack %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v4.0\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v5.0\00", [27 x i8] zeroinitializer }, align 32
@pscsi_attach_hba.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CORE_HBA[%d] - Attached SCSI HBA to Generic\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pscsi_detach_hba.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pscsi_detach_hba\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"CORE_HBA[%d] - Detached SCSI HBA: %s from Generic Target Core\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@pscsi_detach_hba.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"CORE_HBA[%d] - Detached Virtual SCSI HBA from Generic Target Core\0A\00", [61 x i8] zeroinitializer }, align 32
@pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pscsi_pmode_enable_hba\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CORE_HBA[%d] - Disabled pSCSI HBA Passthrough %s\0A\00", [46 x i8] zeroinitializer }, align 32
@pscsi_pmode_enable_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013pSCSI: Unable to locate SCSI Host for phv_host_id: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@pscsi_pmode_enable_hba._entry_ptr = internal global ptr @pscsi_pmode_enable_hba._entry, section ".printk_index", align 4
@pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CORE_HBA[%d] - Enabled pSCSI HBA Passthrough %s\0A\00", [47 x i8] zeroinitializer }, align 32
@pscsi_alloc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Unable to allocate memory for struct pscsi_dev_virt\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pscsi_alloc_device\00", [45 x i8] zeroinitializer }, align 32
@pscsi_alloc_device._entry_ptr = internal global ptr @pscsi_alloc_device._entry, section ".printk_index", align 4
@pscsi_alloc_device.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PSCSI: Allocated pdv: %p for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Missing scsi_channel_id=, scsi_target_id= and scsi_lun_id= parameters\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pscsi_configure_device\00", [41 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr = internal global ptr @pscsi_configure_device._entry, section ".printk_index", align 4
@pscsi_configure_device._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013pSCSI: Unable to locate struct Scsi_Host for PHV_LLD_SCSI_HOST_NO\0A\00", [59 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.23 = internal global ptr @pscsi_configure_device._entry.21, section ".printk_index", align 4
@pscsi_configure_device._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013pSCSI: udev_path attribute has not been set before ENABLE=1\0A\00", [33 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.26 = internal global ptr @pscsi_configure_device._entry.24, section ".printk_index", align 4
@pscsi_configure_device._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013pSCSI: Unable to set hba_mode with active devices\0A\00", [43 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.29 = internal global ptr @pscsi_configure_device._entry.27, section ".printk_index", align 4
@pscsi_configure_device._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pSCSI: Unable to locate pdv_host_id: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.32 = internal global ptr @pscsi_configure_device._entry.30, section ".printk_index", align 4
@pscsi_configure_device._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013pSCSI: PHV_VIRTUAL_HOST_ID set while struct Scsi_Host exists\0A\00", [32 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.35 = internal global ptr @pscsi_configure_device._entry.33, section ".printk_index", align 4
@pscsi_configure_device._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pSCSI: Unable to locate %d:%d:%d:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pscsi_configure_device._entry_ptr.38 = internal global ptr @pscsi_configure_device._entry.36, section ".printk_index", align 4
@pscsi_create_type_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013scsi_device_get() failed for %d:%d:%d:%llu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pscsi_create_type_disk\00", [41 x i8] zeroinitializer }, align 32
@pscsi_create_type_disk._entry_ptr = internal global ptr @pscsi_create_type_disk._entry, section ".printk_index", align 4
@pscsi_create_type_disk._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pSCSI: blkdev_get_by_path() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@pscsi_create_type_disk._entry_ptr.43 = internal global ptr @pscsi_create_type_disk._entry.41, section ".printk_index", align 4
@pscsi_create_type_disk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CORE_PSCSI[%d] - Added TYPE_%s for %d:%d:%d:%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISK\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ZBC\00", [28 x i8] zeroinitializer }, align 32
@pscsi_add_device_to_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Set broken SCSI Device %d:%d:%llu queue_depth to %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pscsi_add_device_to_list\00", [39 x i8] zeroinitializer }, align 32
@pscsi_add_device_to_list._entry_ptr = internal global ptr @pscsi_add_device_to_list._entry, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.8s\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.16s\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.4s\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@pscsi_get_inquiry_vpd_device_ident._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013page_83[3]: identifier length zero!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pscsi_get_inquiry_vpd_device_ident\00", [61 x i8] zeroinitializer }, align 32
@pscsi_get_inquiry_vpd_device_ident._entry_ptr = internal global ptr @pscsi_get_inquiry_vpd_device_ident._entry, section ".printk_index", align 4
@pscsi_get_inquiry_vpd_device_ident.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"T10 VPD Identifier Length: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pscsi_get_inquiry_vpd_device_ident._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unable to allocate memory for struct t10_vpd\0A\00", [48 x i8] zeroinitializer }, align 32
@pscsi_get_inquiry_vpd_device_ident._entry_ptr.58 = internal global ptr @pscsi_get_inquiry_vpd_device_ident._entry.56, section ".printk_index", align 4
@pscsi_create_type_nondisk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.59, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pscsi_create_type_nondisk\00", [38 x i8] zeroinitializer }, align 32
@pscsi_create_type_nondisk._entry_ptr = internal global ptr @pscsi_create_type_nondisk._entry, section ".printk_index", align 4
@pscsi_create_type_nondisk.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CORE_PSCSI[%d] - Added Type: %s for %d:%d:%d:%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@tokens = internal global { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.68 }, %struct.match_token { i32 1, ptr @.str.69 }, %struct.match_token { i32 2, ptr @.str.70 }, %struct.match_token { i32 3, ptr @.str.71 }, %struct.match_token { i32 4, ptr null }], [56 x i8] zeroinitializer }, align 32
@pscsi_set_configfs_dev_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013PSCSI[%d]: Unable to accept scsi_host_id while phv_mode == PHV_LLD_SCSI_HOST_NO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pscsi_set_configfs_dev_params\00", [34 x i8] zeroinitializer }, align 32
@pscsi_set_configfs_dev_params._entry_ptr = internal global ptr @pscsi_set_configfs_dev_params._entry, section ".printk_index", align 4
@pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PSCSI[%d]: Referencing SCSI Host ID: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PSCSI[%d]: Referencing SCSI Channel ID: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.66, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PSCSI[%d]: Referencing SCSI Target ID: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PSCSI[%d]: Referencing SCSI LUN ID: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scsi_host_id=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi_channel_id=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_target_id=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi_lun_id=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PHBA Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"SCSI Device Bus Location: Channel ID: %d Target ID: %d LUN: %d Host ID: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"        Vendor: %.8s\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" Model: %.16s\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" Rev: %.4s\0A\00", [20 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@pscsi_map_sg.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pscsi_map_sg\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PSCSI: nr_pages: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pscsi_map_sg.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.80, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PSCSI: i: %d page: %p len: %d off: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pscsi_map_sg.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.81, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PSCSI: Allocated bio: %p, dir: %s nr_vecs: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@pscsi_map_sg.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.84, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"PSCSI: Calling bio_add_pc_page() i: %d bio: %p page: %p len: %d off: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pscsi_map_sg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.85, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PSCSI: bio->bi_vcnt: %d nr_vecs: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pscsi_map_sg.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.86, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"PSCSI: Reached bio->bi_vcnt max: %d i: %d bio: %p, allocating another bio\0A\00", [53 x i8] zeroinitializer }, align 32
@pscsi_map_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.78, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013pSCSI: failed to append bio\0A\00", [33 x i8] zeroinitializer }, align 32
@pscsi_map_sg._entry_ptr = internal global ptr @pscsi_map_sg._entry, section ".printk_index", align 4
@pscsi_map_sg._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.78, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pscsi_map_sg._entry_ptr.89 = internal global ptr @pscsi_map_sg._entry.88, section ".printk_index", align 4
@pscsi_get_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013PSCSI: bio_kmalloc() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pscsi_get_bio\00", [18 x i8] zeroinitializer }, align 32
@pscsi_get_bio._entry_ptr = internal global ptr @pscsi_get_bio._entry, section ".printk_index", align 4
@pscsi_req_done.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pscsi_req_done\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"PSCSI Status Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@pscsi_req_done.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.92, ptr @.str.2, ptr @.str.94, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"PSCSI Host Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@pscsi_complete_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unable to get buf for scatterlist\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pscsi_complete_cmd\00", [45 x i8] zeroinitializer }, align 32
@pscsi_complete_cmd._entry_ptr = internal global ptr @pscsi_complete_cmd._entry, section ".printk_index", align 4
@pscsi_complete_cmd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Tape FM/EOM/ILI status detected. Treat as normal read.\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.pscsi_map_sg = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 90]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 21, i64 85]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"pscsi_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1073, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 56, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 64, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 67, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 81, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 86, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 107, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 120, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 128, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 341, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 345, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 437, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 448, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 457, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 468, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 482, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 490, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 531, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 362, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 375, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 388, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 296, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 174, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 177, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 180, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 204, i32 57 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 246, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 250, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 254, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 405, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 417, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 731, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 708, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 739, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 750, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 759, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 769, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 779, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 709, i32 21 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 710, i32 24 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 711, i32 23 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 712, i32 20 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 802, i32 25 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 804, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 806, i32 18 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 812, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 814, i32 25 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 816, i32 25 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 860, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 867, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 894, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 899, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 905, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 908, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 914, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 933, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 836, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1049, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1062, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 657, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [38 x i8] c"../drivers/target/target_core_pscsi.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 696, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"switch.table.pscsi_map_sg\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_pscsi_module_exit, ptr @__initcall__kmod_target_core_pscsi__319_1108_pscsi_module_init6, ptr @pscsi_add_device_to_list._entry, ptr @pscsi_add_device_to_list._entry_ptr, ptr @pscsi_alloc_device._entry, ptr @pscsi_alloc_device._entry_ptr, ptr @pscsi_attach_hba._entry, ptr @pscsi_attach_hba._entry_ptr, ptr @pscsi_complete_cmd._entry, ptr @pscsi_complete_cmd._entry_ptr, ptr @pscsi_configure_device._entry, ptr @pscsi_configure_device._entry.21, ptr @pscsi_configure_device._entry.24, ptr @pscsi_configure_device._entry.27, ptr @pscsi_configure_device._entry.30, ptr @pscsi_configure_device._entry.33, ptr @pscsi_configure_device._entry.36, ptr @pscsi_configure_device._entry_ptr, ptr @pscsi_configure_device._entry_ptr.23, ptr @pscsi_configure_device._entry_ptr.26, ptr @pscsi_configure_device._entry_ptr.29, ptr @pscsi_configure_device._entry_ptr.32, ptr @pscsi_configure_device._entry_ptr.35, ptr @pscsi_configure_device._entry_ptr.38, ptr @pscsi_create_type_disk._entry, ptr @pscsi_create_type_disk._entry.41, ptr @pscsi_create_type_disk._entry_ptr, ptr @pscsi_create_type_disk._entry_ptr.43, ptr @pscsi_create_type_nondisk._entry, ptr @pscsi_create_type_nondisk._entry_ptr, ptr @pscsi_get_bio._entry, ptr @pscsi_get_bio._entry_ptr, ptr @pscsi_get_inquiry_vpd_device_ident._entry, ptr @pscsi_get_inquiry_vpd_device_ident._entry.56, ptr @pscsi_get_inquiry_vpd_device_ident._entry_ptr, ptr @pscsi_get_inquiry_vpd_device_ident._entry_ptr.58, ptr @pscsi_map_sg._entry, ptr @pscsi_map_sg._entry.88, ptr @pscsi_map_sg._entry_ptr, ptr @pscsi_map_sg._entry_ptr.89, ptr @pscsi_module_exit, ptr @pscsi_pmode_enable_hba._entry, ptr @pscsi_pmode_enable_hba._entry_ptr, ptr @pscsi_set_configfs_dev_params._entry, ptr @pscsi_set_configfs_dev_params._entry_ptr, ptr @pscsi_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @tokens, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @switch.table.pscsi_map_sg], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_attach_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_pmode_enable_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_alloc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_configure_device._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_create_type_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_create_type_disk._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_add_device_to_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_get_inquiry_vpd_device_ident._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_get_inquiry_vpd_device_ident._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_create_type_nondisk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_set_configfs_dev_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_map_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_map_sg._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_get_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pscsi_complete_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pscsi_map_sg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @target_backend_unregister(ptr noundef nonnull @pscsi_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_backend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_backend_register(ptr noundef nonnull @pscsi_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_attach_hba(ptr nocapture noundef %hba, i32 noundef %host_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %host_id, ptr %call7.i.i, align 128
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %phv_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %phv_mode, align 4
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %3 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %hba_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_attach_hba.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_attach_hba, %if.then8)) #11
          to label %do.body12 [label %if.then8], !srcloc !228

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %4 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_attach_hba.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.4, i32 noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_attach_hba.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_attach_hba, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !228

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id25 = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %6 = ptrtoint ptr %hba_id25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_id25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_attach_hba.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.7, i32 noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body12, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then24 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_detach_hba(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  %phv_lld_host = getelementptr inbounds %struct.pscsi_hba_virt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phv_lld_host, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_host_put(ptr noundef nonnull %3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_detach_hba.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_detach_hba, %if.then4)) #11
          to label %if.end25 [label %if.then4], !srcloc !228

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %4 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hba_id, align 4
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostt, align 8
  %name = getelementptr inbounds %struct.scsi_host_template, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %tobool5.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool5.not, ptr @.str.10, ptr %9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_detach_hba.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.9, i32 noundef %5, ptr noundef nonnull %spec.select) #11
  br label %if.end25

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_detach_hba.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_detach_hba, %if.then20)) #11
          to label %if.end25 [label %if.then20], !srcloc !228

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id21 = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %10 = ptrtoint ptr %hba_id21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hba_id21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_detach_hba.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.11, i32 noundef %11) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.body8, %if.then4, %if.then
  tail call void @kfree(ptr noundef %1) #11
  %12 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hba_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_pmode_enable_hba(ptr nocapture noundef readonly %hba, i32 noundef %mode_flag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  %phv_lld_host = getelementptr inbounds %struct.pscsi_hba_virt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phv_lld_host, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_flag)
  %tobool.not = icmp eq i32 %mode_flag, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %phv_lld_host, align 8
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %phv_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %phv_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_pmode_enable_hba, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !228

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %6 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_id, align 4
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostt, align 8
  %name = getelementptr inbounds %struct.scsi_host_template, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %tobool8.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool8.not, ptr @.str.10, ptr %11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.13, i32 noundef %7, ptr noundef nonnull %spec.select) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  tail call void @scsi_host_put(ptr noundef nonnull %3) #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 128
  %conv = trunc i32 %13 to i16
  %call13 = tail call ptr @scsi_host_lookup(i16 noundef zeroext %conv) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 128
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %15) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %phv_lld_host, align 8
  %phv_mode24 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %phv_mode24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %phv_mode24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_pmode_enable_hba, %if.then37)) #11
          to label %cleanup [label %if.then37], !srcloc !228

if.then37:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id38 = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %18 = ptrtoint ptr %hba_id38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hba_id38, align 4
  %hostt39 = getelementptr inbounds %struct.Scsi_Host, ptr %call13, i32 0, i32 11
  %20 = ptrtoint ptr %hostt39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hostt39, align 8
  %name40 = getelementptr inbounds %struct.scsi_host_template, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name40, align 8
  %tobool41.not = icmp eq ptr %23, null
  %spec.select69 = select i1 %tobool41.not, ptr @.str.10, ptr %23
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.15, i32 noundef %19, ptr noundef nonnull %spec.select69) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end22, %do.end18, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.then37 ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pscsi_alloc_device(ptr nocapture noundef readnone %hba, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3840) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_alloc_device.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_alloc_device, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !228

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_alloc_device.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.18, ptr noundef nonnull %call7.i.i, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body2, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_configure_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %phv_lld_host = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phv_lld_host, align 8
  %pdv_flags = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %pdv_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdv_flags, align 16
  %8 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %.not = icmp eq i32 %8, 7
  br i1 %.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool10.not = icmp eq ptr %5, null
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %phv_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phv_mode, align 4
  br i1 %tobool10.not, label %if.then11, label %if.else56

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end18:                                         ; preds = %if.then11
  %dev_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_flags, align 8
  %and19 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %and29 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  %dev_count = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not = icmp eq i32 %14, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end39:                                         ; preds = %if.then31
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 128
  %conv.i = trunc i32 %16 to i16
  %call13.i = tail call ptr @scsi_host_lookup(i16 noundef zeroext %conv.i) #11
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %pscsi_pmode_enable_hba.exit.thread201, label %if.end22.i

pscsi_pmode_enable_hba.exit.thread201:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 128
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %18) #15
  br label %cleanup

if.end22.i:                                       ; preds = %if.end39
  %19 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13.i, ptr %phv_lld_host, align 8
  %20 = ptrtoint ptr %phv_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %phv_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_configure_device, %pscsi_pmode_enable_hba.exit.thread)) #11
          to label %if.end43 [label %pscsi_pmode_enable_hba.exit.thread], !srcloc !228

pscsi_pmode_enable_hba.exit.thread:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id38.i = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %hba_id38.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hba_id38.i, align 4
  %hostt39.i = getelementptr inbounds %struct.Scsi_Host, ptr %call13.i, i32 0, i32 11
  %23 = ptrtoint ptr %hostt39.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hostt39.i, align 8
  %name40.i = getelementptr inbounds %struct.scsi_host_template, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %name40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name40.i, align 8
  %tobool41.not.i = icmp eq ptr %26, null
  %spec.select69.i = select i1 %tobool41.not.i, ptr @.str.10, ptr %26
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.15, i32 noundef %22, ptr noundef nonnull %spec.select69.i) #11
  br label %if.end43

if.end43:                                         ; preds = %pscsi_pmode_enable_hba.exit.thread, %if.end22.i
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hba_flags, align 4
  %or = or i32 %28, 2
  store i32 %or, ptr %hba_flags, align 4
  %29 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phv_lld_host, align 8
  br label %if.end67

if.else:                                          ; preds = %if.end27
  %pdv_host_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 2
  %31 = ptrtoint ptr %pdv_host_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pdv_host_id, align 4
  %conv = trunc i32 %32 to i16
  %call45 = tail call ptr @scsi_host_lookup(i16 noundef zeroext %conv) #11
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %pdv_host_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pdv_host_id, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %34) #15
  br label %cleanup

if.end54:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pdv_lld_host = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 8
  %35 = ptrtoint ptr %pdv_lld_host to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call45, ptr %pdv_lld_host, align 4
  br label %if.end67

if.else56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp58 = icmp eq i32 %10, 0
  br i1 %cmp58, label %do.end63, label %if.else56.if.end67_crit_edge

if.else56.if.end67_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end63:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %cleanup

if.end67:                                         ; preds = %if.else56.if.end67_crit_edge, %if.end54, %if.end43
  %tobool120.not = phi i1 [ true, %if.else56.if.end67_crit_edge ], [ false, %if.end43 ], [ true, %if.end54 ]
  %sh.0 = phi ptr [ %5, %if.else56.if.end67_crit_edge ], [ %30, %if.end43 ], [ %call45, %if.end54 ]
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %sh.0, i32 0, i32 4
  %36 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %37) #11
  %38 = ptrtoint ptr %sh.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn206 = load ptr, ptr %sh.0, align 8
  %cmp70.not207 = icmp eq ptr %.pn206, %sh.0
  br i1 %cmp70.not207, label %if.end67.for.end_crit_edge, label %for.body.lr.ph

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end67
  %pdv_channel_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 3
  %39 = ptrtoint ptr %pdv_channel_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pdv_channel_id, align 8
  %pdv_target_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 4
  %pdv_lun_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn208 = phi ptr [ %.pn206, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %channel = getelementptr i8, ptr %.pn208, i32 124
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp72.not = icmp eq i32 %40, %42
  br i1 %cmp72.not, label %lor.lhs.false74, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false74:                                  ; preds = %for.body
  %43 = ptrtoint ptr %pdv_target_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pdv_target_id, align 4
  %id = getelementptr i8, ptr %.pn208, i32 120
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp75.not = icmp eq i32 %44, %46
  br i1 %cmp75.not, label %lor.lhs.false77, label %lor.lhs.false74.for.inc_crit_edge

lor.lhs.false74.for.inc_crit_edge:                ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %47 = ptrtoint ptr %pdv_lun_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pdv_lun_id, align 32
  %conv78 = sext i32 %48 to i64
  %lun = getelementptr i8, ptr %.pn208, i32 128
  %49 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv78)
  %cmp79.not = icmp eq i64 %50, %conv78
  br i1 %cmp79.not, label %if.end82, label %lor.lhs.false77.for.inc_crit_edge

lor.lhs.false77.for.inc_crit_edge:                ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end82:                                         ; preds = %lor.lhs.false77
  %sd.0.le = getelementptr i8, ptr %.pn208, i32 -8
  %type = getelementptr i8, ptr %.pn208, i32 148
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i8 %52, label %sw.default [
    i8 0, label %if.end82.sw.bb_crit_edge
    i8 20, label %if.end82.sw.bb_crit_edge214
  ]

if.end82.sw.bb_crit_edge214:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end82.sw.bb_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end82.sw.bb_crit_edge, %if.end82.sw.bb_crit_edge214
  %call84 = tail call fastcc i32 @pscsi_create_type_disk(ptr noundef %dev, ptr noundef %sd.0.le)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = tail call fastcc i32 @pscsi_create_type_nondisk(ptr noundef %dev, ptr noundef %sd.0.le)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ret.0 = phi i32 [ %call85, %sw.default ], [ %call84, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool86.not = icmp eq i32 %ret.0, 0
  br i1 %tobool86.not, label %sw.epilog.cleanup_crit_edge, label %if.then87

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then87:                                        ; preds = %sw.epilog
  %phv_mode88 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %phv_mode88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phv_mode88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp89 = icmp eq i32 %55, 0
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_host_put(ptr noundef %sh.0) #11
  br label %if.end99

if.else92:                                        ; preds = %if.then87
  br i1 %tobool120.not, label %if.else92.if.end99_crit_edge, label %if.then94

if.else92.if.end99_crit_edge:                     ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then94:                                        ; preds = %if.else92
  %56 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hba_ptr, align 4
  %phv_lld_host.i182 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %phv_lld_host.i182 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phv_lld_host.i182, align 8
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %if.then94.pscsi_pmode_enable_hba.exit184_crit_edge, label %if.end.i

if.then94.pscsi_pmode_enable_hba.exit184_crit_edge: ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %pscsi_pmode_enable_hba.exit184

if.end.i:                                         ; preds = %if.then94
  %60 = ptrtoint ptr %phv_lld_host.i182 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %phv_lld_host.i182, align 8
  %phv_mode.i = getelementptr inbounds %struct.pscsi_hba_virt, ptr %57, i32 0, i32 1
  %61 = ptrtoint ptr %phv_mode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %phv_mode.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_configure_device, %if.then7.i)) #11
          to label %do.end.i [label %if.then7.i], !srcloc !228

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id.i = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %hba_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hba_id.i, align 4
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %59, i32 0, i32 11
  %64 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hostt.i, align 8
  %name.i = getelementptr inbounds %struct.scsi_host_template, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.i, align 8
  %tobool8.not.i = icmp eq ptr %67, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.10, ptr %67
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.13, i32 noundef %63, ptr noundef nonnull %spec.select.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.end.i
  tail call void @scsi_host_put(ptr noundef nonnull %59) #11
  br label %pscsi_pmode_enable_hba.exit184

pscsi_pmode_enable_hba.exit184:                   ; preds = %do.end.i, %if.then94.pscsi_pmode_enable_hba.exit184_crit_edge
  %hba_flags96 = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %hba_flags96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hba_flags96, align 4
  %and97 = and i32 %69, -3
  store i32 %and97, ptr %hba_flags96, align 4
  br label %if.end99

if.end99:                                         ; preds = %pscsi_pmode_enable_hba.exit184, %if.else92.if.end99_crit_edge, %if.then91
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 7
  %70 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %pdv_sd, align 8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false77.for.inc_crit_edge, %lor.lhs.false74.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %71 = ptrtoint ptr %.pn208 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn = load ptr, ptr %.pn208, align 8
  %cmp70.not = icmp eq ptr %.pn, %sh.0
  br i1 %cmp70.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end67.for.end_crit_edge
  %72 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %73) #11
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %sh.0, i32 0, i32 17
  %74 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %host_no, align 4
  %pdv_channel_id111 = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 3
  %76 = ptrtoint ptr %pdv_channel_id111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pdv_channel_id111, align 8
  %pdv_target_id112 = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 4
  %78 = ptrtoint ptr %pdv_target_id112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pdv_target_id112, align 4
  %pdv_lun_id113 = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 5
  %80 = ptrtoint ptr %pdv_lun_id113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pdv_lun_id113, align 32
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81) #15
  %phv_mode115 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %82 = ptrtoint ptr %phv_mode115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %phv_mode115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp116 = icmp eq i32 %83, 0
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_host_put(ptr noundef %sh.0) #11
  br label %cleanup

if.else119:                                       ; preds = %for.end
  br i1 %tobool120.not, label %if.else119.cleanup_crit_edge, label %if.then121

if.else119.cleanup_crit_edge:                     ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then121:                                       ; preds = %if.else119
  %84 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hba_ptr, align 4
  %phv_lld_host.i186 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %phv_lld_host.i186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phv_lld_host.i186, align 8
  %tobool1.not.i187 = icmp eq ptr %87, null
  br i1 %tobool1.not.i187, label %if.then121.pscsi_pmode_enable_hba.exit198_crit_edge, label %if.end.i189

if.then121.pscsi_pmode_enable_hba.exit198_crit_edge: ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %pscsi_pmode_enable_hba.exit198

if.end.i189:                                      ; preds = %if.then121
  %88 = ptrtoint ptr %phv_lld_host.i186 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %phv_lld_host.i186, align 8
  %phv_mode.i188 = getelementptr inbounds %struct.pscsi_hba_virt, ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %phv_mode.i188 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %phv_mode.i188, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_configure_device, %if.then7.i195)) #11
          to label %do.end.i196 [label %if.then7.i195], !srcloc !228

if.then7.i195:                                    ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id.i190 = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 1
  %90 = ptrtoint ptr %hba_id.i190 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hba_id.i190, align 4
  %hostt.i191 = getelementptr inbounds %struct.Scsi_Host, ptr %87, i32 0, i32 11
  %92 = ptrtoint ptr %hostt.i191 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hostt.i191, align 8
  %name.i192 = getelementptr inbounds %struct.scsi_host_template, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %name.i192 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name.i192, align 8
  %tobool8.not.i193 = icmp eq ptr %95, null
  %spec.select.i194 = select i1 %tobool8.not.i193, ptr @.str.10, ptr %95
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.13, i32 noundef %91, ptr noundef nonnull %spec.select.i194) #11
  br label %do.end.i196

do.end.i196:                                      ; preds = %if.then7.i195, %if.end.i189
  tail call void @scsi_host_put(ptr noundef nonnull %87) #11
  br label %pscsi_pmode_enable_hba.exit198

pscsi_pmode_enable_hba.exit198:                   ; preds = %do.end.i196, %if.then121.pscsi_pmode_enable_hba.exit198_crit_edge
  %hba_flags123 = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %hba_flags123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hba_flags123, align 4
  %and124 = and i32 %97, -3
  store i32 %and124, ptr %hba_flags123, align 4
  br label %cleanup

cleanup:                                          ; preds = %pscsi_pmode_enable_hba.exit198, %if.else119.cleanup_crit_edge, %if.then118, %if.end99, %sw.epilog.cleanup_crit_edge, %do.end63, %do.end50, %pscsi_pmode_enable_hba.exit.thread201, %do.end36, %do.end24, %do.end15, %do.end
  %retval.0 = phi i32 [ -17, %do.end63 ], [ %ret.0, %if.end99 ], [ -19, %do.end15 ], [ -22, %do.end50 ], [ -17, %do.end36 ], [ -22, %do.end24 ], [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -19, %if.else119.cleanup_crit_edge ], [ -19, %pscsi_pmode_enable_hba.exit198 ], [ -19, %if.then118 ], [ -19, %pscsi_pmode_enable_hba.exit.thread201 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_destroy_device(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdv_sd, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %7, label %if.then.if.end_crit_edge [
    i8 0, label %if.then.land.lhs.true_crit_edge
    i8 20, label %if.then.land.lhs.true_crit_edge39
  ]

if.then.land.lhs.true_crit_edge39:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge39
  %pdv_bd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %pdv_bd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdv_bd, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blkdev_put(ptr noundef nonnull %10, i32 noundef 131) #11
  %11 = ptrtoint ptr %pdv_bd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pdv_bd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %phv_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phv_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp10 = icmp eq i32 %13, 1
  br i1 %cmp10, label %land.lhs.true12, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true12:                                  ; preds = %if.end
  %phv_lld_host = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %phv_lld_host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phv_lld_host, align 8
  %cmp13.not = icmp eq ptr %15, null
  br i1 %cmp13.not, label %land.lhs.true12.if.else_crit_edge, label %land.lhs.true12.if.end21.sink.split_crit_edge

land.lhs.true12.if.end21.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.sink.split

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %if.end.if.else_crit_edge
  %pdv_lld_host = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %pdv_lld_host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdv_lld_host, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.else.if.end21_crit_edge, label %if.else.if.end21.sink.split_crit_edge

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.sink.split

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %land.lhs.true12.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %15, %land.lhs.true12.if.end21.sink.split_crit_edge ], [ %17, %if.else.if.end21.sink.split_crit_edge ]
  tail call void @scsi_host_put(ptr noundef nonnull %.sink) #11
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge
  tail call void @scsi_device_put(ptr noundef nonnull %5) #11
  %18 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pdv_sd, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_free_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @pscsi_dev_call_rcu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_set_configfs_dev_params(ptr nocapture noundef %dev, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %opts = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #11
  %4 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #11
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %arg, align 4, !annotation !229
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #11
  %6 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call2153 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.61) #11
  %cmp.not154 = icmp eq ptr %call2153, null
  br i1 %cmp.not154, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pdv_lun_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 5
  %pdv_flags104 = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 1
  %pdv_target_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 4
  %pdv_channel_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 3
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %pdv_host_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call2155 = phi ptr [ %call2153, %while.body.lr.ph ], [ %call2, %while.cond.backedge.while.body_crit_edge ]
  %7 = ptrtoint ptr %call2155 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call2155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %while.body.while.cond.backedge_crit_edge, label %if.end5

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @match_token(ptr noundef nonnull %call2155, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #11
  %9 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call6, label %if.end5.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb54
    i32 3, label %sw.bb80
  ]

if.end5.while.cond.backedge_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end5
  %10 = ptrtoint ptr %phv_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phv_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 128
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %13) #15
  br label %cleanup.sink.split

if.end10:                                         ; preds = %sw.bb
  %call12 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  %16 = ptrtoint ptr %pdv_host_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pdv_host_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_set_configfs_dev_params, %if.then22)) #11
          to label %while.cond.backedge.sink.split [label %if.then22], !srcloc !228

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 128
  %19 = ptrtoint ptr %pdv_host_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdv_host_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.64, i32 noundef %18, i32 noundef %20) #11
  br label %while.cond.backedge.sink.split

sw.bb28:                                          ; preds = %if.end5
  %call30 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb28.cleanup.sink.split_crit_edge

sw.bb28.cleanup.sink.split_crit_edge:             ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  %23 = ptrtoint ptr %pdv_channel_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pdv_channel_id, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_set_configfs_dev_params, %if.then46)) #11
          to label %while.cond.backedge.sink.split [label %if.then46], !srcloc !228

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 128
  %26 = ptrtoint ptr %pdv_channel_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdv_channel_id, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.65, i32 noundef %25, i32 noundef %27) #11
  br label %while.cond.backedge.sink.split

sw.bb54:                                          ; preds = %if.end5
  %call56 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %sw.bb54.cleanup.sink.split_crit_edge

sw.bb54.cleanup.sink.split_crit_edge:             ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end59:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arg, align 4
  %30 = ptrtoint ptr %pdv_target_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pdv_target_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_set_configfs_dev_params, %if.then72)) #11
          to label %while.cond.backedge.sink.split [label %if.then72], !srcloc !228

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 128
  %33 = ptrtoint ptr %pdv_target_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pdv_target_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.66, i32 noundef %32, i32 noundef %34) #11
  br label %while.cond.backedge.sink.split

sw.bb80:                                          ; preds = %if.end5
  %call82 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %sw.bb80.cleanup.sink.split_crit_edge

sw.bb80.cleanup.sink.split_crit_edge:             ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end85:                                         ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arg, align 4
  %37 = ptrtoint ptr %pdv_lun_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pdv_lun_id, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_set_configfs_dev_params, %if.then98)) #11
          to label %while.cond.backedge.sink.split [label %if.then98], !srcloc !228

if.then98:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 128
  %40 = ptrtoint ptr %pdv_lun_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pdv_lun_id, align 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.67, i32 noundef %39, i32 noundef %41) #11
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.then98, %if.end85, %if.then72, %if.end59, %if.then46, %if.end33, %if.then22, %if.end15
  %.sink156 = phi i32 [ 32, %if.end15 ], [ 32, %if.then22 ], [ 1, %if.end33 ], [ 1, %if.then46 ], [ 2, %if.end59 ], [ 2, %if.then72 ], [ 4, %if.end85 ], [ 4, %if.then98 ]
  %42 = ptrtoint ptr %pdv_flags104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdv_flags104, align 16
  %or = or i32 %43, %.sink156
  store i32 %or, ptr %pdv_flags104, align 16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %if.end5.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call2 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.61) #11
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup.sink.split_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup.sink.split_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.cond.backedge.cleanup.sink.split_crit_edge, %sw.bb80.cleanup.sink.split_crit_edge, %sw.bb54.cleanup.sink.split_crit_edge, %sw.bb28.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %do.end, %while.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %do.end ], [ %count, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ %call82, %sw.bb80.cleanup.sink.split_crit_edge ], [ %call56, %sw.bb54.cleanup.sink.split_crit_edge ], [ %call30, %sw.bb28.cleanup.sink.split_crit_edge ], [ %call12, %if.end10.cleanup.sink.split_crit_edge ], [ %count, %while.cond.backedge.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_show_configfs_dev_params(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %b) #3 align 64 {
entry:
  %host_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdv_sd, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %host_id) #11
  %phv_mode = getelementptr inbounds %struct.pscsi_hba_virt, ptr %3, i32 0, i32 1
  %6 = call ptr @memset(ptr %host_id, i32 255, i32 16)
  %7 = ptrtoint ptr %phv_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phv_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdv_host_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pdv_host_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdv_host_id, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %host_id, i32 noundef 16, ptr noundef nonnull @.str.72, i32 noundef %10)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = call ptr @memcpy(ptr %host_id, ptr @.str.73, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pdv_channel_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %pdv_channel_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdv_channel_id, align 8
  %pdv_target_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %pdv_target_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdv_target_id, align 4
  %pdv_lun_id = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %pdv_lun_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdv_lun_id, align 32
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.74, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %host_id)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %b, i32 %call5
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 30
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vendor, align 4
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.75, ptr noundef %19)
  %add = add i32 %call7, %call5
  %add.ptr8 = getelementptr i8, ptr %b, i32 %add
  %model = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 31
  %20 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %model, align 8
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr8, ptr noundef nonnull @.str.76, ptr noundef %21)
  %add10 = add i32 %call9, %add
  %add.ptr11 = getelementptr i8, ptr %b, i32 %add10
  %rev = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 32
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rev, align 4
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr11, ptr noundef nonnull @.str.77, ptr noundef %23)
  %add13 = add i32 %call12, %add10
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end.if.end14_crit_edge
  %bl.0 = phi i32 [ %add13, %if.then6 ], [ %call5, %if.end.if.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %host_id) #11
  ret i32 %bl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_parse_cdb(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @passthrough_parse_cdb(ptr noundef %cmd, ptr noundef nonnull @pscsi_execute_cmd) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pscsi_get_device_type(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdv_sd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 4
  %conv = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 127, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @pscsi_get_blocks(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdv_bd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %pdv_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdv_bd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bd_nr_sectors.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_lookup(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pscsi_create_type_disk(ptr noundef %dev, ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 8
  %call1 = tail call i32 @scsi_device_get(ptr noundef %sd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 17
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13) #15
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %17) #11
  %udev_path = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 45
  %call4 = tail call ptr @blkdev_get_by_path(ptr noundef %udev_path, i32 noundef 131, ptr noundef %dev) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  tail call void @scsi_device_put(ptr noundef %sd) #11
  %18 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdv_bd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %pdv_bd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %pdv_bd, align 4
  tail call fastcc void @pscsi_add_device_to_list(ptr noundef %dev, ptr noundef %sd)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_create_type_disk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_create_type_disk, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !228

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 128
  %type = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 22
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  %cond = select i1 %cmp, ptr @.str.45, ptr @.str.46
  %host_no27 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %24 = ptrtoint ptr %host_no27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no27, align 4
  %channel28 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 17
  %26 = ptrtoint ptr %channel28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel28, align 4
  %id29 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 16
  %28 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id29, align 8
  %lun30 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 18
  %30 = ptrtoint ptr %lun30 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun30, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_create_type_disk.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.44, i32 noundef %21, ptr noundef nonnull %cond, i32 noundef %25, i32 noundef %27, i32 noundef %29, i64 noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end13, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %18, %do.end9 ], [ 0, %if.then25 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pscsi_create_type_nondisk(ptr noundef %dev, ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 8
  %call = tail call i32 @scsi_device_get(ptr noundef %sd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 17
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13) #15
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_lock2 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %host_lock2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %17) #11
  tail call fastcc void @pscsi_add_device_to_list(ptr noundef %dev, ptr noundef %sd)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_create_type_nondisk.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_create_type_nondisk, %if.then13)) #11
          to label %cleanup [label %if.then13], !srcloc !228

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 128
  %type = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 22
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 4
  %conv = zext i8 %21 to i32
  %call14 = tail call ptr @scsi_device_type(i32 noundef %conv) #11
  %host_no15 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %22 = ptrtoint ptr %host_no15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no15, align 4
  %channel16 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 17
  %24 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel16, align 4
  %id17 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 16
  %26 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id17, align 8
  %lun18 = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 18
  %28 = ptrtoint ptr %lun18 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun18, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_create_type_nondisk.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.60, i32 noundef %19, ptr noundef %call14, i32 noundef %23, i32 noundef %25, i32 noundef %27, i64 noundef %29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then13 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pscsi_add_device_to_list(ptr noundef %dev, ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  %cdb.i2 = alloca [16 x i8], align 1
  %cdb.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sd, ptr %pdv_sd, align 8
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 9
  %3 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %queue_depth, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 17
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 18
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %9, i64 noundef %11, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 20
  %12 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 512)
  %cond18 = select i1 %cmp, i32 512, i32 %14
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %15 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond18, ptr %hw_block_size, align 4
  %16 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd, align 8
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_sectors, align 8
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 3
  %20 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_hw_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27 = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21)
  %spec.select = select i1 %cmp27, i32 %19, i32 %22
  %cond41 = select i1 %cmp23, i32 %21, i32 %spec.select
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %23 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond41, ptr %hw_max_sectors, align 4
  %24 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %queue_depth, align 4
  %conv44 = zext i16 %25 to i32
  %hw_queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 24
  %26 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv44, ptr %hw_queue_depth, align 4
  %t10_wwn = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36
  %inquiry_len.i = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 27
  %27 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %28)
  %cmp.i = icmp ult i8 %28, 36
  br i1 %cmp.i, label %if.end.pscsi_set_inquiry_info.exit_crit_edge, label %do.end.i

if.end.pscsi_set_inquiry_info.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pscsi_set_inquiry_info.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vendor2.i = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 30
  %29 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vendor2.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %t10_wwn, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %30) #11
  %model.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 1
  %model6.i = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 31
  %31 = ptrtoint ptr %model6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %model6.i, align 8
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model.i, i32 noundef 17, ptr noundef nonnull @.str.50, ptr noundef %32) #11
  %revision.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 2
  %rev.i = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 32
  %33 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rev.i, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %revision.i, i32 noundef 5, ptr noundef nonnull @.str.51, ptr noundef %34) #11
  br label %pscsi_set_inquiry_info.exit

pscsi_set_inquiry_info.exit:                      ; preds = %do.end.i, %if.end.pscsi_set_inquiry_info.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 254) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %pscsi_get_inquiry_vpd_serial.exit.thread, label %if.end.i

pscsi_get_inquiry_vpd_serial.exit.thread:         ; preds = %pscsi_set_inquiry_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #11
  br label %if.end51

if.end.i:                                         ; preds = %pscsi_set_inquiry_info.exit
  %36 = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 3
  %37 = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 2
  %38 = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 1
  %39 = getelementptr inbounds i8, ptr %cdb.i, i32 5
  %40 = call ptr @memset(ptr %39, i32 0, i32 11)
  %41 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 18, ptr %cdb.i, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %38, align 1
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -128, ptr %37, align 1
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 254, ptr %36, align 1
  %call.i.i = call i32 @__scsi_execute(ptr noundef %sd, ptr noundef nonnull %cdb.i, i32 noundef 2, ptr noundef nonnull %call7.i.i.i, i32 noundef 254, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.then49, label %pscsi_get_inquiry_vpd_serial.exit

pscsi_get_inquiry_vpd_serial.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #11
  br label %if.end51

if.then49:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %unit_serial.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 3
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %call11.i1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %unit_serial.i, i32 noundef 254, ptr noundef nonnull @.str.52, ptr noundef %arrayidx10.i) #11
  %t10_dev.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 6
  %45 = ptrtoint ptr %t10_dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %t10_dev.i, align 4
  %dev_flags.i = getelementptr inbounds %struct.se_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dev_flags.i, align 8
  %or.i = or i32 %48, 2
  store i32 %or.i, ptr %dev_flags.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #11
  call fastcc void @pscsi_get_inquiry_vpd_device_ident(ptr noundef %sd, ptr noundef %t10_wwn)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %pscsi_get_inquiry_vpd_serial.exit, %pscsi_get_inquiry_vpd_serial.exit.thread
  %type = getelementptr inbounds %struct.scsi_device, ptr %sd, i32 0, i32 22
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp53 = icmp eq i8 %50, 1
  br i1 %cmp53, label %if.then55, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then55:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i2) #11
  %51 = call ptr @memset(ptr %cdb.i2, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i3 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i4 = icmp eq ptr %call7.i.i.i3, null
  br i1 %tobool.not.i4, label %if.then55.out_free.ithread-pre-split_crit_edge, label %if.end.i6

if.then55.out_free.ithread-pre-split_crit_edge:   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.ithread-pre-split

if.end.i6:                                        ; preds = %if.then55
  %53 = getelementptr inbounds [16 x i8], ptr %cdb.i2, i32 0, i32 4
  %54 = getelementptr inbounds i8, ptr %cdb.i2, i32 1
  %55 = call ptr @memset(ptr %54, i32 0, i32 15)
  %56 = ptrtoint ptr %cdb.i2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 26, ptr %cdb.i2, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 12, ptr %53, align 1
  %call.i.i5 = call i32 @__scsi_execute(ptr noundef %sd, ptr noundef nonnull %cdb.i2, i32 noundef 2, ptr noundef nonnull %call7.i.i.i3, i32 noundef 12, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %tobool4.not.i = icmp eq i32 %call.i.i5, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i6.out_free.ithread-pre-split_crit_edge

if.end.i6.out_free.ithread-pre-split_crit_edge:   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.ithread-pre-split

if.end6.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx7.i = getelementptr i8, ptr %call7.i.i.i3, i32 9
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx7.i, align 1
  %conv.i.i.i = zext i8 %59 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr i8, ptr %call7.i.i.i3, i32 10
  %60 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx1.i.i.i, align 2
  %conv2.i.i.i = zext i8 %61 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %call7.i.i.i3, i32 11
  %62 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %63 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %64 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or6.i.i.i, ptr %sector_size, align 4
  br label %out_free.i

out_free.ithread-pre-split:                       ; preds = %if.end.i6.out_free.ithread-pre-split_crit_edge, %if.then55.out_free.ithread-pre-split_crit_edge
  %65 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %sector_size, align 4
  br label %out_free.i

out_free.i:                                       ; preds = %out_free.ithread-pre-split, %if.end6.i
  %66 = phi i32 [ %.pr, %out_free.ithread-pre-split ], [ %or6.i.i.i, %if.end6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool10.not.i = icmp eq i32 %66, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %out_free.i.pscsi_tape_read_blocksize.exit_crit_edge

out_free.i.pscsi_tape_read_blocksize.exit_crit_edge: ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pscsi_tape_read_blocksize.exit

if.then11.i:                                      ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1024, ptr %sector_size, align 4
  br label %pscsi_tape_read_blocksize.exit

pscsi_tape_read_blocksize.exit:                   ; preds = %if.then11.i, %out_free.i.pscsi_tape_read_blocksize.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i2) #11
  %68 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sector_size, align 4
  %70 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %hw_block_size, align 4
  br label %if.end59

if.end59:                                         ; preds = %pscsi_tape_read_blocksize.exit, %if.end51.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pscsi_get_inquiry_vpd_device_ident(ptr noundef %sdev, ptr noundef %wwn) unnamed_addr #2 align 64 {
entry:
  %cdb = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 254) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 3
  %2 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %cdb, i32 5
  %5 = call ptr @memset(ptr %4, i32 0, i32 11)
  %6 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 18, ptr %cdb, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %3, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -125, ptr %2, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 254, ptr %1, align 1
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cdb, i32 noundef 2, ptr noundef nonnull %call7.i.i, i32 noundef 254, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp99.not = icmp eq i16 %11, 0
  br i1 %cmp99.not, label %if.end8.out_crit_edge, label %while.body.lr.ph

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end8
  %conv = zext i16 %11 to i32
  %t10_vpd_list = getelementptr inbounds %struct.t10_wwn, ptr %wwn, i32 0, i32 8
  %prev.i97 = getelementptr inbounds %struct.t10_wwn, ptr %wwn, i32 0, i32 8, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %page_len.0101 = phi i32 [ %conv, %while.body.lr.ph ], [ %page_len.0.be, %while.cond.backedge.while.body_crit_edge ]
  %off.0100 = phi i32 [ 4, %while.body.lr.ph ], [ %off.0.be, %while.cond.backedge.while.body_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %call7.i.i, i32 %off.0100
  %arrayidx13 = getelementptr i8, ptr %arrayidx12, i32 3
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %while.body.out.sink.split_crit_edge, label %do.body19

while.body.out.sink.split_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

do.body19:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_get_inquiry_vpd_device_ident.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_get_inquiry_vpd_device_ident, %if.then25)) #11
          to label %do.end28 [label %if.then25], !srcloc !228

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_get_inquiry_vpd_device_ident.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.55, i32 noundef %conv14) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i96 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 284) #14
  %tobool30.not = icmp eq ptr %call7.i.i96, null
  br i1 %tobool30.not, label %do.end28.out.sink.split_crit_edge, label %if.end37

do.end28.out.sink.split_crit_edge:                ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end37:                                         ; preds = %do.end28
  %vpd_list = getelementptr inbounds %struct.t10_vpd, ptr %call7.i.i96, i32 0, i32 6
  %15 = ptrtoint ptr %vpd_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %vpd_list, ptr %vpd_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_vpd, ptr %call7.i.i96, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vpd_list, ptr %prev.i, align 8
  call void @transport_set_vpd_proto_id(ptr noundef nonnull %call7.i.i96, ptr noundef %arrayidx12) #11
  %call38 = call i32 @transport_set_vpd_assoc(ptr noundef nonnull %call7.i.i96, ptr noundef %arrayidx12) #11
  %call39 = call i32 @transport_set_vpd_ident_type(ptr noundef nonnull %call7.i.i96, ptr noundef %arrayidx12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i96) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.i.i, %if.end54.while.cond.backedge_crit_edge, %if.then49, %if.then42
  %add.pn = add nuw nsw i32 %conv14, 4
  %page_len.0.be = sub nsw i32 %page_len.0101, %add.pn
  %off.0.be = add i32 %add.pn, %off.0100
  %cmp = icmp sgt i32 %page_len.0.be, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end45:                                         ; preds = %if.end37
  %call46 = call i32 @transport_set_vpd_ident(ptr noundef nonnull %call7.i.i96, ptr noundef %arrayidx12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i96) #11
  br label %while.cond.backedge

if.end54:                                         ; preds = %if.end45
  %17 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i97, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %vpd_list, ptr noundef %18, ptr noundef %t10_vpd_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.while.cond.backedge_crit_edge

if.end54.while.cond.backedge_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vpd_list, ptr %prev.i97, align 4
  %20 = ptrtoint ptr %vpd_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %t10_vpd_list, ptr %vpd_list, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i, align 8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %vpd_list, ptr %18, align 4
  br label %while.cond.backedge

out.sink.split:                                   ; preds = %do.end28.out.sink.split_crit_edge, %while.body.out.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.53, %while.body.out.sink.split_crit_edge ], [ @.str.57, %do.end28.out.sink.split_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.53.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %while.cond.backedge.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_set_vpd_proto_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_set_vpd_assoc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_set_vpd_ident_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_set_vpd_ident(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_dev_call_rcu(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -3776
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @passthrough_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscsi_execute_cmd(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %0 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %2 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_data_nents, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %4 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %6 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_task_cdb, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %9)
  %cmp.i = icmp eq i8 %9, 127
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %additional_cdb_length.i.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %additional_cdb_length.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %additional_cdb_length.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  br label %if.end8.i.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = lshr i8 %9, 5
  %13 = zext i8 %12 to i32
  %arrayidx4.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %15 to i32
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %conv5.i, %cond.false.i ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond.i, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %priv = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 48
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %priv, align 4
  %17 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t_task_cdb, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %20)
  %cmp.i73 = icmp eq i8 %20, 127
  br i1 %cmp.i73, label %cond.true.i77, label %cond.false.i80

cond.true.i77:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %additional_cdb_length.i.i74 = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %additional_cdb_length.i.i74 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %additional_cdb_length.i.i74, align 1
  %conv.i.i75 = zext i8 %22 to i32
  %add.i.i76 = add nuw nsw i32 %conv.i.i75, 8
  br label %scsi_command_size.exit82

cond.false.i80:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = lshr i8 %20, 5
  %24 = zext i8 %23 to i32
  %arrayidx4.i78 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx4.i78 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i78, align 1
  %conv5.i79 = zext i8 %26 to i32
  br label %scsi_command_size.exit82

scsi_command_size.exit82:                         ; preds = %cond.false.i80, %cond.true.i77
  %cond.i81 = phi i32 [ %add.i.i76, %cond.true.i77 ], [ %conv5.i79, %cond.false.i80 ]
  %27 = call ptr @memcpy(ptr %call9.i.i, ptr %18, i32 %cond.i81)
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdv_sd, align 8
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %request_queue, align 4
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %32 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  %cond = select i1 %cmp, i32 35, i32 34
  %call6 = tail call ptr @scsi_alloc_request(ptr noundef %31, i32 noundef %cond, i32 noundef 0) #11
  %cmp.i83 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %scsi_command_size.exit82.fail_crit_edge, label %if.end9

scsi_command_size.exit82.fail_crit_edge:          ; preds = %scsi_command_size.exit82
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end9:                                          ; preds = %scsi_command_size.exit82
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %call12 = tail call fastcc i32 @pscsi_map_sg(ptr noundef %cmd, ptr noundef nonnull %1, i32 noundef %3, ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %fail_put_request

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %end_io = getelementptr inbounds %struct.request, ptr %call6, i32 0, i32 32
  %34 = ptrtoint ptr %end_io to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pscsi_req_done, ptr %end_io, align 8
  %end_io_data = getelementptr inbounds %struct.request, ptr %call6, i32 0, i32 33
  %35 = ptrtoint ptr %end_io_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cmd, ptr %end_io_data, align 4
  %36 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %37)
  %cmp.i84 = icmp eq i8 %37, 127
  br i1 %cmp.i84, label %cond.true.i88, label %cond.false.i91

cond.true.i88:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %additional_cdb_length.i.i85 = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %call9.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %additional_cdb_length.i.i85 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %additional_cdb_length.i.i85, align 1
  %conv.i.i86 = zext i8 %39 to i16
  %add.i.i87 = add nuw nsw i16 %conv.i.i86, 8
  br label %scsi_command_size.exit93

cond.false.i91:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %40 = lshr i8 %37, 5
  %41 = zext i8 %40 to i32
  %arrayidx4.i89 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx4.i89 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.i89, align 1
  %conv5.i90 = zext i8 %43 to i16
  br label %scsi_command_size.exit93

scsi_command_size.exit93:                         ; preds = %cond.false.i91, %cond.true.i88
  %cond.i92 = phi i16 [ %add.i.i87, %cond.true.i88 ], [ %conv5.i90, %cond.false.i91 ]
  %add.ptr.i.i = getelementptr %struct.request, ptr %call6, i32 1
  %cmd_len = getelementptr %struct.request, ptr %call6, i32 1, i32 5
  %44 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %cond.i92, ptr %cmd_len, align 4
  %cmd23 = getelementptr %struct.request, ptr %call6, i32 1, i32 4
  %45 = ptrtoint ptr %cmd23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i, ptr %cmd23, align 4
  %46 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdv_sd, align 8
  %type = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %switch.selectcmp.case1 = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %49)
  %switch.selectcmp.case2 = icmp eq i8 %49, 20
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %50 = select i1 %switch.selectcmp, i32 1500, i32 50000
  %timeout34 = getelementptr inbounds %struct.request, ptr %call6, i32 0, i32 7
  %51 = ptrtoint ptr %timeout34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %timeout34, align 4
  %retries = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %retries, align 4
  %sam_task_attr = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 7
  %53 = ptrtoint ptr %sam_task_attr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sam_task_attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %54)
  %cmp37 = icmp eq i32 %54, 33
  tail call void @blk_execute_rq_nowait(ptr noundef %call6, i1 noundef zeroext %cmp37, ptr noundef nonnull @pscsi_req_done) #11
  br label %cleanup

fail_put_request:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_mq_free_request(ptr noundef %call6) #11
  br label %fail

fail:                                             ; preds = %fail_put_request, %scsi_command_size.exit82.fail_crit_edge
  %ret.0 = phi i32 [ %call12, %fail_put_request ], [ 10, %scsi_command_size.exit82.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %scsi_command_size.exit93, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %scsi_command_size.exit93 ], [ 10, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pscsi_map_sg(ptr nocapture noundef readonly %cmd, ptr noundef %sgl, i32 noundef %sgl_nents, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %3, 4095
  %sub = add i32 %add, %5
  %shr = lshr i32 %sub, 12
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body7, label %do.body13, !prof !230

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_pscsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 858, 0\0A.popsection", ""() #11, !srcloc !231
  unreachable

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then22)) #11
          to label %do.end25 [label %if.then22], !srcloc !228

if.then22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.79, i32 noundef %shr) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_nents)
  %cmp26286.not = icmp eq i32 %sgl_nents, 0
  br i1 %cmp26286.not, label %do.end25.cleanup_crit_edge, label %for.body.lr.ph

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end25
  %8 = tail call i32 @llvm.umin.i32(i32 %shr, i32 256) #11
  %conv.i = trunc i32 %8 to i16
  %cond91 = select i1 %cmp, ptr @.str.82, ptr @.str.83
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bio.0293 = phi ptr [ null, %for.body.lr.ph ], [ %bio.2, %for.inc.for.body_crit_edge ]
  %sg.0292 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call162, %for.inc.for.body_crit_edge ]
  %data_len.0291 = phi i32 [ %3, %for.body.lr.ph ], [ %data_len.1, %for.inc.for.body_crit_edge ]
  %i.0288 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %nr_vecs.0287 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_vecs.2, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %sg.0292 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg.0292, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !232

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !233
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i to ptr
  %offset29 = getelementptr inbounds %struct.scatterlist, ptr %sg.0292, i32 0, i32 1
  %12 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset29, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0292, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then42)) #11
          to label %do.end45 [label %if.then42], !srcloc !228

if.then42:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.80, i32 noundef %i.0288, ptr noundef %11, i32 noundef %15, i32 noundef %13) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %sg_page.exit
  %add46 = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add46)
  %cmp47 = icmp ugt i32 %add46, 4096
  br i1 %cmp47, label %do.end45.fail_crit_edge, label %if.end50

do.end45.fail_crit_edge:                          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end50:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51.not = icmp eq i32 %15, 0
  br i1 %cmp51.not, label %if.end50.for.inc_crit_edge, label %land.lhs.true

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0291)
  %cmp53.not = icmp eq i32 %data_len.0291, 0
  br i1 %cmp53.not, label %land.lhs.true.for.inc_crit_edge, label %if.then55

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then55:                                        ; preds = %land.lhs.true
  %sub56 = sub i32 4096, %13
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub56)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %data_len.0291)
  %tobool67.not = icmp eq ptr %bio.0293, null
  br i1 %tobool67.not, label %if.then55.new_bio_crit_edge, label %if.then55.if.end95_crit_edge

if.then55.if.end95_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then55.new_bio_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %new_bio

new_bio:                                          ; preds = %do.end149.new_bio_crit_edge, %if.then55.new_bio_crit_edge
  %call.i = tail call ptr @bio_kmalloc(i32 noundef 3264, i16 noundef zeroext %conv.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %fail.thread, label %if.end73

fail.thread:                                      ; preds = %new_bio
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #15
  br label %if.end177

if.end73:                                         ; preds = %new_bio
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pscsi_bi_endio, ptr %bi_end_io.i, align 8
  br i1 %cmp, label %if.then75, label %if.end73.do.body77_crit_edge

if.end73.do.body77_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %bi_opf.i, align 8
  br label %do.body77

do.body77:                                        ; preds = %if.then75, %if.end73.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then89)) #11
          to label %if.end95 [label %if.then89], !srcloc !228

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.81, ptr noundef nonnull %call.i, ptr noundef nonnull %cond91, i32 noundef %8) #11
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %do.body77, %if.then55.if.end95_crit_edge
  %nr_vecs.1 = phi i32 [ %nr_vecs.0287, %if.then55.if.end95_crit_edge ], [ %8, %if.then89 ], [ %8, %do.body77 ]
  %bio.1 = phi ptr [ %bio.0293, %if.then55.if.end95_crit_edge ], [ %call.i, %if.then89 ], [ %call.i, %do.body77 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then108)) #11
          to label %do.end111 [label %if.then108], !srcloc !228

if.then108:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.84, i32 noundef %i.0288, ptr noundef nonnull %bio.1, ptr noundef %11, i32 noundef %15, i32 noundef %13) #11
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %if.end95
  %20 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdv_sd, align 8
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request_queue, align 4
  %call112 = tail call i32 @bio_add_pc_page(ptr noundef %23, ptr noundef nonnull %bio.1, ptr noundef %11, i32 noundef %17, i32 noundef %13) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then125)) #11
          to label %do.end129 [label %if.then125], !srcloc !228

if.then125:                                       ; preds = %do.end111
  %bi_opf.i267 = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf.i267 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_opf.i267, align 8
  %trunc.i = trunc i32 %25 to i8
  %switch.tableidx = add i8 %trunc.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 7
  br i1 %26, label %switch.hole_check, label %if.then125.sw.epilog.i_crit_edge

if.then125.sw.epilog.i_crit_edge:                 ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %if.then125.sw.epilog.i_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not54.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not54.i, label %sw.epilog.i.bio_segments.exit_crit_edge, label %land.rhs.lr.ph.i

sw.epilog.i.bio_segments.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_segments.exit

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 20
  %30 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bi_io_vec.i, align 8
  %and.i.i.i = and i32 %25, 255
  %32 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %32, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %segs.058.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.057.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.056.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.055.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %31, i32 %iter.sroa.10.056.i, i32 1
  %33 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_len10.i, align 4
  %sub.i = sub i32 %34, %iter.sroa.15.055.i
  %35 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i, i32 %sub.i) #11
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %31, i32 %iter.sroa.10.056.i, i32 2
  %36 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_offset15.i, align 4
  %add17.i = add i32 %37, %iter.sroa.15.055.i
  %rem.i = and i32 %add17.i, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %sub18.i) #11
  %inc.i = add i32 %segs.058.i, 1
  br i1 %switch.selectcmp.i.i.i, label %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

land.rhs.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %38, %iter.sroa.15.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %34)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %34
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select53.i = add i32 %iter.sroa.10.056.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.15.1.i = phi i32 [ %iter.sroa.15.055.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.056.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select53.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.057.i, %38
  %tobool.not.i268 = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i268, label %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_segments.exit

switch.hole_check:                                ; preds = %if.then125
  %switch.shifted = lshr i8 85, %switch.tableidx
  %39 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %switch.lobit.not = icmp eq i8 %39, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %40 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.pscsi_map_sg, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bio_segments.exit

bio_segments.exit:                                ; preds = %switch.lookup, %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge, %sw.epilog.i.bio_segments.exit_crit_edge
  %retval.0.i269 = phi i32 [ 0, %sw.epilog.i.bio_segments.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ %inc.i, %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.85, i32 noundef %retval.0.i269, i32 noundef %nr_vecs.1) #11
  br label %do.end129

do.end129:                                        ; preds = %bio_segments.exit, %do.end111
  call void @__sanitizer_cov_trace_cmp4(i32 %call112, i32 %17)
  %cmp130.not = icmp eq i32 %call112, %17
  br i1 %cmp130.not, label %if.end159, label %do.body133

do.body133:                                       ; preds = %do.end129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_map_sg.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_map_sg, %if.then145)) #11
          to label %do.end149 [label %if.then145], !srcloc !228

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 17
  %42 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bi_vcnt, align 8
  %conv146 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_map_sg.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.86, i32 noundef %conv146, i32 noundef %i.0288, ptr noundef %bio.1) #11
  br label %do.end149

do.end149:                                        ; preds = %if.then145, %do.body133
  %call150 = tail call i32 @blk_rq_append_bio(ptr noundef %req, ptr noundef %bio.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.end149.new_bio_crit_edge, label %do.end155

do.end149.new_bio_crit_edge:                      ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %new_bio

do.end155:                                        ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %fail

if.end159:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  %sub160 = sub i32 %data_len.0291, %17
  br label %for.inc

for.inc:                                          ; preds = %if.end159, %land.lhs.true.for.inc_crit_edge, %if.end50.for.inc_crit_edge
  %nr_vecs.2 = phi i32 [ %nr_vecs.1, %if.end159 ], [ %nr_vecs.0287, %land.lhs.true.for.inc_crit_edge ], [ %nr_vecs.0287, %if.end50.for.inc_crit_edge ]
  %data_len.1 = phi i32 [ %sub160, %if.end159 ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ %data_len.0291, %if.end50.for.inc_crit_edge ]
  %bio.2 = phi ptr [ %bio.1, %if.end159 ], [ %bio.0293, %land.lhs.true.for.inc_crit_edge ], [ %bio.0293, %if.end50.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0288, 1
  %call162 = tail call ptr @sg_next(ptr noundef %sg.0292) #11
  %exitcond.not = icmp eq i32 %inc, %sgl_nents
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool163.not = icmp eq ptr %bio.2, null
  br i1 %tobool163.not, label %for.end.cleanup_crit_edge, label %if.then164

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then164:                                       ; preds = %for.end
  %call165 = tail call i32 @blk_rq_append_bio(ptr noundef %req, ptr noundef nonnull %bio.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then164.cleanup_crit_edge, label %fail.thread278

if.then164.cleanup_crit_edge:                     ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail.thread278:                                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %if.then176

fail:                                             ; preds = %do.end155, %do.end45.fail_crit_edge
  %bio.3 = phi ptr [ %bio.1, %do.end155 ], [ %bio.0293, %do.end45.fail_crit_edge ]
  %tobool175.not = icmp eq ptr %bio.3, null
  br i1 %tobool175.not, label %fail.if.end177_crit_edge, label %fail.if.then176_crit_edge

fail.if.then176_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

fail.if.end177_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then176:                                       ; preds = %fail.if.then176_crit_edge, %fail.thread278
  %bio.3281 = phi ptr [ %bio.2, %fail.thread278 ], [ %bio.3, %fail.if.then176_crit_edge ]
  tail call void @bio_put(ptr noundef nonnull %bio.3281) #11
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %fail.if.end177_crit_edge, %fail.thread
  %bio178 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %44 = ptrtoint ptr %bio178 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bio178, align 8
  %tobool179.not294 = icmp eq ptr %45, null
  br i1 %tobool179.not294, label %if.end177.while.end_crit_edge, label %if.end177.while.body_crit_edge

if.end177.while.body_crit_edge:                   ; preds = %if.end177
  br label %while.body

if.end177.while.end_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end177.while.body_crit_edge
  %46 = phi ptr [ %51, %while.body.while.body_crit_edge ], [ %45, %if.end177.while.body_crit_edge ]
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = ptrtoint ptr %bio178 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %bio178, align 8
  tail call void @bio_put(ptr noundef nonnull %46) #11
  %50 = ptrtoint ptr %bio178 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bio178, align 8
  %tobool179.not = icmp eq ptr %51, null
  br i1 %tobool179.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end177.while.end_crit_edge
  %biotail = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %52 = ptrtoint ptr %biotail to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %biotail, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then164.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %while.end ], [ 0, %if.then164.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_req_done(ptr noundef %req, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %priv = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %result1 = getelementptr %struct.request, ptr %req, i32 1, i32 6
  %4 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result1, align 4
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_req_done.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_req_done, %if.then5)) #11
          to label %if.end6 [label %if.then5], !srcloc !228

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 128
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_req_done.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.93, ptr noundef %1, i32 noundef %conv, i32 noundef %5) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %conv7 = trunc i32 %5 to i8
  %sense = getelementptr %struct.request, ptr %req, i32 1, i32 9
  %8 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sense, align 4
  tail call fastcc void @pscsi_complete_cmd(ptr noundef %1, i8 noundef zeroext %conv7, ptr noundef %9)
  %10 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cond = icmp eq i32 %10, 0
  br i1 %cond, label %sw.bb, label %do.body12

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_length, align 4
  %resid_len = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %13 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resid_len, align 4
  %sub = sub i32 %12, %14
  tail call void @target_complete_cmd_with_length(ptr noundef %1, i8 noundef zeroext %conv7, i32 noundef %sub) #11
  br label %sw.epilog

do.body12:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_req_done.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_req_done, %if.then24)) #11
          to label %do.end30 [label %if.then24], !srcloc !228

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 128
  %conv27 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_req_done.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.94, ptr noundef %1, i32 noundef %conv27, i32 noundef %5) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  tail call void @target_complete_cmd(ptr noundef %1, i8 noundef zeroext 2) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end30, %sw.bb
  tail call void @blk_mq_free_request(ptr noundef %req) #11
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_append_bio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pscsi_bi_endio(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bio_put(ptr noundef %bio) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pscsi_complete_cmd(ptr noundef %cmd, i8 noundef zeroext %scsi_status, ptr noundef %req_sense) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %pdv_sd = getelementptr inbounds %struct.pscsi_dev_virt, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pdv_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdv_sd, align 8
  %priv = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 48
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup148_crit_edge, label %if.end

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.end:                                           ; preds = %entry
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.after_mode_sense_crit_edge, label %if.end3

if.end.after_mode_sense_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_sense

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %9, label %if.end3.after_mode_sense_crit_edge [
    i8 26, label %if.end3.land.lhs.true_crit_edge
    i8 90, label %if.end3.land.lhs.true_crit_edge205
  ]

if.end3.land.lhs.true_crit_edge205:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end3.land.lhs.true_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end3.after_mode_sense_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_sense

land.lhs.true:                                    ; preds = %if.end3.land.lhs.true_crit_edge, %if.end3.land.lhs.true_crit_edge205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %scsi_status)
  %cmp11 = icmp eq i8 %scsi_status, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true.after_mode_sense_crit_edge

land.lhs.true.after_mode_sense_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_sense

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call zeroext i1 @target_lun_is_rdonly(ptr noundef %cmd) #11
  br i1 %call14, label %if.then16, label %if.then13.after_mode_sense_crit_edge

if.then13.after_mode_sense_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_sense

if.then16:                                        ; preds = %if.then13
  %call17 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then16.after_mode_sense_crit_edge, label %if.else

if.then16.after_mode_sense_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_sense

if.else:                                          ; preds = %if.then16
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %12)
  %cmp22 = icmp eq i8 %12, 90
  br i1 %cmp22, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.else
  %arrayidx25 = getelementptr i8, ptr %call17, i32 3
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool27.not = icmp sgt i8 %14, -1
  br i1 %tobool27.not, label %if.then24.if.end44.sink.split_crit_edge, label %if.then24.if.end44_crit_edge

if.then24.if.end44_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then24.if.end44.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.sink.split

if.else33:                                        ; preds = %if.else
  %arrayidx34 = getelementptr i8, ptr %call17, i32 2
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool37.not = icmp sgt i8 %16, -1
  br i1 %tobool37.not, label %if.else33.if.end44.sink.split_crit_edge, label %if.else33.if.end44_crit_edge

if.else33.if.end44_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.else33.if.end44.sink.split_crit_edge:          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.else33.if.end44.sink.split_crit_edge, %if.then24.if.end44.sink.split_crit_edge
  %.sink = phi i8 [ %14, %if.then24.if.end44.sink.split_crit_edge ], [ %16, %if.else33.if.end44.sink.split_crit_edge ]
  %arrayidx34.sink = phi ptr [ %arrayidx25, %if.then24.if.end44.sink.split_crit_edge ], [ %arrayidx34, %if.else33.if.end44.sink.split_crit_edge ]
  %or41 = or i8 %.sink, -128
  %17 = ptrtoint ptr %arrayidx34.sink to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or41, ptr %arrayidx34.sink, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else33.if.end44_crit_edge, %if.then24.if.end44_crit_edge
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #11
  br label %after_mode_sense

after_mode_sense:                                 ; preds = %if.end44, %if.then16.after_mode_sense_crit_edge, %if.then13.after_mode_sense_crit_edge, %land.lhs.true.after_mode_sense_crit_edge, %if.end3.after_mode_sense_crit_edge, %if.end.after_mode_sense_crit_edge
  %type = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 22
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp49.not = icmp eq i8 %19, 1
  br i1 %cmp49.not, label %lor.lhs.false51, label %after_mode_sense.after_mode_select_crit_edge

after_mode_sense.after_mode_select_crit_edge:     ; preds = %after_mode_sense
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_select

lor.lhs.false51:                                  ; preds = %after_mode_sense
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool53.not = icmp eq i32 %21, 0
  br i1 %tobool53.not, label %lor.lhs.false51.after_mode_select_crit_edge, label %if.end55

lor.lhs.false51.after_mode_select_crit_edge:      ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_select

if.end55:                                         ; preds = %lor.lhs.false51
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %23, label %if.end55.after_mode_select_crit_edge [
    i8 21, label %if.end55.land.lhs.true65_crit_edge
    i8 85, label %if.end55.land.lhs.true65_crit_edge206
  ]

if.end55.land.lhs.true65_crit_edge206:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true65

if.end55.land.lhs.true65_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true65

if.end55.after_mode_select_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %after_mode_select

land.lhs.true65:                                  ; preds = %if.end55.land.lhs.true65_crit_edge, %if.end55.land.lhs.true65_crit_edge206
  %25 = zext i8 %scsi_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %scsi_status, label %land.lhs.true65.cleanup148_crit_edge [
    i8 0, label %if.then69
    i8 2, label %land.lhs.true65.if.then108_crit_edge
  ]

land.lhs.true65.if.then108_crit_edge:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

land.lhs.true65.cleanup148_crit_edge:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.then69:                                        ; preds = %land.lhs.true65
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %26 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_data_sg, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !232

do.body2.i.i:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !233
  unreachable

sg_virt.exit:                                     ; preds = %if.then69
  %and.i.i = and i32 %29, -4
  %30 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %30) #11
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %32
  %tobool73.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool73.not, label %do.end, label %if.end76

do.end:                                           ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #15
  br label %cleanup148

if.end76:                                         ; preds = %sg_virt.exit
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %34)
  %cmp79 = icmp eq i8 %34, 21
  br i1 %cmp79, label %if.end87, label %if.end87.thread

if.end87:                                         ; preds = %if.end76
  %arrayidx82 = getelementptr i8, ptr %add.ptr.i, i32 3
  %35 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool88.not = icmp eq i8 %36, 0
  br i1 %tobool88.not, label %if.end87.cleanup148_crit_edge, label %if.end87.if.end101_crit_edge

if.end87.if.end101_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.end87.cleanup148_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.end87.thread:                                  ; preds = %if.end76
  %arrayidx85 = getelementptr i8, ptr %add.ptr.i, i32 6
  %37 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool88.not196 = icmp eq i16 %38, 0
  br i1 %tobool88.not196, label %if.end87.thread.cleanup148_crit_edge, label %if.end87.thread.if.end101_crit_edge

if.end87.thread.if.end101_crit_edge:              ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.end87.thread.cleanup148_crit_edge:             ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.end101:                                        ; preds = %if.end87.thread.if.end101_crit_edge, %if.end87.if.end101_crit_edge
  %.sink204 = phi i32 [ 9, %if.end87.if.end101_crit_edge ], [ 13, %if.end87.thread.if.end101_crit_edge ]
  %arrayidx99 = getelementptr i8, ptr %add.ptr.i, i32 %.sink204
  %39 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx99, align 1
  %conv.i.i186 = zext i8 %40 to i32
  %shl.i.i187 = shl nuw nsw i32 %conv.i.i186, 16
  %arrayidx1.i.i188 = getelementptr i8, ptr %arrayidx99, i32 1
  %41 = ptrtoint ptr %arrayidx1.i.i188 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.i.i188, align 1
  %conv2.i.i189 = zext i8 %42 to i32
  %shl3.i.i190 = shl nuw nsw i32 %conv2.i.i189, 8
  %or.i.i191 = or i32 %shl3.i.i190, %shl.i.i187
  %arrayidx4.i.i192 = getelementptr i8, ptr %arrayidx99, i32 2
  %43 = ptrtoint ptr %arrayidx4.i.i192 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx4.i.i192, align 1
  %conv5.i.i193 = zext i8 %44 to i32
  %or6.i.i194 = or i32 %or.i.i191, %conv5.i.i193
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 20
  %45 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or6.i.i194, ptr %sector_size, align 4
  br label %cleanup148

after_mode_select:                                ; preds = %if.end55.after_mode_select_crit_edge, %lor.lhs.false51.after_mode_select_crit_edge, %after_mode_sense.after_mode_select_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %scsi_status)
  %cmp106 = icmp eq i8 %scsi_status, 2
  br i1 %cmp106, label %after_mode_select.if.then108_crit_edge, label %after_mode_select.cleanup148_crit_edge

after_mode_select.cleanup148_crit_edge:           ; preds = %after_mode_select
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

after_mode_select.if.then108_crit_edge:           ; preds = %after_mode_select
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.then108:                                       ; preds = %after_mode_select.if.then108_crit_edge, %land.lhs.true65.if.then108_crit_edge
  tail call void @transport_copy_sense_to_cmd(ptr noundef %cmd, ptr noundef %req_sense) #11
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp111 = icmp eq i8 %47, 1
  br i1 %cmp111, label %land.lhs.true113, label %if.then108.cleanup148_crit_edge

if.then108.cleanup148_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

land.lhs.true113:                                 ; preds = %if.then108
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %48 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp114 = icmp eq i32 %49, 2
  br i1 %cmp114, label %if.then116, label %land.lhs.true113.cleanup148_crit_edge

land.lhs.true113.cleanup148_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.then116:                                       ; preds = %land.lhs.true113
  %50 = ptrtoint ptr %req_sense to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %req_sense, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %51)
  %cmp119 = icmp eq i8 %51, -16
  br i1 %cmp119, label %land.lhs.true121, label %if.then116.cleanup148_crit_edge

if.then116.cleanup148_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

land.lhs.true121:                                 ; preds = %if.then116
  %arrayidx122 = getelementptr i8, ptr %req_sense, i32 2
  %52 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %53 to i32
  %and124 = and i32 %conv123, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp ne i32 %and124, 0
  %and129 = and i32 %conv123, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %cmp130 = icmp eq i32 %and129, 0
  %or.cond = and i1 %tobool125.not, %cmp130
  br i1 %or.cond, label %do.body133, label %land.lhs.true121.cleanup148_crit_edge

land.lhs.true121.cleanup148_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

do.body133:                                       ; preds = %land.lhs.true121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pscsi_complete_cmd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pscsi_complete_cmd, %if.then140)) #11
          to label %do.end143 [label %if.then140], !srcloc !228

if.then140:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pscsi_complete_cmd.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.97) #11
  br label %do.end143

do.end143:                                        ; preds = %if.then140, %do.body133
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %54 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %se_cmd_flags, align 8
  %or144 = or i32 %55, 262144
  store i32 %or144, ptr %se_cmd_flags, align 8
  br label %cleanup148

cleanup148:                                       ; preds = %do.end143, %land.lhs.true121.cleanup148_crit_edge, %if.then116.cleanup148_crit_edge, %land.lhs.true113.cleanup148_crit_edge, %if.then108.cleanup148_crit_edge, %after_mode_select.cleanup148_crit_edge, %if.end101, %if.end87.thread.cleanup148_crit_edge, %if.end87.cleanup148_crit_edge, %do.end, %land.lhs.true65.cleanup148_crit_edge, %entry.cleanup148_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_lun_is_rdonly(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_copy_sense_to_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_backend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !216, !218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__UNIQUE_ID_description315, !1, !"__UNIQUE_ID_description315", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_pscsi.c", i32 1104, i32 1}
!2 = !{ptr @__UNIQUE_ID_author316, !3, !"__UNIQUE_ID_author316", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_pscsi.c", i32 1105, i32 1}
!4 = !{ptr @__UNIQUE_ID_file317, !5, !"__UNIQUE_ID_file317", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_pscsi.c", i32 1106, i32 1}
!6 = !{ptr @__UNIQUE_ID_license318, !5, !"__UNIQUE_ID_license318", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_target_core_pscsi__319_1108_pscsi_module_init6, !8, !"__initcall__kmod_target_core_pscsi__319_1108_pscsi_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/target/target_core_pscsi.c", i32 1108, i32 1}
!9 = !{ptr @__exitcall_pscsi_module_exit, !10, !"__exitcall_pscsi_module_exit", i1 false, i1 false}
!10 = !{!"../drivers/target/target_core_pscsi.c", i32 1109, i32 1}
!11 = !{ptr @pscsi_ops, !12, !"pscsi_ops", i1 false, i1 false}
!12 = !{!"../drivers/target/target_core_pscsi.c", i32 1073, i32 40}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_pscsi.c", i32 56, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pscsi_attach_hba._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @pscsi_attach_hba._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/target_core_pscsi.c", i32 64, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pscsi_attach_hba.__UNIQUE_ID_ddebug281, !20, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_pscsi.c", i32 67, i32 2}
!27 = !{ptr @pscsi_attach_hba.__UNIQUE_ID_ddebug282, !26, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_pscsi.c", i32 81, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pscsi_detach_hba.__UNIQUE_ID_ddebug283, !29, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/target_core_pscsi.c", i32 86, i32 3}
!35 = !{ptr @pscsi_detach_hba.__UNIQUE_ID_ddebug284, !34, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/target/target_core_pscsi.c", i32 107, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug285, !37, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_pscsi.c", i32 120, i32 3}
!42 = !{ptr @pscsi_pmode_enable_hba._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pscsi_pmode_enable_hba._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_pscsi.c", i32 128, i32 2}
!46 = !{ptr @pscsi_pmode_enable_hba.__UNIQUE_ID_ddebug286, !45, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/target_core_pscsi.c", i32 341, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pscsi_alloc_device._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pscsi_alloc_device._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_pscsi.c", i32 345, i32 2}
!54 = !{ptr @pscsi_alloc_device.__UNIQUE_ID_ddebug295, !53, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/target_core_pscsi.c", i32 437, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pscsi_configure_device._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @pscsi_configure_device._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_pscsi.c", i32 448, i32 4}
!62 = !{ptr @pscsi_configure_device._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pscsi_configure_device._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/target_core_pscsi.c", i32 457, i32 4}
!66 = !{ptr @pscsi_configure_device._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pscsi_configure_device._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_pscsi.c", i32 468, i32 5}
!70 = !{ptr @pscsi_configure_device._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pscsi_configure_device._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/target_core_pscsi.c", i32 482, i32 5}
!74 = !{ptr @pscsi_configure_device._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pscsi_configure_device._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/target/target_core_pscsi.c", i32 490, i32 4}
!78 = !{ptr @pscsi_configure_device._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pscsi_configure_device._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/target_core_pscsi.c", i32 531, i32 2}
!82 = !{ptr @pscsi_configure_device._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pscsi_configure_device._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/target_core_pscsi.c", i32 362, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pscsi_create_type_disk._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pscsi_create_type_disk._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/target_core_pscsi.c", i32 375, i32 3}
!91 = !{ptr @pscsi_create_type_disk._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pscsi_create_type_disk._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/target_core_pscsi.c", i32 388, i32 2}
!95 = !{ptr @pscsi_create_type_disk.__UNIQUE_ID_ddebug296, !94, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!96 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/target_core_pscsi.c", i32 296, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @pscsi_add_device_to_list._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @pscsi_add_device_to_list._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/target_core_pscsi.c", i32 174, i32 4}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/target_core_pscsi.c", i32 177, i32 4}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/target_core_pscsi.c", i32 180, i32 4}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/target_core_pscsi.c", i32 204, i32 57}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/target_core_pscsi.c", i32 246, i32 4}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pscsi_get_inquiry_vpd_device_ident._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pscsi_get_inquiry_vpd_device_ident._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/target_core_pscsi.c", i32 250, i32 3}
!118 = !{ptr @pscsi_get_inquiry_vpd_device_ident.__UNIQUE_ID_ddebug290, !117, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/target_core_pscsi.c", i32 254, i32 4}
!121 = !{ptr @pscsi_get_inquiry_vpd_device_ident._entry.56, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @pscsi_get_inquiry_vpd_device_ident._entry_ptr.58, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/target_core_pscsi.c", i32 405, i32 3}
!125 = !{ptr @pscsi_create_type_nondisk._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @pscsi_create_type_nondisk._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/target_core_pscsi.c", i32 417, i32 2}
!129 = !{ptr @pscsi_create_type_nondisk.__UNIQUE_ID_ddebug297, !128, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/target/target_core_pscsi.c", i32 731, i32 30}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/target/target_core_pscsi.c", i32 739, i32 5}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @pscsi_set_configfs_dev_params._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @pscsi_set_configfs_dev_params._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/target_core_pscsi.c", i32 750, i32 4}
!139 = !{ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug299, !138, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/target/target_core_pscsi.c", i32 759, i32 4}
!142 = !{ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug300, !141, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/target_core_pscsi.c", i32 769, i32 4}
!145 = !{ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug301, !144, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_pscsi.c", i32 779, i32 4}
!148 = !{ptr @pscsi_set_configfs_dev_params.__UNIQUE_ID_ddebug302, !147, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/target_core_pscsi.c", i32 709, i32 21}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/target_core_pscsi.c", i32 710, i32 24}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/target_core_pscsi.c", i32 711, i32 23}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/target_core_pscsi.c", i32 712, i32 20}
!157 = !{ptr @tokens, !158, !"tokens", i1 false, i1 false}
!158 = !{!"../drivers/target/target_core_pscsi.c", i32 708, i32 22}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/target_core_pscsi.c", i32 802, i32 25}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/target_core_pscsi.c", i32 804, i32 25}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/target_core_pscsi.c", i32 806, i32 18}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/target/target_core_pscsi.c", i32 812, i32 25}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/target_core_pscsi.c", i32 814, i32 25}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/target_core_pscsi.c", i32 816, i32 25}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/target_core_pscsi.c", i32 860, i32 2}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug303, !172, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/target/target_core_pscsi.c", i32 867, i32 3}
!177 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug304, !176, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_pscsi.c", i32 894, i32 5}
!180 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug309, !179, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!181 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/target_core_pscsi.c", i32 899, i32 4}
!185 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug310, !184, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/target/target_core_pscsi.c", i32 905, i32 4}
!188 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug311, !187, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/target_core_pscsi.c", i32 908, i32 5}
!191 = !{ptr @pscsi_map_sg.__UNIQUE_ID_ddebug312, !190, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/target/target_core_pscsi.c", i32 914, i32 6}
!194 = !{ptr @pscsi_map_sg._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @pscsi_map_sg._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @pscsi_map_sg._entry.88, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/target/target_core_pscsi.c", i32 933, i32 4}
!198 = !{ptr @pscsi_map_sg._entry_ptr.89, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/target/target_core_pscsi.c", i32 836, i32 3}
!201 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @pscsi_get_bio._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @pscsi_get_bio._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/target_core_pscsi.c", i32 1049, i32 3}
!206 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @pscsi_req_done.__UNIQUE_ID_ddebug313, !205, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!208 = !{ptr @.str.94, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/target/target_core_pscsi.c", i32 1062, i32 3}
!210 = !{ptr @pscsi_req_done.__UNIQUE_ID_ddebug314, !209, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/target/target_core_pscsi.c", i32 657, i32 4}
!213 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @pscsi_complete_cmd._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @pscsi_complete_cmd._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/target_core_pscsi.c", i32 696, i32 5}
!218 = !{ptr @pscsi_complete_cmd.__UNIQUE_ID_ddebug298, !217, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i64 2148918740, i64 2148918745, i64 2148918758, i64 2148918802, i64 2148918836, i64 2148918857}
!229 = !{!"auto-init"}
!230 = !{!"branch_weights", i32 1, i32 2000}
!231 = !{i64 2154769156, i64 2154769655, i64 2154769193, i64 2154769249, i64 2154769283, i64 2154769307, i64 2154769348, i64 2154769369, i64 2154769397, i64 2154769431}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2154408189, i64 2154412742, i64 2154408226, i64 2154408282, i64 2154408316, i64 2154408340, i64 2154408381, i64 2154408402, i64 2154408430, i64 2154408464}
