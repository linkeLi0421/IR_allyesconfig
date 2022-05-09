; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_file.c_pt.bc'
source_filename = "../drivers/target/target_core_file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.match_token = type { i32, ptr }
%struct.sbc_ops = type { ptr, ptr, ptr, ptr }
%struct.fd_host = type { i32, i32, [120 x i8] }
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
%struct.fd_dev = type { %struct.se_device, i32, [256 x i8], i32, i32, i32, i32, i64, ptr, ptr, ptr }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.target_core_file_cmd = type { i32, ptr, %struct.kiocb, [0 x %struct.bio_vec] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@fileio_ops = internal constant { %struct.target_backend_ops, [44 x i8] } { %struct.target_backend_ops { [16 x i8] c"fileio\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"FILEIO\00\00\00\00\00\00\00\00\00\00", [4 x i8] c"4.0\00", ptr null, i8 0, i8 0, ptr @fd_attach_hba, ptr @fd_detach_hba, ptr null, ptr @fd_alloc_device, ptr @fd_configure_device, ptr @fd_destroy_device, ptr @fd_free_device, ptr null, ptr null, ptr @fd_set_configfs_dev_params, ptr @fd_show_configfs_dev_params, ptr @fd_parse_cdb, ptr null, ptr @sbc_get_device_type, ptr @fd_get_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fd_init_prot, ptr @fd_format_prot, ptr @fd_free_prot, ptr @sbc_attrib_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description283 = internal constant [57 x i8] c"target_core_file.description=TCM FILEIO subsystem plugin\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [44 x i8] c"target_core_file.author=nab@Linux-iSCSI.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [54 x i8] c"target_core_file.file=drivers/target/target_core_file\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [29 x i8] c"target_core_file.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_target_core_file__287_952_fileio_module_init6 = internal global ptr @fileio_module_init, section ".initcall6.init", align 4
@__exitcall_fileio_module_exit = internal global ptr @fileio_module_exit, section ".exitcall.exit", align 4
@sbc_attrib_attrs = external dso_local global [0 x ptr], align 4
@fd_attach_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unable to allocate memory for struct fd_host\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fd_attach_hba\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/target/target_core_file.c\00", [62 x i8] zeroinitializer }, align 32
@fd_attach_hba._entry_ptr = internal global ptr @fd_attach_hba._entry, section ".printk_index", align 4
@fd_attach_hba.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"target_core_file\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"CORE_HBA[%d] - TCM FILEIO HBA Driver %s on Generic Target Core Stack %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.0\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v5.0\00", [27 x i8] zeroinitializer }, align 32
@fd_attach_hba.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CORE_HBA[%d] - Attached FILEIO HBA: %u to Generic\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fd_detach_hba.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fd_detach_hba\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"CORE_HBA[%d] - Detached FILEIO HBA: %u from Generic Target Core\0A\00", [63 x i8] zeroinitializer }, align 32
@fd_alloc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate memory for struct fd_dev\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fd_alloc_device\00", [16 x i8] zeroinitializer }, align 32
@fd_alloc_device._entry_ptr = internal global ptr @fd_alloc_device._entry, section ".printk_index", align 4
@fd_alloc_device.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FILEIO: Allocated fd_dev for %p\0A\00", [63 x i8] zeroinitializer }, align 32
@fd_configure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Missing fd_dev_name=\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fd_configure_device\00", [44 x i8] zeroinitializer }, align 32
@fd_configure_device._entry_ptr = internal global ptr @fd_configure_device._entry, section ".printk_index", align 4
@fd_configure_device.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FILEIO: Disabling O_DSYNC, using buffered FILEIO\0A\00", [46 x i8] zeroinitializer }, align 32
@fd_configure_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013filp_open(%s) failed\0A\00", [40 x i8] zeroinitializer }, align 32
@fd_configure_device._entry_ptr.18 = internal global ptr @fd_configure_device._entry.16, section ".printk_index", align 4
@fd_configure_device.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"FILEIO: Using size: %llu bytes from struct block_device blocks: %llu logical_block_size: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fd_configure_device.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.20, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"IFILE: BLOCK Discard support available, disabled by default\0A\00", [35 x i8] zeroinitializer }, align 32
@fd_configure_device._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013FILEIO: Missing fd_dev_size= parameter, and no backing struct block_device\0A\00", [50 x i8] zeroinitializer }, align 32
@fd_configure_device._entry_ptr.23 = internal global ptr @fd_configure_device._entry.21, section ".printk_index", align 4
@fd_configure_device.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.24, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"FILEIO: Forcing setting of emulate_write_cache=1 with FDBD_HAS_BUFFERED_IO_WCE\0A\00", [48 x i8] zeroinitializer }, align 32
@fd_configure_device.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.25, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"CORE_FILE[%u] - Added TCM FILEIO Device ID: %u at %s, %llu total bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@tokens = internal global { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.39 }, %struct.match_token { i32 1, ptr @.str.40 }, %struct.match_token { i32 2, ptr @.str.41 }, %struct.match_token { i32 3, ptr @.str.42 }, %struct.match_token { i32 4, ptr null }], [56 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fd_set_configfs_dev_params\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FILEIO: Referencing Path: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013kstrtoull() failed for fd_dev_size=\0A\00", [57 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry_ptr = internal global ptr @fd_set_configfs_dev_params._entry, section ".printk_index", align 4
@fd_set_configfs_dev_params.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FILEIO: Referencing Size: %llu bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bogus fd_buffered_io=%d value\0A\00", [63 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry_ptr.33 = internal global ptr @fd_set_configfs_dev_params._entry.31, section ".printk_index", align 4
@fd_set_configfs_dev_params.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.2, ptr @.str.34, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FILEIO: Using buffered I/O operations for struct fd_dev\0A\00", [39 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013bogus fd_async_io=%d value\0A\00", [34 x i8] zeroinitializer }, align 32
@fd_set_configfs_dev_params._entry_ptr.37 = internal global ptr @fd_set_configfs_dev_params._entry.35, section ".printk_index", align 4
@fd_set_configfs_dev_params.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.2, ptr @.str.38, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FILEIO: Using async I/O operations for struct fd_dev\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fd_dev_name=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fd_dev_size=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fd_buffered_io=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fd_async_io=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCM FILEIO ID: %u\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"        File: %s  Size: %llu  Mode: %s Async: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Buffered-WCE\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O_DSYNC\00", [24 x i8] zeroinitializer }, align 32
@fd_sbc_ops = internal global { %struct.sbc_ops, [16 x i8] } { %struct.sbc_ops { ptr @fd_execute_rw, ptr @fd_execute_sync_cache, ptr @fd_execute_write_same, ptr @fd_execute_unmap }, [16 x i8] zeroinitializer }, align 32
@fd_execute_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013FILEIO: Not able to process I/O of %u bytes due toFD_MAX_BYTES: %u iovec count limitation\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fd_execute_rw\00", [18 x i8] zeroinitializer }, align 32
@fd_execute_rw._entry_ptr = internal global ptr @fd_execute_rw._entry, section ".printk_index", align 4
@fd_do_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate fd_do_readv iov[]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fd_do_rw\00", [23 x i8] zeroinitializer }, align 32
@fd_do_rw._entry_ptr = internal global ptr @fd_do_rw._entry, section ".printk_index", align 4
@fd_do_rw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() write returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fd_do_rw._entry_ptr.53 = internal global ptr @fd_do_rw._entry.51, section ".printk_index", align 4
@fd_do_rw._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() returned %d, expecting %u for S_ISBLK\0A\00", [50 x i8] zeroinitializer }, align 32
@fd_do_rw._entry_ptr.56 = internal global ptr @fd_do_rw._entry.54, section ".printk_index", align 4
@fd_do_rw._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s() returned %d for non S_ISBLK\0A\00", [60 x i8] zeroinitializer }, align 32
@fd_do_rw._entry_ptr.59 = internal global ptr @fd_do_rw._entry.57, section ".printk_index", align 4
@fd_execute_sync_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013FILEIO: vfs_fsync_range() failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fd_execute_sync_cache\00", [42 x i8] zeroinitializer }, align 32
@fd_execute_sync_cache._entry_ptr = internal global ptr @fd_execute_sync_cache._entry, section ".printk_index", align 4
@fd_execute_write_same._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013WRITE_SAME: Protection information with FILEIO backends not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fd_execute_write_same\00", [42 x i8] zeroinitializer }, align 32
@fd_execute_write_same._entry_ptr = internal global ptr @fd_execute_write_same._entry, section ".printk_index", align 4
@fd_execute_write_same._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013WRITE_SAME: Illegal SGL t_data_nents: %u length: %u block_size: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@fd_execute_write_same._entry_ptr.66 = internal global ptr @fd_execute_write_same._entry.64, section ".printk_index", align 4
@fd_execute_write_same._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013vfs_iter_write() returned %zd for write same\0A\00", [48 x i8] zeroinitializer }, align 32
@fd_execute_write_same._entry_ptr.69 = internal global ptr @fd_execute_write_same._entry.67, section ".printk_index", align 4
@fd_execute_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014FILEIO: blkdev_issue_discard() failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fd_execute_unmap\00", [47 x i8] zeroinitializer }, align 32
@fd_execute_unmap._entry_ptr = internal global ptr @fd_execute_unmap._entry, section ".printk_index", align 4
@fd_execute_unmap._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014FILEIO: fallocate() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fd_execute_unmap._entry_ptr.74 = internal global ptr @fd_execute_unmap._entry.72, section ".printk_index", align 4
@fd_do_prot_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to allocate FILEIO prot buf\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fd_do_prot_unmap\00", [47 x i8] zeroinitializer }, align 32
@fd_do_prot_unmap._entry_ptr = internal global ptr @fd_do_prot_unmap._entry, section ".printk_index", align 4
@fd_do_prot_fill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to locate fd_dev->fd_prot_file\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fd_do_prot_fill\00", [16 x i8] zeroinitializer }, align 32
@fd_do_prot_fill._entry_ptr = internal global ptr @fd_do_prot_fill._entry, section ".printk_index", align 4
@fd_do_prot_fill._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013vfs_write to prot file failed: %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@fd_do_prot_fill._entry_ptr.81 = internal global ptr @fd_do_prot_fill._entry.79, section ".printk_index", align 4
@fd_init_prot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unable to locate fd_dev->fd_file\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fd_init_prot\00", [19 x i8] zeroinitializer }, align 32
@fd_init_prot._entry_ptr = internal global ptr @fd_init_prot._entry, section ".printk_index", align 4
@fd_init_prot._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013FILEIO Protection emulation only supported on !S_ISBLK\0A\00", [38 x i8] zeroinitializer }, align 32
@fd_init_prot._entry_ptr.86 = internal global ptr @fd_init_prot._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s.protection\00", [18 x i8] zeroinitializer }, align 32
@fd_init_prot._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.83, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fd_init_prot._entry_ptr.89 = internal global ptr @fd_init_prot._entry.88, section ".printk_index", align 4
@fd_format_prot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to format_prot while pi_prot_type == 0\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fd_format_prot\00", [17 x i8] zeroinitializer }, align 32
@fd_format_prot._entry_ptr = internal global ptr @fd_format_prot._entry, section ".printk_index", align 4
@fd_format_prot._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.91, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fd_format_prot._entry_ptr.93 = internal global ptr @fd_format_prot._entry.92, section ".printk_index", align 4
@fd_format_prot.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.91, ptr @.str.2, ptr @.str.94, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using FILEIO prot_length: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"fileio_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 916, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 43, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 51, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 54, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 64, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 78, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 84, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 98, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 118, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 124, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 148, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 154, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 166, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 197, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 205, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 721, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 699, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 733, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 746, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 750, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 759, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 764, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 774, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 779, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 700, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 701, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 702, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 703, i32 20 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 799, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 800, i32 24 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 803, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 803, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant [11 x i8] c"fd_sbc_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 903, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 683, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 324, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 344, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 356, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 364, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 416, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 446, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 453, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 478, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 563, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 579, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 525, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 496, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 508, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 837, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 843, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 851, i32 38 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 856, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 872, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 878, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [37 x i8] c"../drivers/target/target_core_file.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 882, i32 2 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_fileio_module_exit, ptr @__initcall__kmod_target_core_file__287_952_fileio_module_init6, ptr @fd_alloc_device._entry, ptr @fd_alloc_device._entry_ptr, ptr @fd_attach_hba._entry, ptr @fd_attach_hba._entry_ptr, ptr @fd_configure_device._entry, ptr @fd_configure_device._entry.16, ptr @fd_configure_device._entry.21, ptr @fd_configure_device._entry_ptr, ptr @fd_configure_device._entry_ptr.18, ptr @fd_configure_device._entry_ptr.23, ptr @fd_do_prot_fill._entry, ptr @fd_do_prot_fill._entry.79, ptr @fd_do_prot_fill._entry_ptr, ptr @fd_do_prot_fill._entry_ptr.81, ptr @fd_do_prot_unmap._entry, ptr @fd_do_prot_unmap._entry_ptr, ptr @fd_do_rw._entry, ptr @fd_do_rw._entry.51, ptr @fd_do_rw._entry.54, ptr @fd_do_rw._entry.57, ptr @fd_do_rw._entry_ptr, ptr @fd_do_rw._entry_ptr.53, ptr @fd_do_rw._entry_ptr.56, ptr @fd_do_rw._entry_ptr.59, ptr @fd_execute_rw._entry, ptr @fd_execute_rw._entry_ptr, ptr @fd_execute_sync_cache._entry, ptr @fd_execute_sync_cache._entry_ptr, ptr @fd_execute_unmap._entry, ptr @fd_execute_unmap._entry.72, ptr @fd_execute_unmap._entry_ptr, ptr @fd_execute_unmap._entry_ptr.74, ptr @fd_execute_write_same._entry, ptr @fd_execute_write_same._entry.64, ptr @fd_execute_write_same._entry.67, ptr @fd_execute_write_same._entry_ptr, ptr @fd_execute_write_same._entry_ptr.66, ptr @fd_execute_write_same._entry_ptr.69, ptr @fd_format_prot._entry, ptr @fd_format_prot._entry.92, ptr @fd_format_prot._entry_ptr, ptr @fd_format_prot._entry_ptr.93, ptr @fd_init_prot._entry, ptr @fd_init_prot._entry.84, ptr @fd_init_prot._entry.88, ptr @fd_init_prot._entry_ptr, ptr @fd_init_prot._entry_ptr.86, ptr @fd_init_prot._entry_ptr.89, ptr @fd_set_configfs_dev_params._entry, ptr @fd_set_configfs_dev_params._entry.31, ptr @fd_set_configfs_dev_params._entry.35, ptr @fd_set_configfs_dev_params._entry_ptr, ptr @fd_set_configfs_dev_params._entry_ptr.33, ptr @fd_set_configfs_dev_params._entry_ptr.37, ptr @fileio_module_exit, ptr @fileio_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @tokens, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @fd_sbc_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.94], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fileio_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_attach_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_alloc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_configure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_configure_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_configure_device._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_set_configfs_dev_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_set_configfs_dev_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_set_configfs_dev_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_sbc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_rw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_rw._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_rw._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_sync_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_write_same._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_write_same._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_write_same._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_execute_unmap._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_prot_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_prot_fill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_do_prot_fill._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_init_prot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_init_prot._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_init_prot._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_format_prot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_format_prot._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fileio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @target_backend_unregister(ptr noundef nonnull @fileio_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_backend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fileio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_backend_register(ptr noundef nonnull @fileio_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_attach_hba(ptr nocapture noundef %hba, i32 noundef %host_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fd_host_id = getelementptr inbounds %struct.fd_host, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %fd_host_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %host_id, ptr %fd_host_id, align 4
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hba_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_attach_hba.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_attach_hba, %if.then8)) #12
          to label %do.body12 [label %if.then8], !srcloc !212

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %3 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_attach_hba.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #12
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_attach_hba.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_attach_hba, %if.then24)) #12
          to label %cleanup [label %if.then24], !srcloc !212

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %hba_id25 = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %5 = ptrtoint ptr %hba_id25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hba_id25, align 4
  %7 = ptrtoint ptr %fd_host_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fd_host_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_attach_hba.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.7, i32 noundef %6, i32 noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body12, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then24 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fd_detach_hba(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_detach_hba.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_detach_hba, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %2 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_id, align 4
  %fd_host_id = getelementptr inbounds %struct.fd_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fd_host_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fd_host_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_detach_hba.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #12
  %6 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hba_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fd_alloc_device(ptr nocapture noundef readonly %hba, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fd_host2 = getelementptr inbounds %struct.fd_dev, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %fd_host2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %fd_host2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_alloc_device.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_alloc_device, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !212

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_alloc_device.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.12, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_configure_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %fbd_flags = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fbd_flags, align 16
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end17_crit_edge, label %do.body6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_configure_device.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_configure_device, %if.then12)) #12
          to label %if.end17 [label %if.then12], !srcloc !212

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_configure_device.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.15) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %do.body6, %if.end.if.end17_crit_edge
  %flags.0 = phi i32 [ 135234, %if.end.if.end17_crit_edge ], [ 131138, %if.then12 ], [ 131138, %do.body6 ]
  %fd_dev_name = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 2
  %call18 = tail call ptr @filp_open(ptr noundef %fd_dev_name, i32 noundef %flags.0, i16 noundef zeroext 384) #12
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end29

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %fd_dev_name) #16
  %6 = ptrtoint ptr %call18 to i32
  br label %fail

if.end29:                                         ; preds = %if.end17
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %fd_file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %fd_file, align 16
  %f_mapping = getelementptr inbounds %struct.file, ptr %call18, i32 0, i32 18
  %8 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_mapping, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %14)
  %cmp = icmp eq i16 %14, 24576
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  %call33 = tail call ptr @I_BDEV(ptr noundef %11) #12
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call33, i32 0, i32 18
  %15 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i, align 4
  %call35 = tail call ptr @I_BDEV(ptr noundef %11) #12
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %call35, i32 0, i32 18
  %17 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then32.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.then32.bdev_logical_block_size.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 9
  %19 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i.i = icmp eq i32 %20, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %20
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.then32.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.then32.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %fd_block_size = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 6
  %21 = ptrtoint ptr %fd_block_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval1.0.i.i, ptr %fd_block_size, align 32
  %22 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_mapping, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call39 = tail call fastcc i64 @i_size_read(ptr noundef %25)
  %26 = ptrtoint ptr %fd_block_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fd_block_size, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_configure_device.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_configure_device, %if.then54)) #12
          to label %do.end60 [label %if.then54], !srcloc !212

if.then54:                                        ; preds = %bdev_logical_block_size.exit
  %conv41 = zext i32 %27 to i64
  %sub = sub i64 %call39, %conv41
  %28 = ptrtoint ptr %fd_block_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fd_block_size, align 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !213

if.then168.i.i:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %29
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %sub) #17, !srcloc !214
  %asmresult1.i.i.i = extractvalue { i64, i64 } %30, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_configure_device.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.19, i64 noundef %sub, i64 noundef %dividend.addr.0.i.i, i32 noundef %29) #12
  br label %do.end60

do.end60:                                         ; preds = %div_u64.exit, %bdev_logical_block_size.exit
  %dev_attrib = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39
  %call61 = tail call zeroext i1 @target_configure_unmap_from_queue(ptr noundef %dev_attrib, ptr noundef %16) #12
  br i1 %call61, label %do.body63, label %do.end60.if.end79_crit_edge

do.end60.if.end79_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.body63:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_configure_device.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_configure_device, %if.then75)) #12
          to label %if.end79 [label %if.then75], !srcloc !212

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_configure_device.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.20) #12
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %do.body63, %do.end60.if.end79_crit_edge
  %max_write_same_len = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 30
  %31 = ptrtoint ptr %max_write_same_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65535, ptr %max_write_same_len, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 11
  %32 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %queue_flags, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool82.not = icmp eq i32 %34, 0
  br i1 %tobool82.not, label %if.end79.if.end103_crit_edge, label %if.then83

if.end79.if.end103_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %is_nonrot = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 17
  %35 = ptrtoint ptr %is_nonrot to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %is_nonrot, align 1
  br label %if.end103

if.else:                                          ; preds = %if.end29
  %36 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fbd_flags, align 16
  %and87 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.end92, label %if.end95

do.end92:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %fail

if.end95:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %fd_block_size96 = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 6
  %38 = ptrtoint ptr %fd_block_size96 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 512, ptr %fd_block_size96, align 32
  %max_unmap_lba_count = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 26
  %39 = ptrtoint ptr %max_unmap_lba_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8192, ptr %max_unmap_lba_count, align 4
  %max_unmap_block_desc_count = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 27
  %40 = ptrtoint ptr %max_unmap_block_desc_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %max_unmap_block_desc_count, align 8
  %unmap_granularity = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 28
  %41 = ptrtoint ptr %unmap_granularity to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %unmap_granularity, align 4
  %unmap_granularity_alignment = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 29
  %42 = ptrtoint ptr %unmap_granularity_alignment to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %unmap_granularity_alignment, align 8
  %max_write_same_len102 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 30
  %43 = ptrtoint ptr %max_write_same_len102 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4096, ptr %max_write_same_len102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end95, %if.then83, %if.end79.if.end103_crit_edge
  %fd_block_size104 = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 6
  %44 = ptrtoint ptr %fd_block_size104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fd_block_size104, align 32
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %46 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hw_block_size, align 4
  %max_bytes_per_io = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 31
  %47 = ptrtoint ptr %max_bytes_per_io to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8388608, ptr %max_bytes_per_io, align 8
  %div = udiv i32 8388608, %45
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %48 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %hw_max_sectors, align 4
  %hw_queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 24
  %49 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 128, ptr %hw_queue_depth, align 4
  %50 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fbd_flags, align 16
  %and111 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end103.if.end131_crit_edge, label %do.body114

if.end103.if.end131_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

do.body114:                                       ; preds = %if.end103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_configure_device.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_configure_device, %if.then126)) #12
          to label %do.end129 [label %if.then126], !srcloc !212

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_configure_device.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.24) #12
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body114
  %emulate_write_cache = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 4
  %52 = ptrtoint ptr %emulate_write_cache to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %emulate_write_cache, align 4
  br label %if.end131

if.end131:                                        ; preds = %do.end129, %if.end103.if.end131_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 128
  %inc = add i32 %54, 1
  store i32 %inc, ptr %3, align 128
  %fd_dev_id = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 3
  %55 = ptrtoint ptr %fd_dev_id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %fd_dev_id, align 4
  %queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 4
  %56 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %queue_depth, align 8
  %fd_queue_depth = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 5
  %58 = ptrtoint ptr %fd_queue_depth to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %fd_queue_depth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_configure_device.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_configure_device, %if.then144)) #12
          to label %cleanup [label %if.then144], !srcloc !212

if.then144:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %fd_host_id = getelementptr inbounds %struct.fd_host, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %fd_host_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fd_host_id, align 4
  %61 = ptrtoint ptr %fd_dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fd_dev_id, align 4
  %fd_dev_size = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 7
  %63 = ptrtoint ptr %fd_dev_size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %fd_dev_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_configure_device.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.25, i32 noundef %60, i32 noundef %62, ptr noundef %fd_dev_name, i64 noundef %64) #12
  br label %cleanup

fail:                                             ; preds = %do.end92, %do.end23
  %ret.0 = phi i32 [ %6, %do.end23 ], [ -22, %do.end92 ]
  %fd_file151 = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 8
  %65 = ptrtoint ptr %fd_file151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fd_file151, align 16
  %tobool152.not = icmp eq ptr %66, null
  br i1 %tobool152.not, label %fail.cleanup_crit_edge, label %if.then153

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then153:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  %call155 = tail call i32 @filp_close(ptr noundef nonnull %66, ptr noundef null) #12
  %67 = ptrtoint ptr %fd_file151 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %fd_file151, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %fail.cleanup_crit_edge, %if.then144, %if.end131, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then144 ], [ %ret.0, %if.then153 ], [ %ret.0, %fail.cleanup_crit_edge ], [ 0, %if.end131 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fd_destroy_device(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd_file, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @filp_close(ptr noundef nonnull %1, ptr noundef null) #12
  %2 = ptrtoint ptr %fd_file to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fd_file, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fd_free_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @fd_dev_call_rcu) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_set_configfs_dev_params(ptr noundef %dev, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %opts = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #12
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arg, align 4, !annotation !215
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #12
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %fbd_flags116 = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 1
  %fd_dev_size = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 7
  %fd_dev_name = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 2
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %while.cond.outer.outer.backedge, %while.cond.preheader
  %ret.0.ph.ph = phi i32 [ 0, %while.cond.preheader ], [ %ret.0.ph.ph.be, %while.cond.outer.outer.backedge ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end5.while.cond.outer_crit_edge, %while.cond.outer.outer
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %call2 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.26) #12
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %out, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call2, align 1
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.end5

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @match_token(ptr noundef nonnull %call2, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #12
  %5 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end5.while.cond.outer_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb54
    i32 3, label %sw.bb86
  ]

if.end5.while.cond.outer_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer

sw.bb:                                            ; preds = %if.end5
  %call8 = call i32 @match_strlcpy(ptr noundef %fd_dev_name, ptr noundef nonnull %args, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %sw.bb.while.cond.outer.outer.backedge_crit_edge, label %do.body

sw.bb.while.cond.outer.outer.backedge_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.outer.backedge

while.cond.outer.outer.backedge:                  ; preds = %sw.epilog.sink.split, %sw.bb20.while.cond.outer.outer.backedge_crit_edge, %sw.bb.while.cond.outer.outer.backedge_crit_edge
  %ret.0.ph.ph.be = phi i32 [ %ret.1.ph, %sw.epilog.sink.split ], [ -12, %sw.bb20.while.cond.outer.outer.backedge_crit_edge ], [ -22, %sw.bb.while.cond.outer.outer.backedge_crit_edge ]
  br label %while.cond.outer.outer

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_set_configfs_dev_params, %if.then16)) #12
          to label %sw.epilog.sink.split [label %if.then16], !srcloc !212

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.28, ptr noundef %fd_dev_name) #12
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %if.end5
  %call22 = call ptr @match_strdup(ptr noundef nonnull %args) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %sw.bb20.while.cond.outer.outer.backedge_crit_edge, label %if.end25

sw.bb20.while.cond.outer.outer.backedge_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.outer.backedge

if.end25:                                         ; preds = %sw.bb20
  %call26 = call i32 @kstrtoull(ptr noundef nonnull %call22, i32 noundef 0, ptr noundef %fd_dev_size) #12
  call void @kfree(ptr noundef nonnull %call22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %do.body35

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  br label %out.thread

do.body35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_set_configfs_dev_params, %if.then47)) #12
          to label %sw.epilog.sink.split [label %if.then47], !srcloc !212

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fd_dev_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fd_dev_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.30, i64 noundef %7) #12
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %if.end5
  %call56 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %sw.bb54.out.thread_crit_edge

sw.bb54.out.thread_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end59:                                         ; preds = %sw.bb54
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp60.not = icmp eq i32 %9, 1
  br i1 %cmp60.not, label %do.body68, label %do.end64

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %9) #16
  br label %out.thread

do.body68:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_set_configfs_dev_params, %if.then80)) #12
          to label %sw.epilog.sink.split [label %if.then80], !srcloc !212

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.34) #12
  br label %sw.epilog.sink.split

sw.bb86:                                          ; preds = %if.end5
  %call88 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %sw.bb86.out.thread_crit_edge

sw.bb86.out.thread_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end91:                                         ; preds = %sw.bb86
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp92.not = icmp eq i32 %11, 1
  br i1 %cmp92.not, label %do.body100, label %do.end96

do.end96:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %11) #16
  br label %out.thread

do.body100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_set_configfs_dev_params, %if.then112)) #12
          to label %sw.epilog.sink.split [label %if.then112], !srcloc !212

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.38) #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then112, %do.body100, %if.then80, %do.body68, %if.then47, %do.body35, %if.then16, %do.body
  %.sink175 = phi i32 [ 1, %do.body ], [ 1, %if.then16 ], [ 2, %do.body35 ], [ 2, %if.then47 ], [ 4, %do.body68 ], [ 4, %if.then80 ], [ 8, %do.body100 ], [ 8, %if.then112 ]
  %ret.1.ph = phi i32 [ %ret.0.ph.ph, %do.body ], [ %ret.0.ph.ph, %if.then16 ], [ %call26, %do.body35 ], [ %call26, %if.then47 ], [ 0, %do.body68 ], [ 0, %if.then80 ], [ 0, %do.body100 ], [ 0, %if.then112 ]
  %12 = ptrtoint ptr %fbd_flags116 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fbd_flags116, align 16
  %or117 = or i32 %13, %.sink175
  store i32 %or117, ptr %fbd_flags116, align 16
  br label %while.cond.outer.outer.backedge

out.thread:                                       ; preds = %do.end96, %sw.bb86.out.thread_crit_edge, %do.end64, %sw.bb54.out.thread_crit_edge, %do.end31
  %ret.2.ph = phi i32 [ %call26, %do.end31 ], [ -22, %do.end64 ], [ -22, %do.end96 ], [ %call88, %sw.bb86.out.thread_crit_edge ], [ %call56, %sw.bb54.out.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #12
  br label %cleanup

out:                                              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.ph)
  %tobool118.not = icmp eq i32 %ret.0.ph.ph, 0
  %spec.select = select i1 %tobool118.not, i32 %count, i32 %ret.0.ph.ph
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.2.ph, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_show_configfs_dev_params(ptr noundef %dev, ptr nocapture noundef writeonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_dev_id = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %fd_dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fd_dev_id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.43, i32 noundef %1)
  %add.ptr2 = getelementptr i8, ptr %b, i32 %call1
  %fd_dev_name = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 2
  %fd_dev_size = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %fd_dev_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fd_dev_size, align 8
  %fbd_flags = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fbd_flags, align 16
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.46, ptr @.str.45
  %and4 = lshr i32 %5, 3
  %and4.lobit = and i32 %and4, 1
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.44, ptr noundef %fd_dev_name, i64 noundef %3, ptr noundef nonnull %cond, i32 noundef %and4.lobit)
  %add = add i32 %call7, %call1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_parse_cdb(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sbc_parse_cdb(ptr noundef %cmd, ptr noundef nonnull @fd_sbc_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_get_device_type(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fd_get_blocks(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd_file, align 16
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %8)
  %cmp = icmp eq i16 %8, 24576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fd_dev_size = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %fd_dev_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fd_dev_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev_size.0 = phi i64 [ %call2, %if.then ], [ %10, %if.else ]
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %11 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %block_size, align 8
  %conv3 = zext i32 %12 to i64
  %sub = sub i64 %dev_size.0, %conv3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !213

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %12
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %sub) #17, !srcloc !214
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %dividend.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_init_prot(ptr noundef %dev) #2 align 64 {
entry:
  %buf = alloca [272 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd_file, align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 272)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %9)
  %cmp = icmp eq i16 %9, 24576
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fbd_flags = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fbd_flags, align 16
  %and10 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select = select i1 %tobool11.not, i32 135234, i32 131138
  %fd_dev_name = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 2
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 272, ptr noundef nonnull @.str.87, ptr noundef %fd_dev_name)
  %call18 = call ptr @filp_open(ptr noundef nonnull %buf, i32 noundef %spec.select, i16 noundef zeroext 384) #12
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end28

do.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %buf) #16
  %12 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %fd_prot_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %fd_prot_file to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %fd_prot_file, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end23, %do.end6, %do.end
  %retval.0 = phi i32 [ -38, %do.end6 ], [ %12, %do.end23 ], [ 0, %if.end28 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_format_prot(ptr noundef %dev) #2 align 64 {
entry:
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 8
  %mul = shl i32 %1, 11
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 12
  %2 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @vzalloc(i32 noundef %mul) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fd_format_prot.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fd_format_prot, %if.then17)) #12
          to label %do.end22 [label %if.then17], !srcloc !212

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %4 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_blocks, align 4
  %call18 = tail call i64 %7(ptr noundef %dev) #12
  %add = add i64 %call18, 1
  %prot_length = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 48
  %8 = ptrtoint ptr %prot_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_length, align 8
  %conv = sext i32 %9 to i64
  %mul19 = mul i64 %add, %conv
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fd_format_prot.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.94, i64 noundef %mul19) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body11
  %transport23 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %10 = ptrtoint ptr %transport23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transport23, align 8
  %get_blocks24 = getelementptr inbounds %struct.target_backend_ops, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %get_blocks24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_blocks24, align 4
  %call25 = tail call i64 %13(ptr noundef %dev) #12
  %fd_prot_file.i = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %fd_prot_file.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fd_prot_file.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  %prot_length1.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 48
  %16 = ptrtoint ptr %prot_length1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prot_length1.i, align 8
  %18 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %pos.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #16
  br label %fd_do_prot_fill.exit

if.end.i:                                         ; preds = %do.end22
  %conv.i = sext i32 %17 to i64
  %add26 = add i64 %call25, 1
  %mul5.i = mul i64 %add26, %conv.i
  %19 = call ptr @memset(ptr %call2, i32 255, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul5.i)
  %cmp54.not.i = icmp eq i64 %mul5.i, 0
  br i1 %cmp54.not.i, label %if.end.i.fd_do_prot_fill.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.fd_do_prot_fill.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_do_prot_fill.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv7.i = zext i32 %mul to i64
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.i = add i64 %20, %prot.055.i
  %cmp.i = icmp ugt i64 %mul5.i, %add.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.fd_do_prot_fill.exit_crit_edge

for.cond.i.fd_do_prot_fill.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_do_prot_fill.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %prot.055.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %sub.i = sub i64 %mul5.i, %prot.055.i
  %20 = call i64 @llvm.umin.i64(i64 %sub.i, i64 %conv7.i) #12
  %conv11.i = trunc i64 %20 to i32
  %call12.i = call i32 @kernel_write(ptr noundef nonnull %15, ptr noundef nonnull %call2, i32 noundef %conv11.i, ptr noundef nonnull %pos.i) #12
  %conv13.i = sext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv13.i)
  %cmp14.not.i = icmp eq i64 %20, %conv13.i
  br i1 %cmp14.not.i, label %for.cond.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call12.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp22.i = icmp slt i32 %call12.i, 0
  %spec.select.i = select i1 %cmp22.i, i32 %call12.i, i32 -19
  br label %fd_do_prot_fill.exit

fd_do_prot_fill.exit:                             ; preds = %cleanup.thread.i, %for.cond.i.fd_do_prot_fill.exit_crit_edge, %if.end.i.fd_do_prot_fill.exit_crit_edge, %do.end.i
  %retval.2.i = phi i32 [ -19, %do.end.i ], [ %spec.select.i, %cleanup.thread.i ], [ 0, %if.end.i.fd_do_prot_fill.exit_crit_edge ], [ 0, %for.cond.i.fd_do_prot_fill.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  call void @vfree(ptr noundef nonnull %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %fd_do_prot_fill.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.2.i, %fd_do_prot_fill.exit ], [ -12, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fd_free_prot(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_prot_file = getelementptr inbounds %struct.fd_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %fd_prot_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd_prot_file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @filp_close(ptr noundef nonnull %1, ptr noundef null) #12
  %2 = ptrtoint ptr %fd_prot_file to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fd_prot_file, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !216
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !217
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !218

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !219
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !221
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !222
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !223
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_configure_unmap_from_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fd_dev_call_rcu(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -3776
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_execute_rw(ptr noundef %cmd, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %data_direction) #2 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %3)
  %cmp = icmp ugt i32 %3, 8388608
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %3, i32 noundef 8388608) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fbd_flags = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fbd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fbd_flags, align 16
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_direction)
  %cmp.i = icmp ne i32 %data_direction, 2
  %lnot.ext.i = zext i1 %cmp.i to i32
  %fd_file.i = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fd_file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fd_file.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %8 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sgl_nents, i32 12) #12
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 48) #12
  %retval.0.i.i = select i1 %10, i32 -1, i32 %spec.select.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #18
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then3.fd_execute_rw_aio.exit_crit_edge, label %for.cond.preheader.i

if.then3.fd_execute_rw_aio.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_execute_rw_aio.exit

for.cond.preheader.i:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_nents)
  %cmp383.not.i = icmp eq i32 %sgl_nents, 0
  br i1 %cmp383.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %sg_page.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.086.i = phi i32 [ %inc.i, %sg_page.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len.085.i = phi i32 [ %add.i, %sg_page.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %sg.084.i = phi ptr [ %call10.i, %sg_page.exit.i.for.body.i_crit_edge ], [ %sgl, %for.cond.preheader.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %sg.084.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg.084.i, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !213

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !224
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %and.i.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i = getelementptr %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 3, i32 %i.086.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.084.i, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %bv_len.i = getelementptr %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 3, i32 %i.086.i, i32 1
  %18 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bv_len.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.084.i, i32 0, i32 1
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %bv_offset.i = getelementptr %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 3, i32 %i.086.i, i32 2
  %21 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bv_offset.i, align 4
  %22 = load i32, ptr %length.i, align 4
  %add.i = add i32 %22, %len.085.i
  %inc.i = add nuw i32 %i.086.i, 1
  %call10.i = tail call ptr @sg_next(ptr noundef %sg.084.i) #12
  %exitcond.not.i = icmp eq i32 %inc.i, %sgl_nents
  br i1 %exitcond.not.i, label %sg_page.exit.i.for.end.i_crit_edge, label %sg_page.exit.i.for.body.i_crit_edge

sg_page.exit.i.for.body.i_crit_edge:              ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sg_page.exit.i.for.end.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %sg_page.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %sg_page.exit.i.for.end.i_crit_edge ]
  %bvecs11.i = getelementptr inbounds %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 3
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef %lnot.ext.i, ptr noundef %bvecs11.i, i32 noundef %sgl_nents, i32 noundef %len.0.lcssa.i) #12
  %cmd12.i = getelementptr %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %cmd12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd, ptr %cmd12.i, align 4
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len.0.lcssa.i, ptr %call9.i.i, align 128
  %t_task_lba.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %25 = ptrtoint ptr %t_task_lba.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %t_task_lba.i, align 8
  %block_size.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %27 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block_size.i, align 8
  %conv.i = zext i32 %28 to i64
  %mul.i = mul i64 %26, %conv.i
  %iocb.i = getelementptr inbounds %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 2
  %ki_pos.i = getelementptr inbounds %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %mul.i, ptr %ki_pos.i, align 16
  %30 = ptrtoint ptr %iocb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %7, ptr %iocb.i, align 8
  %ki_complete.i = getelementptr inbounds %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cmd_rw_aio_complete, ptr %ki_complete.i, align 8
  %ki_flags.i = getelementptr inbounds %struct.target_core_file_cmd, ptr %call9.i.i, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 131072, ptr %ki_flags.i, align 32
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.then24.i_crit_edge, label %if.then19.i

land.lhs.true.i.if.then24.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 131074, ptr %ki_flags.i, align 32
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.then19.i, %land.lhs.true.i.if.then24.i_crit_edge
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %36 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_op.i.i, align 4
  %write_iter.i.i = getelementptr inbounds %struct.file_operations, ptr %37, i32 0, i32 5
  br label %if.end29.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_op.i80.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %38 = ptrtoint ptr %f_op.i80.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f_op.i80.i, align 4
  %read_iter.i.i = getelementptr inbounds %struct.file_operations, ptr %39, i32 0, i32 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then24.i
  %read_iter.i.sink.i = phi ptr [ %read_iter.i.i, %if.else.i ], [ %write_iter.i.i, %if.then24.i ]
  %40 = ptrtoint ptr %read_iter.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_iter.i.sink.i, align 4
  %call.i81.i = call i32 %41(ptr noundef %iocb.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call.i81.i)
  %cmp30.not.i = icmp eq i32 %call.i81.i, -529
  br i1 %cmp30.not.i, label %if.end29.i.fd_execute_rw_aio.exit_crit_edge, label %if.then32.i

if.end29.i.fd_execute_rw_aio.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_execute_rw_aio.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call.i81.i)
  %cmp.not.i.i = icmp eq i32 %43, %call.i81.i
  %44 = ptrtoint ptr %cmd12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd12.i, align 4
  %..i.i = select i1 %cmp.not.i.i, i8 0, i8 2
  call void @target_complete_cmd(ptr noundef %45, i8 noundef zeroext %..i.i) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %fd_execute_rw_aio.exit

fd_execute_rw_aio.exit:                           ; preds = %if.then32.i, %if.end29.i.fd_execute_rw_aio.exit_crit_edge, %if.then3.fd_execute_rw_aio.exit_crit_edge
  %retval.0.i = phi i32 [ 10, %if.then3.fd_execute_rw_aio.exit_crit_edge ], [ 0, %if.then32.i ], [ 0, %if.end29.i.fd_execute_rw_aio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fd_file.i16 = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %fd_file.i16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fd_file.i16, align 16
  %fd_prot_file.i = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %fd_prot_file.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fd_prot_file.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_direction)
  %cmp.i17 = icmp eq i32 %data_direction, 2
  %prot_type.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  %50 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i18 = icmp eq i32 %51, 0
  br i1 %cmp.i17, label %if.then.i, label %if.else.i22

if.then.i:                                        ; preds = %if.end5
  br i1 %tobool.not.i18, label %if.then.i.if.end7.i_crit_edge, label %land.lhs.true.i19

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i19:                                ; preds = %if.then.i
  %pi_prot_type.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %52 = ptrtoint ptr %pi_prot_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pi_prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool1.not.i = icmp eq i32 %53, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i19.if.end7.i_crit_edge, label %if.then2.i

land.lhs.true.i19.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i:                                       ; preds = %land.lhs.true.i19
  %prot_length.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 48
  %54 = ptrtoint ptr %prot_length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %prot_length.i, align 8
  %t_prot_sg.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %56 = ptrtoint ptr %t_prot_sg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %t_prot_sg.i, align 4
  %t_prot_nents.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %58 = ptrtoint ptr %t_prot_nents.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %t_prot_nents.i, align 8
  %prot_length3.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 53
  %60 = ptrtoint ptr %prot_length3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prot_length3.i, align 4
  %call4.i = tail call fastcc i32 @fd_do_rw(ptr noundef %cmd, ptr noundef %49, i32 noundef %55, ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %land.lhs.true.i19.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %block_size.i20 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %62 = ptrtoint ptr %block_size.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %block_size.i20, align 8
  %64 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_length, align 4
  %call9.i = tail call fastcc i32 @fd_do_rw(ptr noundef %cmd, ptr noundef %47, i32 noundef %63, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %65, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, 0
  br i1 %cmp10.i, label %land.lhs.true11.i, label %if.end7.i.if.end134.i_crit_edge

if.end7.i.if.end134.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134.i

land.lhs.true11.i:                                ; preds = %if.end7.i
  %66 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool13.not.i = icmp eq i32 %67, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.end138.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.if.end138.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %pi_prot_type16.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %68 = ptrtoint ptr %pi_prot_type16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pi_prot_type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool17.not.i = icmp eq i32 %69, 0
  br i1 %tobool17.not.i, label %land.lhs.true14.i.if.end138.i_crit_edge, label %land.lhs.true18.i

land.lhs.true14.i.if.end138.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

land.lhs.true18.i:                                ; preds = %land.lhs.true14.i
  %pi_prot_verify.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 14
  %70 = ptrtoint ptr %pi_prot_verify.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pi_prot_verify.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool20.not.i = icmp eq i8 %71, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.if.end138.i_crit_edge, label %if.then21.i

land.lhs.true18.i.if.end138.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.then21.i:                                      ; preds = %land.lhs.true18.i
  %72 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_length, align 4
  %74 = ptrtoint ptr %block_size.i20 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %block_size.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i.i = icmp eq i32 %75, 0
  %76 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 true) #12, !range !226
  %sub.i.op.i.i = xor i32 %76, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %shr.i = lshr i32 %73, %sub.i.i
  %t_task_lba.i21 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %77 = ptrtoint ptr %t_task_lba.i21 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %t_task_lba.i21, align 8
  %t_prot_sg37.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %79 = ptrtoint ptr %t_prot_sg37.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %t_prot_sg37.i, align 4
  %call38.i = tail call i32 @sbc_dif_verify(ptr noundef %cmd, i64 noundef %78, i32 noundef %shr.i, i32 noundef 0, ptr noundef %80, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then21.i.if.end138.i_crit_edge, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21.i.if.end138.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.else.i22:                                      ; preds = %if.end5
  br i1 %tobool.not.i18, label %if.else.i22.if.end89.i_crit_edge, label %land.lhs.true45.i

if.else.i22.if.end89.i_crit_edge:                 ; preds = %if.else.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

land.lhs.true45.i:                                ; preds = %if.else.i22
  %pi_prot_type47.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %81 = ptrtoint ptr %pi_prot_type47.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pi_prot_type47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool48.not.i = icmp eq i32 %82, 0
  br i1 %tobool48.not.i, label %land.lhs.true45.i.if.end89.i_crit_edge, label %land.lhs.true49.i

land.lhs.true45.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

land.lhs.true49.i:                                ; preds = %land.lhs.true45.i
  %pi_prot_verify51.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 14
  %83 = ptrtoint ptr %pi_prot_verify51.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pi_prot_verify51.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool52.not.i = icmp eq i8 %84, 0
  br i1 %tobool52.not.i, label %land.lhs.true49.i.if.end89.i_crit_edge, label %cond.end77.i

land.lhs.true49.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

cond.end77.i:                                     ; preds = %land.lhs.true49.i
  %block_size58.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %85 = ptrtoint ptr %block_size58.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %block_size58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i214.i = icmp eq i32 %86, 0
  %87 = tail call i32 @llvm.ctlz.i32(i32 %86, i1 true) #12, !range !226
  %sub.i.op.i215.i = xor i32 %87, 31
  %sub.i216.i = select i1 %tobool.not.i.i214.i, i32 -1, i32 %sub.i.op.i215.i
  %shr79.i = lshr i32 %3, %sub.i216.i
  %t_task_lba80.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %88 = ptrtoint ptr %t_task_lba80.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %t_task_lba80.i, align 8
  %t_prot_sg81.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %90 = ptrtoint ptr %t_prot_sg81.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %t_prot_sg81.i, align 4
  %call82.i = tail call i32 @sbc_dif_verify(ptr noundef %cmd, i64 noundef %89, i32 noundef %shr79.i, i32 noundef 0, ptr noundef %91, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %cond.end77.i.if.end89.i_crit_edge, label %cond.end77.i.cleanup_crit_edge

cond.end77.i.cleanup_crit_edge:                   ; preds = %cond.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end77.i.if.end89.i_crit_edge:                ; preds = %cond.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

if.end89.i:                                       ; preds = %cond.end77.i.if.end89.i_crit_edge, %land.lhs.true49.i.if.end89.i_crit_edge, %land.lhs.true45.i.if.end89.i_crit_edge, %if.else.i22.if.end89.i_crit_edge
  %block_size91.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %92 = ptrtoint ptr %block_size91.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %block_size91.i, align 8
  %94 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_length, align 4
  %call93.i = tail call fastcc i32 @fd_do_rw(ptr noundef %cmd, ptr noundef %47, i32 noundef %93, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %95, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp sgt i32 %call93.i, 0
  br i1 %cmp94.i, label %land.lhs.true96.i, label %if.end89.i.if.end134.i_crit_edge

if.end89.i.if.end134.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134.i

land.lhs.true96.i:                                ; preds = %if.end89.i
  %se_cmd_flags.i23 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %96 = ptrtoint ptr %se_cmd_flags.i23 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %se_cmd_flags.i23, align 8
  %and.i24 = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool97.not.i = icmp eq i32 %and.i24, 0
  br i1 %tobool97.not.i, label %land.lhs.true96.i.land.lhs.true116.i_crit_edge, label %if.then98.i

land.lhs.true96.i.land.lhs.true116.i_crit_edge:   ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true116.i

if.then98.i:                                      ; preds = %land.lhs.true96.i
  %t_task_lba99.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %98 = ptrtoint ptr %t_task_lba99.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %t_task_lba99.i, align 8
  %100 = ptrtoint ptr %block_size91.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %block_size91.i, align 8
  %conv102.i = zext i32 %101 to i64
  %mul.i25 = mul i64 %99, %conv102.i
  %102 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool104.not.i = icmp eq i32 %103, 0
  br i1 %tobool104.not.i, label %if.then98.i.if.end110.i_crit_edge, label %if.then105.i

if.then98.i.if.end110.i_crit_edge:                ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

if.then105.i:                                     ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv107.i = zext i32 %103 to i64
  %add.i26 = add nsw i64 %conv107.i, -1
  %sub108.i = add i64 %add.i26, %mul.i25
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then105.i, %if.then98.i.if.end110.i_crit_edge
  %end.0.i = phi i64 [ %sub108.i, %if.then105.i ], [ 9223372036854775807, %if.then98.i.if.end110.i_crit_edge ]
  %104 = ptrtoint ptr %fd_file.i16 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fd_file.i16, align 16
  %call112.i = tail call i32 @vfs_fsync_range(ptr noundef %105, i64 noundef %mul.i25, i64 noundef %end.0.i, i32 noundef 1) #12
  br label %land.lhs.true116.i

land.lhs.true116.i:                               ; preds = %if.end110.i, %land.lhs.true96.i.land.lhs.true116.i_crit_edge
  %106 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool118.not.i = icmp eq i32 %107, 0
  br i1 %tobool118.not.i, label %land.lhs.true116.i.if.end138.i_crit_edge, label %land.lhs.true119.i

land.lhs.true116.i.if.end138.i_crit_edge:         ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

land.lhs.true119.i:                               ; preds = %land.lhs.true116.i
  %pi_prot_type121.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %108 = ptrtoint ptr %pi_prot_type121.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pi_prot_type121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool122.not.i = icmp eq i32 %109, 0
  br i1 %tobool122.not.i, label %land.lhs.true119.i.if.end138.i_crit_edge, label %if.then123.i

land.lhs.true119.i.if.end138.i_crit_edge:         ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.then123.i:                                     ; preds = %land.lhs.true119.i
  %prot_length124.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 48
  %110 = ptrtoint ptr %prot_length124.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %prot_length124.i, align 8
  %t_prot_sg125.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %112 = ptrtoint ptr %t_prot_sg125.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %t_prot_sg125.i, align 4
  %t_prot_nents126.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %114 = ptrtoint ptr %t_prot_nents126.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %t_prot_nents126.i, align 8
  %prot_length127.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 53
  %116 = ptrtoint ptr %prot_length127.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %prot_length127.i, align 4
  %call128.i = tail call fastcc i32 @fd_do_rw(ptr noundef %cmd, ptr noundef %49, i32 noundef %111, ptr noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %cmp129.i = icmp slt i32 %call128.i, 0
  br i1 %cmp129.i, label %if.then123.i.cleanup_crit_edge, label %if.then123.i.if.end138.i_crit_edge

if.then123.i.if.end138.i_crit_edge:               ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.then123.i.cleanup_crit_edge:                   ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end134.i:                                      ; preds = %if.end89.i.if.end134.i_crit_edge, %if.end7.i.if.end134.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %if.end7.i.if.end134.i_crit_edge ], [ %call93.i, %if.end89.i.if.end134.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp135.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp135.i, label %if.end134.i.cleanup_crit_edge, label %if.end134.i.if.end138.i_crit_edge

if.end134.i.if.end138.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.end134.i.cleanup_crit_edge:                    ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end138.i:                                      ; preds = %if.end134.i.if.end138.i_crit_edge, %if.then123.i.if.end138.i_crit_edge, %land.lhs.true119.i.if.end138.i_crit_edge, %land.lhs.true116.i.if.end138.i_crit_edge, %if.then21.i.if.end138.i_crit_edge, %land.lhs.true18.i.if.end138.i_crit_edge, %land.lhs.true14.i.if.end138.i_crit_edge, %land.lhs.true11.i.if.end138.i_crit_edge
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end138.i, %if.end134.i.cleanup_crit_edge, %if.then123.i.cleanup_crit_edge, %cond.end77.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %fd_execute_rw_aio.exit, %do.end
  %retval.0 = phi i32 [ 10, %do.end ], [ %retval.0.i, %fd_execute_rw_aio.exit ], [ 0, %if.end138.i ], [ %call38.i, %if.then21.i.cleanup_crit_edge ], [ %call82.i, %cond.end77.i.cleanup_crit_edge ], [ 10, %if.then2.i.cleanup_crit_edge ], [ 10, %if.then123.i.cleanup_crit_edge ], [ 10, %if.end134.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_execute_sync_cache(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %7 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %t_task_lba, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %11 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %block_size, align 8
  %conv6 = zext i32 %12 to i64
  %mul = mul i64 %8, %conv6
  %data_length7 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %13 = ptrtoint ptr %data_length7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_length7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.else.if.end14_crit_edge, label %if.then9

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv11 = zext i32 %14 to i64
  %add = add nsw i64 %conv11, -1
  %sub = add i64 %add, %mul
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.else.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge
  %start.0 = phi i64 [ %mul, %if.then9 ], [ 0, %land.lhs.true.if.end14_crit_edge ], [ %mul, %if.else.if.end14_crit_edge ]
  %end.0 = phi i64 [ %sub, %if.then9 ], [ 9223372036854775807, %land.lhs.true.if.end14_crit_edge ], [ 9223372036854775807, %if.else.if.end14_crit_edge ]
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd_file, align 16
  %call15 = tail call i32 @vfs_fsync_range(ptr noundef %16, i64 noundef %start.0, i64 noundef %end.0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end20, label %if.end20.thread

if.end20:                                         ; preds = %if.end14
  br i1 %tobool.not, label %if.end20.cleanup.sink.split_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end20.thread:                                  ; preds = %if.end14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call15) #16
  br i1 %tobool.not, label %if.end20.thread.cleanup.sink.split_crit_edge, label %if.end20.thread.cleanup_crit_edge

if.end20.thread.cleanup_crit_edge:                ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.thread.cleanup.sink.split_crit_edge:     ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20.thread.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.end20.thread.cleanup.sink.split_crit_edge ], [ 0, %if.end20.cleanup.sink.split_crit_edge ]
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.thread.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_execute_write_same(ptr noundef %cmd) #2 align 64 {
entry:
  %pos = alloca i64, align 8
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %2 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %t_task_lba, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 8
  %conv = zext i32 %5 to i64
  %mul = mul i64 %3, %conv
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul, ptr %pos, align 8
  %call2 = tail call i64 @sbc_get_write_same_sectors(ptr noundef %cmd) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %7 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2)
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot_op = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 49
  %8 = ptrtoint ptr %prot_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %10 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_data_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp ugt i32 %11, 1
  br i1 %cmp, label %if.end6.do.end16_crit_edge, label %lor.lhs.false

if.end6.do.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end6
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %12 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t_data_sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %16 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_dev1, align 4
  %block_size10 = getelementptr inbounds %struct.se_device, ptr %17, i32 0, i32 39, i32 21
  %18 = ptrtoint ptr %block_size10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_size10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp11.not = icmp eq i32 %15, %19
  br i1 %cmp11.not, label %if.end26, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end6.do.end16_crit_edge
  %t_data_sg19 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %20 = ptrtoint ptr %t_data_sg19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t_data_sg19, align 4
  %length21 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length21, align 4
  %24 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_dev1, align 4
  %block_size24 = getelementptr inbounds %struct.se_device, ptr %25, i32 0, i32 39, i32 21
  %26 = ptrtoint ptr %block_size24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %block_size24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %23, i32 noundef %27) #16
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %conv27 = trunc i64 %call2 to i32
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv27, i32 12) #12
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %if.end26.cleanup_crit_edge, label %if.end7.i.i, !prof !218

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end26
  %30 = extractvalue { i32, i1 } %28, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #18
  %tobool29.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool29.not, label %if.end7.i.i.cleanup_crit_edge, label %for.body.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7.i.i
  %31 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t_data_sg, align 4
  br label %for.body

for.body:                                         ; preds = %sg_page.exit.for.body_crit_edge, %for.body.preheader
  %i.0107 = phi i32 [ %inc, %sg_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %len.0106 = phi i32 [ %add, %sg_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !213

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !224
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i to ptr
  %arrayidx38 = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0107
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx38, align 4
  %37 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t_data_sg, align 4
  %length41 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %length41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length41, align 4
  %bv_len = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0107, i32 1
  %41 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bv_len, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0107, i32 2
  %44 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bv_offset, align 4
  %45 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %block_size, align 8
  %add = add i32 %46, %len.0106
  %inc = add i32 %i.0107, 1
  %conv32 = zext i32 %inc to i64
  %cmp33 = icmp ugt i64 %call2, %conv32
  br i1 %cmp33, label %sg_page.exit.for.body_crit_edge, label %for.end

sg_page.exit.for.body_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %sg_page.exit
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef nonnull %call8.i.i, i32 noundef %conv27, i32 noundef %add) #12
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fd_file, align 16
  %call49 = call i32 @vfs_iter_write(ptr noundef %48, ptr noundef nonnull %iter, ptr noundef nonnull %pos, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call49)
  %cmp50 = icmp sgt i32 %call49, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call49, i32 %add)
  %cmp53.not = icmp eq i32 %call49, %add
  %or.cond = and i1 %cmp50, %cmp53.not
  br i1 %or.cond, label %if.end61, label %do.end58

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call49) #16
  br label %cleanup

if.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end58, %if.end7.i.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end16, %do.end, %if.then
  %retval.0 = phi i32 [ 10, %do.end ], [ 8, %do.end16 ], [ 10, %do.end58 ], [ 0, %if.end61 ], [ 0, %if.then ], [ 10, %if.end7.i.i.cleanup_crit_edge ], [ 10, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_execute_unmap(ptr nocapture noundef readonly %cmd, i64 noundef %lba, i64 noundef %nolb) #2 align 64 {
entry:
  %pos.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %fd_file = getelementptr inbounds %struct.fd_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fd_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fd_file, align 16
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nolb)
  %tobool.not = icmp eq i64 %nolb, 0
  br i1 %tobool.not, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end:                                           ; preds = %entry
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %8 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %fd_do_prot_unmap.exit.thread, label %if.end.i

fd_do_prot_unmap.exit.thread:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %cleanup54

if.end.i:                                         ; preds = %if.then3
  %10 = inttoptr i32 %call.i to ptr
  %11 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_dev, align 4
  %fd_prot_file.i.i = getelementptr inbounds %struct.fd_dev, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %fd_prot_file.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd_prot_file.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i.i) #12
  %prot_length1.i.i = getelementptr inbounds %struct.se_device, ptr %12, i32 0, i32 48
  %15 = ptrtoint ptr %prot_length1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prot_length1.i.i, align 8
  %conv.i.i = sext i32 %16 to i64
  %mul.i.i = mul i64 %conv.i.i, %lba
  %17 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul.i.i, ptr %pos.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #16
  br label %fd_do_prot_unmap.exit.thread82

if.end.i.i:                                       ; preds = %if.end.i
  %mul5.i.i = mul i64 %conv.i.i, %nolb
  %18 = call ptr @memset(ptr %10, i32 255, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul5.i.i)
  %cmp54.not.i.i = icmp eq i64 %mul5.i.i, 0
  br i1 %cmp54.not.i.i, label %if.end.i.i.fd_do_prot_unmap.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.fd_do_prot_unmap.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_do_prot_unmap.exit

for.cond.i.i:                                     ; preds = %for.body.i.i
  %add.i.i = add i64 %19, %prot.055.i.i
  %cmp.i.i = icmp ugt i64 %mul5.i.i, %add.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.fd_do_prot_unmap.exit_crit_edge

for.cond.i.i.fd_do_prot_unmap.exit_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fd_do_prot_unmap.exit

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %prot.055.i.i = phi i64 [ %add.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %sub.i.i = sub i64 %mul5.i.i, %prot.055.i.i
  %19 = call i64 @llvm.umin.i64(i64 %sub.i.i, i64 4096) #12
  %conv11.i.i = trunc i64 %19 to i32
  %call12.i.i = call i32 @kernel_write(ptr noundef nonnull %14, ptr noundef nonnull %10, i32 noundef %conv11.i.i, ptr noundef nonnull %pos.i.i) #12
  %conv13.i.i = sext i32 %call12.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv13.i.i)
  %cmp14.not.i.i = icmp eq i64 %19, %conv13.i.i
  br i1 %cmp14.not.i.i, label %for.cond.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call12.i.i) #16
  br label %fd_do_prot_unmap.exit.thread82

fd_do_prot_unmap.exit.thread82:                   ; preds = %cleanup.thread.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i) #12
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #12
  br label %cleanup54

fd_do_prot_unmap.exit:                            ; preds = %for.cond.i.i.fd_do_prot_unmap.exit_crit_edge, %if.end.i.i.fd_do_prot_unmap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i) #12
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #12
  br label %if.end8

if.end8:                                          ; preds = %fd_do_prot_unmap.exit, %if.end.if.end8_crit_edge
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %7, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %22)
  %cmp = icmp eq i16 %22, 24576
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %call11 = call ptr @I_BDEV(ptr noundef %7) #12
  %23 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_dev, align 4
  %call13 = call i64 @target_to_linux_sector(ptr noundef %24, i64 noundef %lba) #12
  %call14 = call i64 @target_to_linux_sector(ptr noundef %24, i64 noundef %nolb) #12
  %call15 = call i32 @blkdev_issue_discard(ptr noundef %call11, i64 noundef %call13, i64 noundef %call14, i32 noundef 3264, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end, label %if.then10.cleanup54_crit_edge

if.then10.cleanup54_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call15) #16
  br label %cleanup54

if.else:                                          ; preds = %if.end8
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_op, align 4
  %fallocate = getelementptr inbounds %struct.file_operations, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fallocate, align 4
  %tobool31.not = icmp eq ptr %28, null
  br i1 %tobool31.not, label %if.else.cleanup54_crit_edge, label %if.end33

if.else.cleanup54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end33:                                         ; preds = %if.else
  %29 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_dev, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 39, i32 21
  %31 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %block_size, align 8
  %conv25 = zext i32 %32 to i64
  %33 = trunc i64 %nolb to i32
  %conv30 = mul i32 %32, %33
  %mul = mul i64 %conv25, %lba
  %conv36 = zext i32 %conv30 to i64
  %call37 = call i32 %28(ptr noundef %3, i32 noundef 3, i64 noundef %mul, i64 noundef %conv36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.end33.cleanup54_crit_edge

if.end33.cleanup54_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

do.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %call37) #16
  br label %cleanup54

cleanup54:                                        ; preds = %do.end43, %if.end33.cleanup54_crit_edge, %if.else.cleanup54_crit_edge, %do.end, %if.then10.cleanup54_crit_edge, %fd_do_prot_unmap.exit.thread82, %fd_do_prot_unmap.exit.thread, %entry.cleanup54_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup54_crit_edge ], [ 10, %do.end ], [ 10, %do.end43 ], [ 0, %if.then10.cleanup54_crit_edge ], [ 0, %if.end33.cleanup54_crit_edge ], [ 10, %if.else.cleanup54_crit_edge ], [ 10, %fd_do_prot_unmap.exit.thread ], [ 10, %fd_do_prot_unmap.exit.thread82 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd_rw_aio_complete(ptr noundef %iocb, i32 noundef %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iocb, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ret)
  %cmp.not = icmp eq i32 %1, %ret
  %cmd2 = getelementptr i8, ptr %iocb, i32 -4
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %. = select i1 %cmp.not, i8 0, i8 2
  tail call void @target_complete_cmd(ptr noundef %3, i8 noundef zeroext %.) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fd_do_rw(ptr nocapture noundef readonly %cmd, ptr noundef %fd, i32 noundef %block_size, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %data_length, i32 noundef %is_write) unnamed_addr #2 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %1 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %t_task_lba, align 8
  %conv = zext i32 %block_size to i64
  %mul = mul i64 %2, %conv
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %mul, ptr %pos, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sgl_nents, i32 12) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.do.end_crit_edge, label %if.end7.i.i, !prof !218

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end7.i.i:                                      ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.end_crit_edge, label %for.cond.preheader

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_nents)
  %cmp127.not = icmp eq i32 %sgl_nents, 0
  br i1 %cmp127.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  br label %cleanup

for.body:                                         ; preds = %sg_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sg.0130 = phi ptr [ %call7, %sg_page.exit.for.body_crit_edge ], [ %sgl, %for.cond.preheader.for.body_crit_edge ]
  %len.0129 = phi i32 [ %add, %sg_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0128 = phi i32 [ %inc, %sg_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %sg.0130 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg.0130, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !213

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !224
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i to ptr
  %arrayidx = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0128
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0130, i32 0, i32 2
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %bv_len = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0128, i32 1
  %13 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bv_len, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0130, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %call8.i.i, i32 %i.0128, i32 2
  %16 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bv_offset, align 4
  %17 = load i32, ptr %length, align 4
  %add = add i32 %17, %len.0129
  %inc = add nuw i32 %i.0128, 1
  %call7 = tail call ptr @sg_next(ptr noundef %sg.0130) #12
  %exitcond.not = icmp eq i32 %inc, %sgl_nents
  br i1 %exitcond.not, label %sg_page.exit.for.end_crit_edge, label %sg_page.exit.for.body_crit_edge

sg_page.exit.for.body_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sg_page.exit.for.end_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sg_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %sg_page.exit.for.end_crit_edge ]
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef nonnull %call8.i.i, i32 noundef %sgl_nents, i32 noundef %len.0.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_write)
  %tobool8.not = icmp eq i32 %is_write, 0
  br i1 %tobool8.not, label %if.else30, label %if.then14

if.then14:                                        ; preds = %for.end
  %call10 = call i32 @vfs_iter_write(ptr noundef %fd, ptr noundef nonnull %iter, ptr noundef nonnull %pos, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp15 = icmp sgt i32 %call10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %data_length)
  %cmp17.not = icmp eq i32 %call10, %data_length
  %or.cond = and i1 %cmp15, %cmp17.not
  br i1 %or.cond, label %if.then14.if.end75_crit_edge, label %do.end22

if.then14.if.end75_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %call10) #16
  %spec.select = select i1 %cmp15, i32 -22, i32 %call10
  br label %if.end75

if.else30:                                        ; preds = %for.end
  %call11 = call i32 @vfs_iter_read(ptr noundef %fd, ptr noundef nonnull %iter, ptr noundef nonnull %pos, i32 noundef 0) #12
  %f_inode.i = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %22)
  %cmp33 = icmp eq i16 %22, 24576
  br i1 %cmp33, label %if.then35, label %if.else52

if.then35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp36 = icmp sgt i32 %call11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %data_length)
  %cmp39.not = icmp eq i32 %call11, %data_length
  %or.cond120 = and i1 %cmp36, %cmp39.not
  br i1 %or.cond120, label %if.then35.if.end75_crit_edge, label %do.end44

if.then35.if.end75_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.end44:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef %call11, i32 noundef %data_length) #16
  %spec.select121 = select i1 %cmp36, i32 -22, i32 %call11
  br label %if.end75

if.else52:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp53 = icmp slt i32 %call11, 0
  br i1 %cmp53, label %do.end58, label %if.else61

do.end58:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef %call11) #16
  br label %if.end75

if.else61:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %data_length)
  %cmp62.not = icmp eq i32 %call11, %data_length
  br i1 %cmp62.not, label %if.else61.if.end75_crit_edge, label %if.then64

if.else61.if.end75_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %data_length)
  %cmp65 = icmp ult i32 %call11, %data_length
  br i1 %cmp65, label %if.then67, label %if.then64.if.end75_crit_edge

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %data_length, %call11
  %call68 = call i32 @iov_iter_zero(i32 noundef %sub, ptr noundef nonnull %iter) #12
  %add69 = add i32 %call68, %call11
  br label %if.end75

if.end75:                                         ; preds = %if.then67, %if.then64.if.end75_crit_edge, %if.else61.if.end75_crit_edge, %do.end58, %do.end44, %if.then35.if.end75_crit_edge, %do.end22, %if.then14.if.end75_crit_edge
  %ret.1 = phi i32 [ %call11, %do.end58 ], [ %add69, %if.then67 ], [ %data_length, %if.else61.if.end75_crit_edge ], [ %data_length, %if.then14.if.end75_crit_edge ], [ %spec.select, %do.end22 ], [ %data_length, %if.then35.if.end75_crit_edge ], [ %spec.select121, %do.end44 ], [ -22, %if.then64.if.end75_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end
  %retval.0 = phi i32 [ %ret.1, %if.end75 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_dif_verify(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sbc_get_write_same_sectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @target_to_linux_sector(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_backend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !191, !192, !194, !195, !196, !197, !199, !200, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_description283, !1, !"__UNIQUE_ID_description283", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_file.c", i32 948, i32 1}
!2 = !{ptr @__UNIQUE_ID_author284, !3, !"__UNIQUE_ID_author284", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_file.c", i32 949, i32 1}
!4 = !{ptr @__UNIQUE_ID_file285, !5, !"__UNIQUE_ID_file285", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_file.c", i32 950, i32 1}
!6 = !{ptr @__UNIQUE_ID_license286, !5, !"__UNIQUE_ID_license286", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_target_core_file__287_952_fileio_module_init6, !8, !"__initcall__kmod_target_core_file__287_952_fileio_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/target/target_core_file.c", i32 952, i32 1}
!9 = !{ptr @__exitcall_fileio_module_exit, !10, !"__exitcall_fileio_module_exit", i1 false, i1 false}
!10 = !{!"../drivers/target/target_core_file.c", i32 953, i32 1}
!11 = !{ptr @fileio_ops, !12, !"fileio_ops", i1 false, i1 false}
!12 = !{!"../drivers/target/target_core_file.c", i32 916, i32 40}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_file.c", i32 43, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fd_attach_hba._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @fd_attach_hba._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/target_core_file.c", i32 51, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fd_attach_hba.__UNIQUE_ID_ddebug267, !20, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_file.c", i32 54, i32 2}
!27 = !{ptr @fd_attach_hba.__UNIQUE_ID_ddebug268, !26, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_file.c", i32 64, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fd_detach_hba.__UNIQUE_ID_ddebug269, !29, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/target/target_core_file.c", i32 78, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fd_alloc_device._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @fd_alloc_device._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_file.c", i32 84, i32 2}
!39 = !{ptr @fd_alloc_device.__UNIQUE_ID_ddebug270, !38, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_file.c", i32 98, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fd_configure_device._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @fd_configure_device._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/target_core_file.c", i32 118, i32 3}
!47 = !{ptr @fd_configure_device.__UNIQUE_ID_ddebug271, !46, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_file.c", i32 124, i32 3}
!50 = !{ptr @fd_configure_device._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @fd_configure_device._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_file.c", i32 148, i32 3}
!54 = !{ptr @fd_configure_device.__UNIQUE_ID_ddebug272, !53, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/target_core_file.c", i32 154, i32 4}
!57 = !{ptr @fd_configure_device.__UNIQUE_ID_ddebug273, !56, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_file.c", i32 166, i32 4}
!60 = !{ptr @fd_configure_device._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @fd_configure_device._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_file.c", i32 197, i32 3}
!64 = !{ptr @fd_configure_device.__UNIQUE_ID_ddebug274, !63, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/target_core_file.c", i32 205, i32 2}
!67 = !{ptr @fd_configure_device.__UNIQUE_ID_ddebug275, !66, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_file.c", i32 721, i32 30}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/target/target_core_file.c", i32 733, i32 4}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug278, !71, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/target_core_file.c", i32 746, i32 5}
!76 = !{ptr @fd_set_configfs_dev_params._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @fd_set_configfs_dev_params._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/target/target_core_file.c", i32 750, i32 4}
!80 = !{ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug279, !79, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/target/target_core_file.c", i32 759, i32 5}
!83 = !{ptr @fd_set_configfs_dev_params._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fd_set_configfs_dev_params._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/target_core_file.c", i32 764, i32 4}
!87 = !{ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug280, !86, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/target_core_file.c", i32 774, i32 5}
!90 = !{ptr @fd_set_configfs_dev_params._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @fd_set_configfs_dev_params._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/target_core_file.c", i32 779, i32 4}
!94 = !{ptr @fd_set_configfs_dev_params.__UNIQUE_ID_ddebug281, !93, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/target_core_file.c", i32 700, i32 20}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/target_core_file.c", i32 701, i32 20}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/target_core_file.c", i32 702, i32 23}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/target_core_file.c", i32 703, i32 20}
!103 = !{ptr @tokens, !104, !"tokens", i1 false, i1 false}
!104 = !{!"../drivers/target/target_core_file.c", i32 699, i32 22}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/target_core_file.c", i32 799, i32 23}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/target_core_file.c", i32 800, i32 24}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/target_core_file.c", i32 803, i32 3}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/target_core_file.c", i32 803, i32 20}
!113 = !{ptr @fd_sbc_ops, !114, !"fd_sbc_ops", i1 false, i1 false}
!114 = !{!"../drivers/target/target_core_file.c", i32 903, i32 23}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/target_core_file.c", i32 683, i32 3}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @fd_execute_rw._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @fd_execute_rw._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_file.c", i32 324, i32 3}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @fd_do_rw._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @fd_do_rw._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/target/target_core_file.c", i32 344, i32 4}
!127 = !{ptr @fd_do_rw._entry.51, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @fd_do_rw._entry_ptr.53, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/target_core_file.c", i32 356, i32 5}
!131 = !{ptr @fd_do_rw._entry.54, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @fd_do_rw._entry_ptr.56, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/target_core_file.c", i32 364, i32 5}
!135 = !{ptr @fd_do_rw._entry.57, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @fd_do_rw._entry_ptr.59, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/target_core_file.c", i32 416, i32 3}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @fd_execute_sync_cache._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @fd_execute_sync_cache._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/target/target_core_file.c", i32 446, i32 3}
!144 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fd_execute_write_same._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @fd_execute_write_same._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/target/target_core_file.c", i32 453, i32 3}
!149 = !{ptr @fd_execute_write_same._entry.64, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @fd_execute_write_same._entry_ptr.66, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/target_core_file.c", i32 478, i32 3}
!153 = !{ptr @fd_execute_write_same._entry.67, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @fd_execute_write_same._entry_ptr.69, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/target_core_file.c", i32 563, i32 4}
!157 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @fd_execute_unmap._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @fd_execute_unmap._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/target_core_file.c", i32 579, i32 4}
!162 = !{ptr @fd_execute_unmap._entry.72, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @fd_execute_unmap._entry_ptr.74, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/target_core_file.c", i32 525, i32 3}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @fd_do_prot_unmap._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @fd_do_prot_unmap._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/target_core_file.c", i32 496, i32 3}
!171 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @fd_do_prot_fill._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @fd_do_prot_fill._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/target/target_core_file.c", i32 508, i32 4}
!176 = !{ptr @fd_do_prot_fill._entry.79, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @fd_do_prot_fill._entry_ptr.81, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_file.c", i32 837, i32 3}
!180 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @fd_init_prot._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @fd_init_prot._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/target_core_file.c", i32 843, i32 3}
!185 = !{ptr @fd_init_prot._entry.84, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @fd_init_prot._entry_ptr.86, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/target/target_core_file.c", i32 851, i32 38}
!189 = !{ptr @fd_init_prot._entry.88, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/target/target_core_file.c", i32 856, i32 3}
!191 = !{ptr @fd_init_prot._entry_ptr.89, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/target/target_core_file.c", i32 872, i32 3}
!194 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @fd_format_prot._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @fd_format_prot._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @fd_format_prot._entry.92, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_file.c", i32 878, i32 3}
!199 = !{ptr @fd_format_prot._entry_ptr.93, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/target/target_core_file.c", i32 882, i32 2}
!202 = !{ptr @fd_format_prot.__UNIQUE_ID_ddebug282, !201, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2148915393, i64 2148915398, i64 2148915411, i64 2148915455, i64 2148915489, i64 2148915510}
!213 = !{!"branch_weights", i32 2000, i32 1}
!214 = !{i64 2148204866, i64 2148205146, i64 2148205480, i64 2148205814}
!215 = !{!"auto-init"}
!216 = !{i64 762142, i64 762203}
!217 = !{i64 764874}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{i64 765159}
!220 = !{i64 2152600893}
!221 = !{i64 2152600735}
!222 = !{i64 2152601063}
!223 = !{i64 2150238149}
!224 = !{i64 2154300256, i64 2154304809, i64 2154300293, i64 2154300349, i64 2154300383, i64 2154300407, i64 2154300448, i64 2154300469, i64 2154300497, i64 2154300531}
!225 = !{i8 0, i8 2}
!226 = !{i32 0, i32 33}
